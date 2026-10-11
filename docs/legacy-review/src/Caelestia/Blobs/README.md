# Blobs Sub-Module

This sub-module contains the C++ classes and shaders responsible for rendering fluid-morphing shapes (used in the glassmorphic dock, launcher menus, and other UI layers).

## Core Classes

* **[BlobShape](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp):** A custom QML/QQuickItem representing a single shape inside the morphing group. It manages the dimensions, rounding radius, and coordinates.
* **[BlobGroup](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp):** A controller QObject. Individual shapes register with a central group instance. The group acts as a sync point, collecting properties and notifying the scene graph to repaint when elements move or resize.
* **[BlobMaterial](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp) & [BlobMaterialShader](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp):** Integrates with the Qt Quick Scene Graph pipeline. They package data from active shapes (SDF center coordinates, half-extents, deformation matrices, corner radii, and exclusion masks) and upload it to the GPU in a uniform buffer (`std140` block format).

## The Rendering Process

The morphing effect is calculated on the GPU inside [blob.frag](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/shaders/blob.frag) using **Signed Distance Fields (SDF)**:

1. **Pixel Coordinates Mapping:** Pixel coordinates are mapped into the local coordinate system of each rounded rectangle using its inverse deformation matrix.
2. **Rounded Box SDF (`sdRoundedBox4`):** Computes the signed distance to a box with four independent corner radii.
3. **Circular Smooth Minimum (`smin`):** Merges the distance fields of nearby rectangles using a circular fillet formula to create a fluid, morphing boundary.
4. **Selective Morphing (Exclusion Mask):** A bitmask is evaluated pairwise. If two rectangles are excluded, they will not morph or blend together (falling back to a sharp minimum calculation). This prevents active menus from blending into the main panel dock.
5. **Inverted Border Mask (Sink Effect):** If enabled, handles warping shapes near screen boundaries.
