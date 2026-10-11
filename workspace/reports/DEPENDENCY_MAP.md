# Caelestia Shell-Upstream Dependency Map

This document contains a comprehensive dependency map for components, modules, and the plugin source files of the upstream caelestia shell.

## [shell-upstream/components/AnchorAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnchorAnim.qml)
**Purpose:** Provides customized anchor animations with predefined spatial durations and easing curves.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick

## [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
**Purpose:** Defines core transition and animation duration profiles for UI elements.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick

## [shell-upstream/components/AnimLoader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnimLoader.qml)
**Purpose:** Dynamically loads visual animations based on system status.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
### External Deps:
- QtQuick

## [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
**Purpose:** Provides continuous animation curves for persistent motion effects.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick

## [shell-upstream/components/ConnectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/ConnectionHeader.qml)
**Purpose:** Renders header titles and icons for network connection states.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components

## [shell-upstream/components/ConnectionInfoSection.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/ConnectionInfoSection.qml)
**Purpose:** Renders active network connection details and status parameters.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/DashboardState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DashboardState.qml)
**Purpose:** Exposes custom user interface elements for dashboard state to QML.

### Internal Deps:
- None
### External Deps:
- Quickshell

## [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
**Purpose:** Exposes custom user interface elements for drawer visibilities to QML.

### Internal Deps:
- None
### External Deps:
- Quickshell

## [shell-upstream/components/Logo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Logo.qml)
**Purpose:** Renders the Caelestia brand logo with customizable styling.

### Internal Deps:
- [shell-upstream/modules/lock/Center.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Center.qml)
### External Deps:
- QtQuick
- QtQuick.Shapes
- qs.services

## [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
**Purpose:** Renders scalable vector icons using material icon font sheets.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.services

## [shell-upstream/components/PropertyRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/PropertyRow.qml)
**Purpose:** Exposes custom user interface elements for property row to QML.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/SectionContainer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/SectionContainer.qml)
**Purpose:** Exposes custom user interface elements for section container to QML.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/SectionHeader.qml)
**Purpose:** Exposes custom user interface elements for section header to QML.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
**Purpose:** Manages interactive feedback overlays (hover, focus, and pressed states) for controls.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Shapes
- qs.services

## [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
**Purpose:** Theme-compliant clipping rectangle that crops children outside its bounds.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
### External Deps:
- QtQuick
- Quickshell.Widgets

## [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
**Purpose:** Theme-compliant rectangle shape utilizing system colors and borders.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
### External Deps:
- QtQuick

## [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
**Purpose:** Renders theme-compliant text utilizing system configuration font styles.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.services

## [shell-upstream/components/containers/StyledFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledFlickable.qml)
**Purpose:** Layout container component that implements styled flickable styling.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
### External Deps:
- QtQuick
- qs.components

## [shell-upstream/components/containers/StyledListView.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledListView.qml)
**Purpose:** Layout container component that implements styled list view styling.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
### External Deps:
- QtQuick
- qs.components

## [shell-upstream/components/containers/StyledWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledWindow.qml)
**Purpose:** Layout container component that implements styled window styling.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- Quickshell
- Quickshell.Wayland

## [shell-upstream/components/containers/VerticalFadeFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/VerticalFadeFlickable.qml)
**Purpose:** Flickable container that fades out its top/bottom borders near boundaries.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/containers/StyledFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledFlickable.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
### External Deps:
- QtQuick
- qs.components
- qs.components.effects

## [shell-upstream/components/controls/ButtonBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ButtonBase.qml)
**Purpose:** Base class for theme-compliant clickable buttons.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/components/controls/CircularIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularIndicator.qml)
**Purpose:** Displays circular gauges representing system hardware stats (CPU, RAM).

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.cpp)
- [shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp)
### External Deps:
- QtQuick
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
**Purpose:** Renders circular progress arcs with custom wave or flat fills.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Shapes
- qs.components
- qs.services

## [shell-upstream/components/controls/CollapsibleSection.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CollapsibleSection.qml)
**Purpose:** A layout widget that can be expanded or collapsed by clicking its header.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
**Purpose:** Extended mouse area that handles hover and click event propagation.

### Internal Deps:
- None
### External Deps:
- QtQuick

## [shell-upstream/components/controls/CustomSpinBox.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomSpinBox.qml)
**Purpose:** Theme-compliant number adjustment input box.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/FilledSlider.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/FilledSlider.qml)
**Purpose:** Interactive UI control component implementing the filled slider behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/effects](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
**Purpose:** Theme-compliant button consisting of a single material icon.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/controls/ButtonBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ButtonBase.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/components/controls/IconTextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconTextButton.qml)
**Purpose:** Interactive UI control component implementing the icon text button behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/ButtonBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ButtonBase.qml)
- [shell-upstream/components/controls/TextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/TextButton.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
**Purpose:** Interactive UI control component implementing the loading indicator behavior.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
### External Deps:
- M3Shapes
- QtQuick
- Quickshell
- qs.components
- qs.services

## [shell-upstream/components/controls/Menu.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/Menu.qml)
**Purpose:** Interactive UI control component implementing the menu behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/modules/drawers/ContentWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/ContentWindow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.effects
- qs.modules.drawers
- qs.services

## [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
**Purpose:** Interactive UI control component implementing the menu item behavior.

### Internal Deps:
- None
### External Deps:
- QtQuick

## [shell-upstream/components/controls/SpinBoxRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SpinBoxRow.qml)
**Purpose:** Interactive UI control component implementing the spin box row behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CustomSpinBox.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomSpinBox.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/SplitButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButton.qml)
**Purpose:** Interactive UI control component implementing the split button behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/Menu.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/Menu.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/SplitButtonRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButtonRow.qml)
**Purpose:** Interactive UI control component implementing the split button row behavior.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/components/controls/SplitButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButton.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledInputField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledInputField.qml)
**Purpose:** Interactive UI control component implementing the styled input field behavior.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledProgressBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledProgressBar.qml)
**Purpose:** Interactive UI control component implementing the styled progress bar behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.cpp)
- [shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledRadioButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledRadioButton.qml)
**Purpose:** Interactive UI control component implementing the styled radio button behavior.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledScrollBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledScrollBar.qml)
**Purpose:** Interactive UI control component implementing the styled scroll bar behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledSlider.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSlider.qml)
**Purpose:** Interactive UI control component implementing the styled slider behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
**Purpose:** Interactive UI control component implementing the styled switch behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Shapes
- QtQuick.Templates
- qs.components
- qs.services

## [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
**Purpose:** Interactive UI control component implementing the styled text field behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- qs.components
- qs.services

## [shell-upstream/components/controls/SwitchRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SwitchRow.qml)
**Purpose:** Interactive UI control component implementing the switch row behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/controls/TextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/TextButton.qml)
**Purpose:** Interactive UI control component implementing the text button behavior.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/ButtonBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ButtonBase.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/components/controls/ToggleButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ToggleButton.qml)
**Purpose:** Interactive UI control component implementing the toggle button behavior.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/Tooltip.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/Tooltip.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/components/controls/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ToggleRow.qml)
**Purpose:** Interactive UI control component implementing the toggle row behavior.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls

## [shell-upstream/components/controls/Tooltip.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/Tooltip.qml)
**Purpose:** Hover-activated floating metadata label.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- qs.components
- qs.components.effects
- qs.services

## [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
**Purpose:** Visual effect component providing coloured icon capabilities.

### Internal Deps:
- [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
- [shell-upstream/plugin/src/Caelestia/imageanalyser.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/imageanalyser.cpp)
- [shell-upstream/plugin/src/Caelestia/imageanalyser.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/imageanalyser.hpp)
### External Deps:
- QtQuick
- Quickshell.Widgets

## [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
**Purpose:** Visual effect component providing colouriser capabilities.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
### External Deps:
- QtQuick
- QtQuick.Effects
- qs.components

## [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
**Purpose:** Visual effect component providing elevation capabilities.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
### External Deps:
- QtQuick
- QtQuick.Effects
- qs.components
- qs.services

## [shell-upstream/components/effects/InnerBorder.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/InnerBorder.qml)
**Purpose:** Visual effect component providing inner border capabilities.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Effects
- qs.components
- qs.services

## [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
**Purpose:** Applies pixel transparency masks and shading overlays to target components.

### Internal Deps:
- None
### External Deps:
- QtQuick.Effects

## [shell-upstream/components/filedialog/CurrentItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/CurrentItem.qml)
**Purpose:** Exposes custom user interface elements for current item to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Shapes
- qs.components
- qs.services

## [shell-upstream/components/filedialog/DialogButtons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/DialogButtons.qml)
**Purpose:** Exposes custom user interface elements for dialog buttons to QML.

### Internal Deps:
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/filedialog/FolderContents.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FolderContents.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
**Purpose:** Exposes custom user interface elements for file dialog to QML.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/filedialog/DialogButtons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/DialogButtons.qml)
- [shell-upstream/components/filedialog/FolderContents.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FolderContents.qml)
- [shell-upstream/components/filedialog/HeaderBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/HeaderBar.qml)
- [shell-upstream/components/filedialog/Sidebar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sidebar.qml)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.services

## [shell-upstream/components/filedialog/FolderContents.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FolderContents.qml)
**Purpose:** Exposes custom user interface elements for folder contents to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/StyledScrollBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledScrollBar.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/components/filedialog/CurrentItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/CurrentItem.qml)
- [shell-upstream/components/filedialog/Sizes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sizes.qml)
- [shell-upstream/components/images/CachingIconImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingIconImage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.components.effects
- qs.components.filedialog
- qs.components.images
- qs.services
- qs.utils

## [shell-upstream/components/filedialog/HeaderBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/HeaderBar.qml)
**Purpose:** Exposes custom user interface elements for header bar to QML.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/components/filedialog/Sidebar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sidebar.qml)
**Purpose:** Exposes custom user interface elements for sidebar to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/filedialog/Sizes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sizes.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.filedialog
- qs.services

## [shell-upstream/components/filedialog/Sizes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sizes.qml)
**Purpose:** Exposes custom user interface elements for sizes to QML.

### Internal Deps:
- None
### External Deps:
- Quickshell

## [shell-upstream/components/images/CachingIconImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingIconImage.qml)
**Purpose:** Loads and displays images from local caches or icon themes.

### Internal Deps:
- [shell-upstream/components/images/CachingImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingImage.qml)
### External Deps:
- QtQuick
- Quickshell.Widgets
- qs.utils

## [shell-upstream/components/images/CachingImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingImage.qml)
**Purpose:** Displays cached filesystem images with smooth rendering options.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Images/iutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/iutils.cpp)
- [shell-upstream/plugin/src/Caelestia/Images/iutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/iutils.hpp)
### External Deps:
- QtQuick
- Quickshell

## [shell-upstream/components/images/FadeImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/FadeImage.qml)
**Purpose:** Specialized image rendering component displaying fade image.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
### External Deps:
- QtQuick
- Quickshell
- qs.components

## [shell-upstream/components/misc/CustomShortcut.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/misc/CustomShortcut.qml)
**Purpose:** Exposes custom user interface elements for custom shortcut to QML.

### Internal Deps:
- None
### External Deps:
- Quickshell.Hyprland

## [shell-upstream/components/misc/Ref.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/misc/Ref.qml)
**Purpose:** Exposes custom user interface elements for ref to QML.

### Internal Deps:
- None
### External Deps:
- QtQuick

## [shell-upstream/components/widgets/CoverArt.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/CoverArt.qml)
**Purpose:** System telemetry and dashboard widget for cover art.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/components/images/FadeImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/FadeImage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Effects
- qs.components
- qs.components.controls
- qs.components.effects
- qs.components.images
- qs.services

## [shell-upstream/components/widgets/ExtraIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/ExtraIndicator.qml)
**Purpose:** System telemetry and dashboard widget for extra indicator.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/components/widgets/WavyTopRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/WavyTopRect.qml)
**Purpose:** System telemetry and dashboard widget for wavy top rect.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
### External Deps:
- QtQuick
- QtQuick.Shapes
- qs.components
- qs.services

## [shell-upstream/modules/BatteryMonitor.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/BatteryMonitor.qml)
**Purpose:** Background service module monitoring system battery level and power state.

### Internal Deps:
- [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Services.UPower

## [shell-upstream/modules/ConfigToasts.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/ConfigToasts.qml)
**Purpose:** Coordinates configuration change notification toast displays.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
- [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- QtQuick
- Quickshell

## [shell-upstream/modules/GSFLoader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/GSFLoader.qml)
**Purpose:** Loads custom layout settings for GSFLoader.

### Internal Deps:
- None
### External Deps:
- QtQuick
- Quickshell

## [shell-upstream/modules/IdleMonitors.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/IdleMonitors.qml)
**Purpose:** Monitors user inactivity states to trigger screen lock or dimming.

### Internal Deps:
- [shell-upstream/modules/lock](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock)
- [shell-upstream/modules/lock/Lock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Lock.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/logindmanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/logindmanager.cpp)
- [shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp)
### External Deps:
- Quickshell
- Quickshell.Wayland
- qs.services

## [shell-upstream/modules/Shortcuts.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/Shortcuts.qml)
**Purpose:** Defines global keyboard shortcut bindings and actions.

### Internal Deps:
- [shell-upstream/components/misc/CustomShortcut.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/misc/CustomShortcut.qml)
- [shell-upstream/modules/nexus/WindowFactory.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/WindowFactory.qml)
- [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Io
- qs.components.misc
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/areapicker/AreaPicker.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/areapicker/AreaPicker.qml)
**Purpose:** Screen area picker module for area picker.

### Internal Deps:
- [shell-upstream/components/containers/StyledWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledWindow.qml)
- [shell-upstream/components/misc/CustomShortcut.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/misc/CustomShortcut.qml)
- [shell-upstream/modules/areapicker/Picker.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/areapicker/Picker.qml)
### External Deps:
- Quickshell
- Quickshell.Io
- Quickshell.Wayland
- qs.components.containers
- qs.components.misc
- qs.services

## [shell-upstream/modules/areapicker/Picker.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/areapicker/Picker.qml)
**Purpose:** Screen area picker module for picker.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Io
- Quickshell.Wayland
- qs.components
- qs.components.effects
- qs.services

## [shell-upstream/modules/background/Background.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Background.qml)
**Purpose:** Desktop background and wallpaper component for background.

### Internal Deps:
- [shell-upstream/components/AnchorAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnchorAnim.qml)
- [shell-upstream/components/containers/StyledWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledWindow.qml)
- [shell-upstream/modules/background/DesktopClock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/DesktopClock.qml)
- [shell-upstream/modules/background/Visualiser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Visualiser.qml)
- [shell-upstream/modules/background/Wallpaper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Wallpaper.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Wayland
- qs.components
- qs.components.containers
- qs.services

## [shell-upstream/modules/background/DesktopClock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/DesktopClock.qml)
**Purpose:** Desktop background and wallpaper component for desktop clock.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Effects
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/background/Visualiser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Visualiser.qml)
**Purpose:** Desktop background and wallpaper component for visualiser.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.cpp)
- [shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
### External Deps:
- QtQuick
- QtQuick.Effects
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/background/Wallpaper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Wallpaper.qml)
**Purpose:** Desktop background and wallpaper component for wallpaper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
- [shell-upstream/components/images/CachingImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingImage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.filedialog
- qs.components.images
- qs.services
- qs.utils

## [shell-upstream/modules/bar/Bar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/Bar.qml)
**Purpose:** Status bar component responsible for bar.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/bar/components](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components)
- [shell-upstream/modules/bar/components/OsIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/OsIcon.qml)
- [shell-upstream/modules/bar/components/Power.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Power.qml)
- [shell-upstream/modules/bar/components/StatusIcons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/StatusIcons.qml)
- [shell-upstream/modules/bar/components/Tray.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Tray.qml)
- [shell-upstream/modules/bar/components/workspaces](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces)
- [shell-upstream/modules/bar/components/workspaces/Workspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspaces.qml)
- [shell-upstream/modules/bar/popouts](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts)
- [shell-upstream/modules/bar/popouts/ActiveWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/ActiveWindow.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/lock/center/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/Clock.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/bar/BarWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/BarWrapper.qml)
**Purpose:** Status bar component responsible for bar wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/bar/Bar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/Bar.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.modules.bar.popouts
- qs.utils

## [shell-upstream/modules/bar/components/ActiveWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/ActiveWindow.qml)
**Purpose:** Exposes custom user interface elements for active window to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services
- qs.utils

## [shell-upstream/modules/bar/components/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Clock.qml)
**Purpose:** Exposes custom user interface elements for clock to QML.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/bar/components/OsIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/OsIcon.qml)
**Purpose:** Exposes custom user interface elements for os icon to QML.

### Internal Deps:
- [shell-upstream/components/Logo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Logo.qml)
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/bar/components/Power.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Power.qml)
**Purpose:** Exposes custom user interface elements for power to QML.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/bar/components/StatusIcons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/StatusIcons.qml)
**Purpose:** Exposes custom user interface elements for status icons to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/dashboard/Performance.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Performance.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Bluetooth
- Quickshell.Services.UPower
- qs.components
- qs.services
- qs.utils

## [shell-upstream/modules/bar/components/Tray.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Tray.qml)
**Purpose:** Exposes custom user interface elements for tray to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/bar/components/TrayItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/TrayItem.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Services.SystemTray
- qs.components
- qs.services

## [shell-upstream/modules/bar/components/TrayItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/TrayItem.qml)
**Purpose:** Exposes custom user interface elements for tray item to QML.

### Internal Deps:
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell.Services.SystemTray
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/bar/components/workspaces/ActiveIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/ActiveIndicator.qml)
**Purpose:** Exposes custom user interface elements for active indicator to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
- [shell-upstream/modules/bar/components/workspaces/Workspace.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspace.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.effects
- qs.services

## [shell-upstream/modules/bar/components/workspaces/OccupiedBg.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/OccupiedBg.qml)
**Purpose:** Exposes custom user interface elements for occupied bg to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/bar/components/workspaces/Workspace.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspace.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/bar/components/workspaces/SpecialWorkspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/SpecialWorkspaces.qml)
**Purpose:** Exposes custom user interface elements for special workspaces to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Hyprland
- qs.components
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/bar/components/workspaces/Workspace.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspace.qml)
**Purpose:** Exposes custom user interface elements for workspace to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.services
- qs.utils

## [shell-upstream/modules/bar/components/workspaces/Workspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspaces.qml)
**Purpose:** Exposes custom user interface elements for workspaces to QML.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/modules/bar/components/workspaces/ActiveIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/ActiveIndicator.qml)
- [shell-upstream/modules/bar/components/workspaces/OccupiedBg.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/OccupiedBg.qml)
- [shell-upstream/modules/bar/components/workspaces/SpecialWorkspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/SpecialWorkspaces.qml)
- [shell-upstream/modules/bar/components/workspaces/Workspace.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspace.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Effects
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/bar/popouts/ActiveWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/ActiveWindow.qml)
**Purpose:** Status bar component responsible for active window.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Wayland
- Quickshell.Widgets
- qs.components
- qs.services
- qs.utils

## [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
**Purpose:** Status bar component responsible for audio.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/components/controls/IconTextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconTextButton.qml)
- [shell-upstream/components/controls/StyledRadioButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledRadioButton.qml)
- [shell-upstream/components/controls/StyledSlider.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSlider.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- QtQuick.Layouts
- Quickshell.Services.Pipewire
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
**Purpose:** Status bar component responsible for battery.

### Internal Deps:
- [shell-upstream/components/AnchorAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnchorAnim.qml)
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/components/Power.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Power.qml)
- [shell-upstream/modules/dashboard/Performance.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Performance.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell.Services.UPower
- qs.components
- qs.services

## [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
**Purpose:** Status bar component responsible for bluetooth.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CircularIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularIndicator.qml)
- [shell-upstream/components/controls/IconTextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconTextButton.qml)
- [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Bluetooth
- qs.components
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/bar/popouts/ClipWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/ClipWrapper.qml)
**Purpose:** Status bar component responsible for clip wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.modules.bar.popouts

## [shell-upstream/modules/bar/popouts/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Content.qml)
**Purpose:** Status bar component responsible for content.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/modules/bar/popouts/ActiveWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/ActiveWindow.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/bar/popouts/LockStatus.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/LockStatus.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/modules/bar/popouts/TrayMenu.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/TrayMenu.qml)
- [shell-upstream/modules/bar/popouts/WirelessPassword.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/WirelessPassword.qml)
- [shell-upstream/modules/bar/popouts/kblayout](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/kblayout)
- [shell-upstream/modules/bar/popouts/kblayout/KbLayout.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/kblayout/KbLayout.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Services.SystemTray
- qs.components

## [shell-upstream/modules/bar/popouts/LockStatus.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/LockStatus.qml)
**Purpose:** Status bar component responsible for lock status.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
**Purpose:** Status bar component responsible for network.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CircularIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularIndicator.qml)
- [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
**Purpose:** Status bar component responsible for popout state.

### Internal Deps:
- None
### External Deps:
- QtQuick

## [shell-upstream/modules/bar/popouts/TrayMenu.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/TrayMenu.qml)
**Purpose:** Status bar component responsible for tray menu.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.services

## [shell-upstream/modules/bar/popouts/WirelessPassword.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/WirelessPassword.qml)
**Purpose:** Status bar component responsible for wireless password.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/TextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/TextButton.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/bar/popouts/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Wrapper.qml)
**Purpose:** Status bar component responsible for wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/modules/bar/popouts/PopoutState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/PopoutState.qml)
- [shell-upstream/modules/nexus/Nexus.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/Nexus.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/modules/windowinfo/WindowInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/WindowInfo.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Hyprland
- Quickshell.Wayland
- qs.components
- qs.modules.nexus
- qs.modules.windowinfo
- qs.services

## [shell-upstream/modules/bar/popouts/kblayout/KbLayout.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/kblayout/KbLayout.qml)
**Purpose:** Status bar component responsible for kb layout.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/kblayout/KbLayoutModel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/kblayout/KbLayoutModel.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/bar/popouts/kblayout/KbLayoutModel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/kblayout/KbLayoutModel.qml)
**Purpose:** Status bar component responsible for kb layout model.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- QtQuick
- Quickshell.Io

## [shell-upstream/modules/dashboard/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Content.qml)
**Purpose:** System metrics dashboard panel showing content.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DashboardState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DashboardState.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
- [shell-upstream/modules/dashboard/Dash.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Dash.qml)
- [shell-upstream/modules/dashboard/Performance.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Performance.qml)
- [shell-upstream/modules/dashboard/Tabs.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Tabs.qml)
- [shell-upstream/modules/dashboard/WeatherTab.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/WeatherTab.qml)
- [shell-upstream/modules/lock/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Media.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.components.filedialog

## [shell-upstream/modules/dashboard/Dash.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Dash.qml)
**Purpose:** System metrics dashboard panel showing dash.

### Internal Deps:
- [shell-upstream/components/DashboardState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DashboardState.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
- [shell-upstream/modules/dashboard/dash](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash)
- [shell-upstream/modules/dashboard/dash/Calendar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/Calendar.qml)
- [shell-upstream/modules/dashboard/dash/DateTime.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/DateTime.qml)
- [shell-upstream/modules/dashboard/dash/SmallWeather.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/SmallWeather.qml)
- [shell-upstream/modules/dashboard/dash/User.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/User.qml)
- [shell-upstream/modules/lock/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Media.qml)
- [shell-upstream/modules/lock/Resources.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Resources.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.components
- qs.components.filedialog
- qs.services

## [shell-upstream/modules/dashboard/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Media.qml)
**Purpose:** System metrics dashboard panel showing media.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/dashboard/media](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media)
- [shell-upstream/modules/dashboard/media/BackgroundShapes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/BackgroundShapes.qml)
- [shell-upstream/modules/dashboard/media/CoverVisualiser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/CoverVisualiser.qml)
- [shell-upstream/modules/dashboard/media/LyricsAndSelector.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/LyricsAndSelector.qml)
- [shell-upstream/modules/windowinfo/Details.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Details.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/Performance.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Performance.qml)
**Purpose:** System metrics dashboard panel showing performance.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/dashboard/performance](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance)
- [shell-upstream/modules/dashboard/performance/BatteryTank.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/BatteryTank.qml)
- [shell-upstream/modules/dashboard/performance/HeroCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/HeroCard.qml)
- [shell-upstream/modules/dashboard/performance/MemoryCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/MemoryCard.qml)
- [shell-upstream/modules/dashboard/performance/NetworkCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/NetworkCard.qml)
- [shell-upstream/modules/dashboard/performance/StorageCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/StorageCard.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/cpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/cpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Services.UPower
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/Tabs.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Tabs.qml)
**Purpose:** System metrics dashboard panel showing tabs.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DashboardState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DashboardState.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- QtQuick.Templates
- Quickshell
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/dashboard/WeatherTab.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/WeatherTab.qml)
**Purpose:** System metrics dashboard panel showing weather tab.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/lock/weather/Forecast.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/weather/Forecast.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Wrapper.qml)
**Purpose:** System metrics dashboard panel showing wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DashboardState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DashboardState.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.components.filedialog
- qs.utils

## [shell-upstream/modules/dashboard/dash/Calendar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/Calendar.qml)
**Purpose:** System metrics dashboard panel showing calendar.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DashboardState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DashboardState.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Controls
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.components.effects
- qs.services

## [shell-upstream/modules/dashboard/dash/DateTime.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/DateTime.qml)
**Purpose:** System metrics dashboard panel showing date time.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/dash/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/Media.qml)
**Purpose:** System metrics dashboard panel showing media.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/widgets/CoverArt.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/CoverArt.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.controls
- qs.components.widgets
- qs.services
- qs.utils

## [shell-upstream/modules/dashboard/dash/Resources.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/Resources.qml)
**Purpose:** System metrics dashboard panel showing resources.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/cpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/cpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/dashboard/dash/SmallWeather.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/SmallWeather.qml)
**Purpose:** System metrics dashboard panel showing small weather.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/dash/User.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/dash/User.qml)
**Purpose:** System metrics dashboard panel showing user.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/Logo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Logo.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
- [shell-upstream/components/images/CachingImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingImage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- qs.components
- qs.components.effects
- qs.components.filedialog
- qs.components.images
- qs.services
- qs.utils

## [shell-upstream/modules/dashboard/media/BackgroundShapes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/BackgroundShapes.qml)
**Purpose:** System metrics dashboard panel showing background shapes.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
### External Deps:
- M3Shapes
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/media/CoverVisualiser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/CoverVisualiser.qml)
**Purpose:** System metrics dashboard panel showing cover visualiser.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/widgets/CoverArt.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/CoverArt.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Shapes
- Quickshell
- qs.components
- qs.components.widgets
- qs.services

## [shell-upstream/modules/dashboard/media/Details.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/Details.qml)
**Purpose:** System metrics dashboard panel showing details.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/StyledSlider.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSlider.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Services.Mpris
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/dashboard/media/LyricList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/LyricList.qml)
**Purpose:** System metrics dashboard panel showing lyric list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/StyledListView.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledListView.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/modules/lock/Center.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Center.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp)
### External Deps:
- QtQuick
- QtQuick.Effects
- QtQuick.Layouts
- qs.components
- qs.components.containers
- qs.components.controls
- qs.components.effects
- qs.services

## [shell-upstream/modules/dashboard/media/LyricsAndSelector.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/LyricsAndSelector.qml)
**Purpose:** System metrics dashboard panel showing lyrics and selector.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/components/controls/SplitButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButton.qml)
- [shell-upstream/modules/dashboard/media/LyricList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/LyricList.qml)
- [shell-upstream/modules/dashboard/media/LyricsInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/LyricsInfo.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Services.Mpris
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/dashboard/media/LyricsInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/media/LyricsInfo.qml)
**Purpose:** System metrics dashboard panel showing lyrics info.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/performance/BatteryTank.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/BatteryTank.qml)
**Purpose:** System metrics dashboard panel showing battery tank.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Services.UPower
- qs.components
- qs.services

## [shell-upstream/modules/dashboard/performance/HeroCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/HeroCard.qml)
**Purpose:** System metrics dashboard panel showing hero card.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
- [shell-upstream/components/controls/StyledProgressBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledProgressBar.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/dashboard/performance/MemoryCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/MemoryCard.qml)
**Purpose:** System metrics dashboard panel showing memory card.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/usagefmt.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/dashboard/performance/NetworkCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/NetworkCard.qml)
**Purpose:** System metrics dashboard panel showing network card.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/misc/Ref.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/misc/Ref.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.cpp)
- [shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.misc
- qs.services

## [shell-upstream/modules/dashboard/performance/StorageCard.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/performance/StorageCard.qml)
**Purpose:** System metrics dashboard panel showing storage card.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CircularProgress.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CircularProgress.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/components/controls/SplitButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButton.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/usagefmt.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/drawers/ContentWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/ContentWindow.qml)
**Purpose:** System module component for content window.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/containers/StyledWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledWindow.qml)
- [shell-upstream/modules/bar/BarWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/BarWrapper.qml)
- [shell-upstream/modules/drawers/Interactions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Interactions.qml)
- [shell-upstream/modules/drawers/Panels.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Panels.qml)
- [shell-upstream/modules/drawers/Regions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Regions.qml)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- QtQuick.Effects
- Quickshell
- Quickshell.Hyprland
- Quickshell.Wayland
- qs.components
- qs.components.containers
- qs.modules.bar
- qs.services

## [shell-upstream/modules/drawers/Drawers.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Drawers.qml)
**Purpose:** System module component for drawers.

### Internal Deps:
- [shell-upstream/modules/drawers/ContentWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/ContentWindow.qml)
- [shell-upstream/modules/drawers/Exclusions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Exclusions.qml)
### External Deps:
- QtQuick
- Quickshell
- qs.services

## [shell-upstream/modules/drawers/Exclusions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Exclusions.qml)
**Purpose:** System module component for exclusions.

### Internal Deps:
- [shell-upstream/components/containers/StyledWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledWindow.qml)
- [shell-upstream/modules/bar/Bar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/Bar.qml)
- [shell-upstream/modules/bar/BarWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/BarWrapper.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components.containers
- qs.modules.bar

## [shell-upstream/modules/drawers/Interactions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Interactions.qml)
**Purpose:** System module component for interactions.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/modules/bar/Bar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/Bar.qml)
- [shell-upstream/modules/bar/BarWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/BarWrapper.qml)
- [shell-upstream/modules/drawers/Panels.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Panels.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- Quickshell
- qs.components
- qs.components.controls
- qs.modules.bar
- qs.modules.bar.popouts

## [shell-upstream/modules/drawers/Panels.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Panels.qml)
**Purpose:** System module component for panels.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/filedialog/Sidebar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sidebar.qml)
- [shell-upstream/modules/bar/Bar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/Bar.qml)
- [shell-upstream/modules/bar/BarWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/BarWrapper.qml)
- [shell-upstream/modules/bar/popouts/ClipWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/ClipWrapper.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/modules/utilities/toasts/Toasts.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/toasts/Toasts.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.modules.bar
- qs.modules.bar.popouts
- qs.modules.dashboard
- qs.modules.launcher
- qs.modules.notifications
- qs.modules.osd
- qs.modules.session
- qs.modules.sidebar
- qs.modules.utilities
- qs.modules.utilities.toasts

## [shell-upstream/modules/drawers/Regions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Regions.qml)
**Purpose:** System module component for regions.

### Internal Deps:
- [shell-upstream/modules/bar/Bar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/Bar.qml)
- [shell-upstream/modules/bar/BarWrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/BarWrapper.qml)
- [shell-upstream/modules/drawers/Panels.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Panels.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.modules.bar

## [shell-upstream/modules/launcher/AppList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/AppList.qml)
**Purpose:** Application launcher module implementing the app list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/containers/StyledListView.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledListView.qml)
- [shell-upstream/components/controls/StyledScrollBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledScrollBar.qml)
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/modules/launcher/items/ActionItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/ActionItem.qml)
- [shell-upstream/modules/launcher/items/AppItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/AppItem.qml)
- [shell-upstream/modules/launcher/items/CalcItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/CalcItem.qml)
- [shell-upstream/modules/launcher/items/SchemeItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/SchemeItem.qml)
- [shell-upstream/modules/launcher/items/VariantItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/VariantItem.qml)
- [shell-upstream/modules/launcher/services/Actions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Actions.qml)
- [shell-upstream/modules/launcher/services/Apps.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Apps.qml)
- [shell-upstream/modules/launcher/services/M3Variants.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/M3Variants.qml)
- [shell-upstream/modules/launcher/services/Schemes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Schemes.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.components.containers
- qs.components.controls
- qs.modules.launcher.items
- qs.modules.launcher.services
- qs.services

## [shell-upstream/modules/launcher/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/Content.qml)
**Purpose:** Application launcher module implementing the content.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/modules/launcher/ContentList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/ContentList.qml)
- [shell-upstream/modules/launcher/services/Apps.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Apps.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.controls
- qs.modules.launcher.services
- qs.services

## [shell-upstream/modules/launcher/ContentList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/ContentList.qml)
**Purpose:** Application launcher module implementing the content list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/modules/launcher/AppList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/AppList.qml)
- [shell-upstream/modules/launcher/WallpaperList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/WallpaperList.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/launcher/WallpaperList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/WallpaperList.qml)
**Purpose:** Application launcher module implementing the wallpaper list.

### Internal Deps:
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/modules/launcher/items](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items)
- [shell-upstream/modules/launcher/items/WallpaperItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/WallpaperItem.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components.controls
- qs.services

## [shell-upstream/modules/launcher/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/Wrapper.qml)
**Purpose:** Application launcher module implementing the wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/launcher/services/Apps.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Apps.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.modules.launcher.services

## [shell-upstream/modules/launcher/items/ActionItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/ActionItem.qml)
**Purpose:** Application launcher module implementing the action item.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/launcher/items/AppItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/AppItem.qml)
**Purpose:** Application launcher module implementing the app item.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/launcher/services/Apps.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Apps.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.modules.launcher.services
- qs.services
- qs.utils

## [shell-upstream/modules/launcher/items/CalcItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/CalcItem.qml)
**Purpose:** Application launcher module implementing the calc item.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/qalculator.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/qalculator.cpp)
- [shell-upstream/plugin/src/Caelestia/qalculator.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/qalculator.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/launcher/items/SchemeItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/SchemeItem.qml)
**Purpose:** Application launcher module implementing the scheme item.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/launcher/services/Schemes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Schemes.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.modules.launcher.services
- qs.services

## [shell-upstream/modules/launcher/items/VariantItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/VariantItem.qml)
**Purpose:** Application launcher module implementing the variant item.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/launcher/services/M3Variants.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/M3Variants.qml)
- [shell-upstream/modules/launcher/services/Schemes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Schemes.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.modules.launcher.services
- qs.services

## [shell-upstream/modules/launcher/items/WallpaperItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/items/WallpaperItem.qml)
**Purpose:** Application launcher module implementing the wallpaper item.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/components/images/CachingImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingImage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.components.effects
- qs.components.images
- qs.services

## [shell-upstream/modules/launcher/services/Actions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Actions.qml)
**Purpose:** System service providing background telemetry and monitoring for actions.

### Internal Deps:
- [shell-upstream/modules/launcher](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher)
- [shell-upstream/modules/launcher/AppList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/AppList.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.services
- qs.utils

## [shell-upstream/modules/launcher/services/Apps.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Apps.qml)
**Purpose:** System service providing background telemetry and monitoring for apps.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/appdb.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/appdb.cpp)
- [shell-upstream/plugin/src/Caelestia/appdb.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/appdb.hpp)
### External Deps:
- Quickshell
- qs.utils

## [shell-upstream/modules/launcher/services/M3Variants.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/M3Variants.qml)
**Purpose:** System service providing background telemetry and monitoring for m3 variants.

### Internal Deps:
- [shell-upstream/modules/launcher](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher)
- [shell-upstream/modules/launcher/AppList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/AppList.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.utils

## [shell-upstream/modules/launcher/services/Schemes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Schemes.qml)
**Purpose:** System service providing background telemetry and monitoring for schemes.

### Internal Deps:
- [shell-upstream/modules/launcher](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher)
- [shell-upstream/modules/launcher/AppList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/AppList.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Io
- qs.utils

## [shell-upstream/modules/lock/Center.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Center.qml)
**Purpose:** Lock screen component managing center.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/lock/center](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center)
- [shell-upstream/modules/lock/center/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/Clock.qml)
- [shell-upstream/modules/lock/center/PasswordInput.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/PasswordInput.qml)
- [shell-upstream/modules/lock/center/ProfilePic.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/ProfilePic.qml)
- [shell-upstream/modules/lock/center/StateMessage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/StateMessage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/lock/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Content.qml)
**Purpose:** Lock screen component managing content.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/lock/Center.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Center.qml)
- [shell-upstream/modules/lock/Fetch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Fetch.qml)
- [shell-upstream/modules/lock/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Media.qml)
- [shell-upstream/modules/lock/Resources.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Resources.qml)
- [shell-upstream/modules/lock/WeatherInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/WeatherInfo.qml)
- [shell-upstream/modules/sidebar/NotifDock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifDock.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/lock/Fetch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Fetch.qml)
**Purpose:** Lock screen component managing fetch.

### Internal Deps:
- [shell-upstream/components/Logo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Logo.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Services.UPower
- qs.components
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/lock/Lock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Lock.qml)
**Purpose:** Lock screen component managing lock.

### Internal Deps:
- [shell-upstream/components/misc/CustomShortcut.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/misc/CustomShortcut.qml)
- [shell-upstream/modules/lock/LockSurface.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/LockSurface.qml)
- [shell-upstream/modules/lock/Pam.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Pam.qml)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Io
- Quickshell.Wayland
- qs.components.misc

## [shell-upstream/modules/lock/LockSurface.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/LockSurface.qml)
**Purpose:** Lock screen component managing lock surface.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/lock/Pam.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Pam.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Effects
- Quickshell.Wayland
- qs.components
- qs.services

## [shell-upstream/modules/lock/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Media.qml)
**Purpose:** Lock screen component managing media.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/images/FadeImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/FadeImage.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.components.images
- qs.services

## [shell-upstream/modules/lock/NotifDock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/NotifDock.qml)
**Purpose:** Lock screen component managing notif dock.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/StyledListView.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledListView.qml)
- [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
- [shell-upstream/modules/sidebar/NotifGroup.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifGroup.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.components.containers
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/lock/NotifGroup.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/NotifGroup.qml)
**Purpose:** Lock screen component managing notif group.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Services.Notifications
- Quickshell.Widgets
- qs.components
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/lock/Pam.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Pam.qml)
**Purpose:** Lock screen component managing pam.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Io
- Quickshell.Services.Pam
- Quickshell.Wayland

## [shell-upstream/modules/lock/Resources.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Resources.qml)
**Purpose:** Lock screen component managing resources.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/components/widgets/WavyTopRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/WavyTopRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/cpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/cpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.effects
- qs.components.widgets
- qs.services

## [shell-upstream/modules/lock/WeatherInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/WeatherInfo.qml)
**Purpose:** Lock screen component managing weather info.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/lock/weather](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/weather)
- [shell-upstream/modules/lock/weather/BriefInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/weather/BriefInfo.qml)
- [shell-upstream/modules/lock/weather/Forecast.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/weather/Forecast.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/lock/center/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/Clock.qml)
**Purpose:** Lock screen component managing clock.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/lock/center/InputField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/InputField.qml)
**Purpose:** Lock screen component managing input field.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/lock/Pam.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Pam.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- Quickshell
- qs.components
- qs.modules.lock
- qs.services

## [shell-upstream/modules/lock/center/PasswordInput.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/PasswordInput.qml)
**Purpose:** Lock screen component managing password input.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/AnimLoader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnimLoader.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/modules/lock/center/InputField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/InputField.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/lock/center/ProfilePic.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/ProfilePic.qml)
**Purpose:** Lock screen component managing profile pic.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/components/images/CachingImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/CachingImage.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- M3Shapes
- QtQuick
- qs.components
- qs.components.effects
- qs.components.images
- qs.services
- qs.utils

## [shell-upstream/modules/lock/center/StateMessage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/StateMessage.qml)
**Purpose:** Lock screen component managing state message.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/lock/Pam.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Pam.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.modules.lock
- qs.services

## [shell-upstream/modules/lock/weather/BriefInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/weather/BriefInfo.qml)
**Purpose:** Lock screen component managing brief info.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/lock/weather/Forecast.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/weather/Forecast.qml)
**Purpose:** Lock screen component managing forecast.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- M3Shapes
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/nexus/NavPane.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NavPane.qml)
**Purpose:** System module component for nav pane.

### Internal Deps:
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/modules/nexus/navpane](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/navpane)
- [shell-upstream/modules/nexus/navpane/NavLocations.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/navpane/NavLocations.qml)
- [shell-upstream/modules/nexus/navpane/SearchBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/navpane/SearchBar.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.modules.nexus

## [shell-upstream/modules/nexus/Nexus.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/Nexus.qml)
**Purpose:** System module component for nexus.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/modules/nexus/NavPane.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NavPane.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/modules/nexus/Pages.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/Pages.qml)
- [shell-upstream/modules/nexus/WindowFactory.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/WindowFactory.qml)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.controls
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
**Purpose:** System module component for nexus state.

### Internal Deps:
- None
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Bluetooth

## [shell-upstream/modules/nexus/PageCompRegistry.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/PageCompRegistry.qml)
**Purpose:** System module component for page comp registry.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/modules/nexus/common/StackPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StackPage.qml)
- [shell-upstream/modules/nexus/pages/AboutPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/AboutPage.qml)
- [shell-upstream/modules/nexus/pages/AudioPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/AudioPage.qml)
- [shell-upstream/modules/nexus/pages/BluetoothPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/BluetoothPage.qml)
- [shell-upstream/modules/nexus/pages/LanguageAndRegion.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/LanguageAndRegion.qml)
- [shell-upstream/modules/nexus/pages/NetworkPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/NetworkPage.qml)
- [shell-upstream/modules/nexus/pages/PanelsPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/PanelsPage.qml)
- [shell-upstream/modules/nexus/pages/ServicesPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/ServicesPage.qml)
- [shell-upstream/modules/nexus/pages/WallpaperAndStyle.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/WallpaperAndStyle.qml)
- [shell-upstream/modules/nexus/pages/audio/AppVolumes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/audio/AppVolumes.qml)
- [shell-upstream/modules/nexus/pages/bluetooth/BluetoothPairing.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/bluetooth/BluetoothPairing.qml)
- [shell-upstream/modules/nexus/pages/bluetooth/BtDeviceInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/bluetooth/BtDeviceInfo.qml)
- [shell-upstream/modules/nexus/pages/panels/DashboardPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/DashboardPanel.qml)
- [shell-upstream/modules/nexus/pages/panels/LauncherPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/LauncherPanel.qml)
- [shell-upstream/modules/nexus/pages/panels/SidebarPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/SidebarPanel.qml)
- [shell-upstream/modules/nexus/pages/panels/TaskbarPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/TaskbarPanel.qml)
- [shell-upstream/modules/nexus/pages/panels/taskbar/BarActiveWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarActiveWindow.qml)
- [shell-upstream/modules/nexus/pages/panels/taskbar/BarClock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarClock.qml)
- [shell-upstream/modules/nexus/pages/panels/taskbar/BarStatusIcons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarStatusIcons.qml)
- [shell-upstream/modules/nexus/pages/panels/taskbar/BarTray.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarTray.qml)
- [shell-upstream/modules/nexus/pages/panels/taskbar/BarWorkspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarWorkspaces.qml)
- [shell-upstream/modules/nexus/pages/wallandstyle/ColourSelect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/wallandstyle/ColourSelect.qml)
- [shell-upstream/modules/nexus/pages/wallandstyle/WallpaperCategory.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/wallandstyle/WallpaperCategory.qml)
- [shell-upstream/modules/nexus/pages/wallandstyle/WallpaperSelect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/wallandstyle/WallpaperSelect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common
- qs.modules.nexus.pages
- qs.modules.nexus.pages.audio
- qs.modules.nexus.pages.bluetooth
- qs.modules.nexus.pages.panels
- qs.modules.nexus.pages.panels.taskbar
- qs.modules.nexus.pages.wallandstyle
- qs.services

## [shell-upstream/modules/nexus/PageRegistry.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/PageRegistry.qml)
**Purpose:** System module component for page registry.

### Internal Deps:
- [shell-upstream/modules/background/Wallpaper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Wallpaper.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/modules/drawers/Panels.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Panels.qml)
### External Deps:
- QtQuick

## [shell-upstream/modules/nexus/Pages.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/Pages.qml)
**Purpose:** System module component for pages.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/modules/nexus/PageCompRegistry.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/PageCompRegistry.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.modules.nexus

## [shell-upstream/modules/nexus/WindowFactory.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/WindowFactory.qml)
**Purpose:** System module component for window factory.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/modules/nexus/Nexus.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/Nexus.qml)
- [shell-upstream/modules/nexus/PageRegistry.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/PageRegistry.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/nexus/common/AnimatedLogo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/AnimatedLogo.qml)
**Purpose:** System module component for animated logo.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/modules/lock/Center.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Center.qml)
### External Deps:
- QtQuick
- QtQuick.Effects
- QtQuick.Shapes
- qs.components
- qs.services

## [shell-upstream/modules/nexus/common/AudioDeviceList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/AudioDeviceList.qml)
**Purpose:** System module component for audio device list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/common/ItemList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ItemList.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Services.Pipewire
- qs.components
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
**Purpose:** System module component for connected rect.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.services

## [shell-upstream/modules/nexus/common/InfoRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/InfoRow.qml)
**Purpose:** System module component for info row.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/common/ItemList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ItemList.qml)
**Purpose:** System module component for item list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/nexus/common/NavRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/NavRow.qml)
**Purpose:** System module component for nav row.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
**Purpose:** System module component for page base.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/VerticalFadeFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/VerticalFadeFlickable.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.containers
- qs.components.controls
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
**Purpose:** System module component for section header.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/nexus/common/SelectRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SelectRow.qml)
**Purpose:** System module component for select row.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/components/controls/SplitButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButton.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/common/SliderRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SliderRow.qml)
**Purpose:** System module component for slider row.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/components/controls/StyledSlider.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSlider.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/common/StackPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StackPage.qml)
**Purpose:** System module component for stack page.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Controls
- qs.components
- qs.modules.nexus

## [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
**Purpose:** System module component for stepper row.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/CustomSpinBox.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomSpinBox.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
**Purpose:** System module component for toggle row.

### Internal Deps:
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/nexus/common/WallItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/WallItem.qml)
**Purpose:** System module component for wall item.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/nexus/navpane/NavLocations.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/navpane/NavLocations.qml)
**Purpose:** System module component for nav locations.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/VerticalFadeFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/VerticalFadeFlickable.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/modules/nexus/PageRegistry.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/PageRegistry.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.containers
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/nexus/navpane/SearchBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/navpane/SearchBar.qml)
**Purpose:** System module component for search bar.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/StyledTextField.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledTextField.qml)
- [shell-upstream/modules/nexus/NexusState.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/NexusState.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/nexus/pages/AboutPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/AboutPage.qml)
**Purpose:** System module component for about page.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/common/AnimatedLogo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/AnimatedLogo.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/InfoRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/InfoRow.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Io
- qs.components
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/nexus/pages/AudioPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/AudioPage.qml)
**Purpose:** System module component for audio page.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/nexus/common/AudioDeviceList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/AudioDeviceList.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SliderRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SliderRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/nexus/pages/BluetoothPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/BluetoothPage.qml)
**Purpose:** System module component for bluetooth page.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/AnimLoader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnimLoader.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/ItemList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ItemList.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Bluetooth
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/nexus/pages/LanguageAndRegion.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/LanguageAndRegion.qml)
**Purpose:** System module component for language and region.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/modules/lock/center/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/Clock.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/SelectRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SelectRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/pages/NetworkPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/NetworkPage.qml)
**Purpose:** System module component for network page.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/AnimLoader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnimLoader.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/components/controls/StyledProgressBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledProgressBar.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/ItemList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ItemList.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/nexus/pages/PanelsPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/PanelsPage.qml)
**Purpose:** System module component for panels page.

### Internal Deps:
- [shell-upstream/components/filedialog/Sidebar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sidebar.qml)
- [shell-upstream/modules/drawers/Panels.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/drawers/Panels.qml)
- [shell-upstream/modules/nexus/common/NavRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/NavRow.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/ServicesPage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/ServicesPage.qml)
**Purpose:** System module component for services page.

### Internal Deps:
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/modules/background/Visualiser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Visualiser.qml)
- [shell-upstream/modules/lock/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Media.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/SelectRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SelectRow.qml)
- [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/pages/WallpaperAndStyle.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/WallpaperAndStyle.qml)
**Purpose:** System module component for wallpaper and style.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconTextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconTextButton.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/components/images/FadeImage.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/images/FadeImage.qml)
- [shell-upstream/modules/background/Wallpaper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/background/Wallpaper.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.components.images
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/pages/audio/AppVolumes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/audio/AppVolumes.qml)
**Purpose:** System module component for app volumes.

### Internal Deps:
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/nexus/common/ItemList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ItemList.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SliderRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SliderRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Services.Pipewire
- qs.components
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/nexus/pages/bluetooth/BluetoothPairing.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/bluetooth/BluetoothPairing.qml)
**Purpose:** System module component for bluetooth pairing.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/components/controls/StyledProgressBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledProgressBar.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/ItemList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ItemList.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Bluetooth
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/nexus/pages/bluetooth/BtDeviceInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/bluetooth/BtDeviceInfo.qml)
**Purpose:** System module component for bt device info.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/AnimLoader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnimLoader.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/ButtonBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/ButtonBase.qml)
- [shell-upstream/components/controls/LoadingIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/LoadingIndicator.qml)
- [shell-upstream/components/controls/StyledProgressBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledProgressBar.qml)
- [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
- [shell-upstream/modules/nexus/common/ConnectedRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ConnectedRect.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Bluetooth
- qs.components
- qs.components.controls
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/pages/panels/DashboardPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/DashboardPanel.qml)
**Purpose:** System module component for dashboard panel.

### Internal Deps:
- [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/modules/dashboard/Performance.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Performance.qml)
- [shell-upstream/modules/dashboard/Tabs.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/dashboard/Tabs.qml)
- [shell-upstream/modules/lock/Media.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/Media.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/memory.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.cpp)
- [shell-upstream/plugin/src/Caelestia/Services/storage.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/LauncherPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/LauncherPanel.qml)
**Purpose:** System module component for launcher panel.

### Internal Deps:
- [shell-upstream/modules/launcher/services/Actions.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Actions.qml)
- [shell-upstream/modules/launcher/services/Apps.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Apps.qml)
- [shell-upstream/modules/launcher/services/Schemes.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/launcher/services/Schemes.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/SidebarPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/SidebarPanel.qml)
**Purpose:** System module component for sidebar panel.

### Internal Deps:
- [shell-upstream/components/filedialog/Sidebar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sidebar.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/TaskbarPanel.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/TaskbarPanel.qml)
**Purpose:** System module component for taskbar panel.

### Internal Deps:
- [shell-upstream/modules/bar/components/Tray.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Tray.qml)
- [shell-upstream/modules/bar/components/workspaces/Workspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspaces.qml)
- [shell-upstream/modules/lock/center/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/Clock.qml)
- [shell-upstream/modules/nexus/common/NavRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/NavRow.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/taskbar/BarActiveWindow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarActiveWindow.qml)
**Purpose:** System module component for bar active window.

### Internal Deps:
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/taskbar/BarClock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarClock.qml)
**Purpose:** System module component for bar clock.

### Internal Deps:
- [shell-upstream/modules/lock/center/Clock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/lock/center/Clock.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/modules/utilities/Background.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Background.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/taskbar/BarStatusIcons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarStatusIcons.qml)
**Purpose:** System module component for bar status icons.

### Internal Deps:
- [shell-upstream/modules/bar/popouts/Battery.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Battery.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/bar/popouts/Network.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Network.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/SectionHeader.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/SectionHeader.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/taskbar/BarTray.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarTray.qml)
**Purpose:** System module component for bar tray.

### Internal Deps:
- [shell-upstream/modules/bar/components/Tray.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/Tray.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/modules/utilities/Background.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Background.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/panels/taskbar/BarWorkspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/panels/taskbar/BarWorkspaces.qml)
**Purpose:** System module component for bar workspaces.

### Internal Deps:
- [shell-upstream/modules/bar/components/workspaces/Workspaces.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspaces.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/StepperRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/StepperRow.qml)
- [shell-upstream/modules/nexus/common/ToggleRow.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/ToggleRow.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick.Layouts
- qs.modules.nexus.common

## [shell-upstream/modules/nexus/pages/wallandstyle/ColourSelect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/wallandstyle/ColourSelect.qml)
**Purpose:** System module component for colour select.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/pages/wallandstyle/WallpaperCategory.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/wallandstyle/WallpaperCategory.qml)
**Purpose:** System module component for wallpaper category.

### Internal Deps:
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/WallItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/WallItem.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.modules.nexus.common
- qs.services

## [shell-upstream/modules/nexus/pages/wallandstyle/WallpaperSelect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/pages/wallandstyle/WallpaperSelect.qml)
**Purpose:** System module component for wallpaper select.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconTextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconTextButton.qml)
- [shell-upstream/components/filedialog/FileDialog.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/FileDialog.qml)
- [shell-upstream/modules/nexus/common/PageBase.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/PageBase.qml)
- [shell-upstream/modules/nexus/common/WallItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/common/WallItem.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.components.controls
- qs.components.filedialog
- qs.modules.nexus.common
- qs.services
- qs.utils

## [shell-upstream/modules/notifications/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/notifications/Content.qml)
**Purpose:** System notifications module handling content.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/containers/StyledListView.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledListView.qml)
- [shell-upstream/components/widgets/ExtraIndicator.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/widgets/ExtraIndicator.qml)
- [shell-upstream/modules/notifications/Notification.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/notifications/Notification.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.components.containers
- qs.components.widgets
- qs.modules.utilities
- qs.services

## [shell-upstream/modules/notifications/Notification.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/notifications/Notification.qml)
**Purpose:** System notifications module handling notification.

### Internal Deps:
- [shell-upstream/components/AnchorAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/AnchorAnim.qml)
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/TextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/TextButton.qml)
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Shapes
- Quickshell
- Quickshell.Services.Notifications
- qs.components
- qs.components.controls
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/notifications/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/notifications/Wrapper.qml)
**Purpose:** System notifications module handling wrapper.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
### External Deps:
- QtQuick
- qs.components

## [shell-upstream/modules/osd/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/osd/Content.qml)
**Purpose:** On-screen display (OSD) HUD element for content.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/controls/CustomMouseArea.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/CustomMouseArea.qml)
- [shell-upstream/components/controls/FilledSlider.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/FilledSlider.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/osd/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/osd/Wrapper.qml)
**Purpose:** On-screen display (OSD) HUD element for wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/session/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/session/Content.qml)
**Purpose:** Session overlay component for managing content.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/session/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/session/Wrapper.qml)
**Purpose:** Session overlay component for managing wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
### External Deps:
- QtQuick
- qs.components

## [shell-upstream/modules/sidebar/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Content.qml)
**Purpose:** Sidebar dashboard layout element for content.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/sidebar/NotifDock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifDock.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/sidebar/Notif.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Notif.qml)
**Purpose:** Sidebar dashboard layout element for notif.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/sidebar/NotifActionList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifActionList.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/sidebar/NotifActionList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifActionList.qml)
**Purpose:** Sidebar dashboard layout element for notif action list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/StyledFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledFlickable.qml)
- [shell-upstream/components/effects/Mask.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Mask.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.components.containers
- qs.components.effects
- qs.services

## [shell-upstream/modules/sidebar/NotifDock.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifDock.qml)
**Purpose:** Sidebar dashboard layout element for notif dock.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/StyledFlickable.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledFlickable.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/StyledScrollBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledScrollBar.qml)
- [shell-upstream/components/effects/Colouriser.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Colouriser.qml)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/modules/sidebar/NotifDockList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifDockList.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.components.containers
- qs.components.controls
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/sidebar/NotifDockList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifDockList.qml)
**Purpose:** Sidebar dashboard layout element for notif dock list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/sidebar/NotifGroup.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifGroup.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/plugin/src/Caelestia/Components/lazylistview.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/sidebar/NotifGroup.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifGroup.qml)
**Purpose:** Sidebar dashboard layout element for notif group.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/ColouredIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/ColouredIcon.qml)
- [shell-upstream/modules/sidebar/NotifGroupList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifGroupList.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Services.Notifications
- qs.components
- qs.components.effects
- qs.services
- qs.utils

## [shell-upstream/modules/sidebar/NotifGroupList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/NotifGroupList.qml)
**Purpose:** Sidebar dashboard layout element for notif group list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/sidebar/Notif.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Notif.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/plugin/src/Caelestia/Components/lazylistview.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
**Purpose:** Sidebar dashboard layout element for props.

### Internal Deps:
- None
### External Deps:
- Quickshell

## [shell-upstream/modules/sidebar/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Wrapper.qml)
**Purpose:** Sidebar dashboard layout element for wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/sidebar/Props.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/sidebar/Props.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- qs.components

## [shell-upstream/modules/utilities/Background.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Background.qml)
**Purpose:** System module component for background.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
### External Deps:
- QtQuick
- QtQuick.Shapes
- qs.components
- qs.services

## [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
**Purpose:** System module component for content.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/modules/utilities/RecordingDeleteModal.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/RecordingDeleteModal.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/modules/utilities/cards](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards)
- [shell-upstream/modules/utilities/cards/IdleInhibit.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/IdleInhibit.qml)
- [shell-upstream/modules/utilities/cards/Record.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/Record.qml)
- [shell-upstream/modules/utilities/cards/Toggles.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/Toggles.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.modules.bar.popouts

## [shell-upstream/modules/utilities/RecordingDeleteModal.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/RecordingDeleteModal.qml)
**Purpose:** System module component for recording delete modal.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/TextButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/TextButton.qml)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- QtQuick.Shapes
- qs.components
- qs.components.controls
- qs.components.effects
- qs.services

## [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
**Purpose:** System module component for wrapper.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/filedialog/Sidebar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/filedialog/Sidebar.qml)
- [shell-upstream/modules/utilities/Content.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Content.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.modules.bar.popouts
- qs.modules.sidebar

## [shell-upstream/modules/utilities/cards/IdleInhibit.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/IdleInhibit.qml)
**Purpose:** System module component for idle inhibit.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/StyledSwitch.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledSwitch.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/utilities/cards/Record.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/Record.qml)
**Purpose:** System module component for record.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/MenuItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/MenuItem.qml)
- [shell-upstream/components/controls/SplitButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/SplitButton.qml)
- [shell-upstream/modules/utilities/cards/RecordingList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/RecordingList.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.controls
- qs.services

## [shell-upstream/modules/utilities/cards/RecordingList.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/RecordingList.qml)
**Purpose:** System module component for recording list.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/containers/StyledListView.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/containers/StyledListView.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/components/controls/StyledScrollBar.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/StyledScrollBar.qml)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp)
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Widgets
- qs.components
- qs.components.containers
- qs.components.controls
- qs.services
- qs.utils

## [shell-upstream/modules/utilities/cards/Toggles.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/cards/Toggles.qml)
**Purpose:** System module component for toggles.

### Internal Deps:
- [shell-upstream/components/DrawerVisibilities.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/DrawerVisibilities.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/controls/IconButton.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/controls/IconButton.qml)
- [shell-upstream/modules/bar/popouts/Audio.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Audio.qml)
- [shell-upstream/modules/bar/popouts/Bluetooth.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/popouts/Bluetooth.qml)
- [shell-upstream/modules/nexus/WindowFactory.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/nexus/WindowFactory.qml)
- [shell-upstream/modules/utilities/Wrapper.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/Wrapper.qml)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Bluetooth
- qs.components
- qs.components.controls
- qs.modules.bar.popouts
- qs.modules.nexus
- qs.services

## [shell-upstream/modules/utilities/toasts/ToastItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/toasts/ToastItem.qml)
**Purpose:** System module component for toast item.

### Internal Deps:
- [shell-upstream/components/CAnim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/CAnim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/components/effects/Elevation.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/effects/Elevation.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.components.effects
- qs.services

## [shell-upstream/modules/utilities/toasts/Toasts.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/toasts/Toasts.qml)
**Purpose:** System module component for toasts.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/modules/utilities/toasts/ToastItem.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/utilities/toasts/ToastItem.qml)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
- [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- QtQuick
- Quickshell
- qs.components
- qs.services

## [shell-upstream/modules/windowinfo/Buttons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Buttons.qml)
**Purpose:** Window and workspace tracking component showing buttons.

### Internal Deps:
- [shell-upstream/components/Anim.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/Anim.qml)
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StateLayer.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StateLayer.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- qs.components
- qs.services

## [shell-upstream/modules/windowinfo/Details.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Details.qml)
**Purpose:** Window and workspace tracking component showing details.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/modules/bar/components/workspaces/Workspace.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/bar/components/workspaces/Workspace.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell.Hyprland
- qs.components
- qs.services

## [shell-upstream/modules/windowinfo/Preview.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Preview.qml)
**Purpose:** Window and workspace tracking component showing preview.

### Internal Deps:
- [shell-upstream/components/MaterialIcon.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/MaterialIcon.qml)
- [shell-upstream/components/StyledClippingRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledClippingRect.qml)
- [shell-upstream/components/StyledText.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledText.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Hyprland
- Quickshell.Wayland
- qs.components
- qs.services

## [shell-upstream/modules/windowinfo/WindowInfo.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/WindowInfo.qml)
**Purpose:** Window and workspace tracking component showing window info.

### Internal Deps:
- [shell-upstream/components/StyledRect.qml](file:///home/yago/projects/active/caelestia/shell-upstream/components/StyledRect.qml)
- [shell-upstream/modules/windowinfo/Buttons.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Buttons.qml)
- [shell-upstream/modules/windowinfo/Details.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Details.qml)
- [shell-upstream/modules/windowinfo/Preview.qml](file:///home/yago/projects/active/caelestia/shell-upstream/modules/windowinfo/Preview.qml)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- QtQuick
- QtQuick.Layouts
- Quickshell
- Quickshell.Hyprland
- qs.components
- qs.services

## [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.cpp)
**Purpose:** Manages a collection of organic fluid blobs and handles their layout and synchronization.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
**Purpose:** Manages a collection of organic fluid blobs and handles their layout and synchronization.

### Internal Deps:
- None
### External Deps:
- qcolor.h
- qlist.h
- qobject.h
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.cpp)
**Purpose:** Renders inverted rectangular blob shapes with custom shader effects.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp)
### External Deps:
- algorithm
- cstring
- qsggeometry.h
- qsgnode.h

## [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp)
**Purpose:** Renders inverted rectangular blob shapes with custom shader effects.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp)
### External Deps:
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.cpp)
**Purpose:** Implements custom QSGMaterial shaders for fluid blob styling and animations.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp)
### External Deps:
- cstring

## [shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp)
**Purpose:** Implements custom QSGMaterial shaders for fluid blob styling and animations.

### Internal Deps:
- None
### External Deps:
- qcolor.h
- qsgmaterial.h
- qsgmaterialshader.h

## [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.cpp)
**Purpose:** Renders rectangular blob shapes with custom shader effects.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp)
### External Deps:
- algorithm
- cmath

## [shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobrect.hpp)
**Purpose:** Renders rectangular blob shapes with custom shader effects.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp)
### External Deps:
- qelapsedtimer.h
- qpointer.h
- qqmlengine.h
- qqmllist.h

## [shell-upstream/plugin/src/Caelestia/Blobs/blobshape.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.cpp)
**Purpose:** Base class for rendering custom organic/fluid blob shapes on the screen.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobgroup.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobinvertedrect.hpp)
- [shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp)
### External Deps:
- algorithm
- cmath
- qsggeometry.h
- qsgnode.h

## [shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobshape.hpp)
**Purpose:** Base class for rendering custom organic/fluid blob shapes on the screen.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Blobs/blobmaterial.hpp)
### External Deps:
- qmatrix4x4.h
- qquickitem.h
- qvector.h

## [shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.cpp)
**Purpose:** Custom QML layout component for managing rows of animated buttons.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp)
**Purpose:** Custom QML layout component for managing rows of animated buttons.

### Internal Deps:
- None
### External Deps:
- qquickitem.h

## [shell-upstream/plugin/src/Caelestia/Components/lazylistview.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.cpp)
**Purpose:** Optimized ListView component that loads items lazily to improve performance.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp)
### External Deps:
- algorithm
- qqmlcontext.h
- qtimer.h

## [shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp)
**Purpose:** Optimized ListView component that loads items lazily to improve performance.

### Internal Deps:
- None
### External Deps:
- qabstractitemmodel.h
- qhash.h
- qobject.h
- qqmlcomponent.h
- qqmlintegration.h
- qquickitem.h
- qrect.h
- qvector.h

## [shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.cpp)
**Purpose:** Renders a custom wavy line effect using QQuickPaintedItem.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp)
### External Deps:
- qpainter.h
- qpainterpath.h

## [shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp)
**Purpose:** Renders a custom wavy line effect using QQuickPaintedItem.

### Internal Deps:
- None
### External Deps:
- qqmlintegration.h
- qquickpainteditem.h

## [shell-upstream/plugin/src/Caelestia/Config/anim.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/anim.cpp)
**Purpose:** Exposes expressive animation curve tokens and default transition parameters to QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/anim.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/anim.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
### External Deps:
- qpoint.h

## [shell-upstream/plugin/src/Caelestia/Config/anim.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/anim.hpp)
**Purpose:** Exposes expressive animation curve tokens and default transition parameters to QML.

### Internal Deps:
- None
### External Deps:
- qeasingcurve.h
- qobject.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.cpp)
**Purpose:** Defines appearance configuration schemas (fonts, padding, spacing, rounding, transitions).

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
### External Deps:
- qmetaobject.h

## [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp)
**Purpose:** Defines appearance configuration schemas (fonts, padding, spacing, rounding, transitions).

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qfont.h
- qstring.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/backgroundconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/backgroundconfig.hpp)
**Purpose:** Defines desktop background clock, visualiser, and wallpaper config schemas.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h

## [shell-upstream/plugin/src/Caelestia/Config/barconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/barconfig.hpp)
**Purpose:** Defines configuration schemas for the status bar components (workspaces, tray, clock, window titles).

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h
- qstringlist.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/borderconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/borderconfig.hpp)
**Purpose:** Defines border style and layout configuration schemas.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- algorithm

## [shell-upstream/plugin/src/Caelestia/Config/config.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.cpp)
**Purpose:** Global configuration manager singleton that loads, saves, and exposes settings to QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/backgroundconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/backgroundconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/barconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/barconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/borderconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/borderconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/dashboardconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/dashboardconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/generalconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/generalconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/launcherconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/launcherconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/lockconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/lockconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/nexusconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/nexusconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/notifsconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/notifsconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/osdconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/osdconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/sessionconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/sessionconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/sidebarconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/sidebarconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/userpaths.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/userpaths.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/utilitiesconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/utilitiesconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/winfoconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/winfoconfig.hpp)
### External Deps:
- qqmlengine.h
- qstandardpaths.h

## [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
**Purpose:** Global configuration manager singleton that loads, saves, and exposes settings to QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp)
### External Deps:
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/Config/configattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.cpp)
**Purpose:** Exposes attached configuration properties to QML items.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp)
### External Deps:
- qquickitem.h

## [shell-upstream/plugin/src/Caelestia/Config/configattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configattached.hpp)
**Purpose:** Exposes attached configuration properties to QML items.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
### External Deps:
- qquickattachedpropertypropagator.h

## [shell-upstream/plugin/src/Caelestia/Config/configobject.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.cpp)
**Purpose:** Base class for nested configuration schemas supporting change notifications and serialization.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qjsonarray.h
- qjsonvalue.h
- qloggingcategory.h
- qmetaobject.h
- qstringlist.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
**Purpose:** Base class for nested configuration schemas supporting change notifications and serialization.

### Internal Deps:
- None
### External Deps:
- qjsonobject.h
- qloggingcategory.h
- qmap.h
- qobject.h
- qqmlintegration.h
- qset.h
- qtimer.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/dashboardconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/dashboardconfig.hpp)
**Purpose:** Defines configuration schemas for the system status dashboard.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Config/font.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/font.cpp)
**Purpose:** Exposes system font families and style parameters to QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/font.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/font.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Config/font.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/font.hpp)
**Purpose:** Exposes system font families and style parameters to QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/fontbuilder.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/fontbuilder.hpp)
### External Deps:
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Config/fontbuilder.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/fontbuilder.cpp)
**Purpose:** Exposes utility methods for loading and registering system fonts.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/fontbuilder.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/fontbuilder.hpp)
### External Deps:
- qloggingcategory.h

## [shell-upstream/plugin/src/Caelestia/Config/fontbuilder.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/fontbuilder.hpp)
**Purpose:** Exposes utility methods for loading and registering system fonts.

### Internal Deps:
- None
### External Deps:
- qfont.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Config/generalconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/generalconfig.hpp)
**Purpose:** Defines general global system configuration schemas.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h
- qstringlist.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/launcherconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/launcherconfig.hpp)
**Purpose:** Defines configuration schemas for the application launcher.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h
- qstringlist.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/lockconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/lockconfig.hpp)
**Purpose:** Defines configuration schemas for the lock screen.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.cpp)
**Purpose:** Manages configuration parameters and coordinates settings across multiple screen monitors.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
### External Deps:
- qstandardpaths.h

## [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp)
**Purpose:** Manages configuration parameters and coordinates settings across multiple screen monitors.

### Internal Deps:
- None
### External Deps:
- qhash.h
- qobject.h
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/Config/nexusconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/nexusconfig.hpp)
**Purpose:** Defines configuration schemas for the nexus utility panel.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Config/notifsconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/notifsconfig.hpp)
**Purpose:** Defines configuration schemas for notification popups and history.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h

## [shell-upstream/plugin/src/Caelestia/Config/osdconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/osdconfig.hpp)
**Purpose:** Defines configuration schemas for the on-screen display (OSD) HUDs.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Config/rootconfig.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/rootconfig.cpp)
**Purpose:** The root configuration object containing references to all sub-config modules.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp)
### External Deps:
- qdatetime.h
- qdir.h
- qfile.h
- qfileinfo.h
- qjsondocument.h
- qmetaobject.h
- qstandardpaths.h

## [shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp)
**Purpose:** The root configuration object containing references to all sub-config modules.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- optional
- qfilesystemwatcher.h
- qtimer.h

## [shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp)
**Purpose:** Defines system daemon and monitoring service configuration schemas.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/sessionconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/sessionconfig.hpp)
**Purpose:** Defines system session and lock behavior configuration settings.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h
- qstringlist.h

## [shell-upstream/plugin/src/Caelestia/Config/sidebarconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/sidebarconfig.hpp)
**Purpose:** Defines configuration schemas for the system sidebars.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Config/tokens.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.cpp)
**Purpose:** Manages appearance design tokens (sizes, spacing, colors) loaded from configuration.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
### External Deps:
- qqmlengine.h
- qstandardpaths.h

## [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
**Purpose:** Manages appearance design tokens (sizes, spacing, colors) loaded from configuration.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp)
### External Deps:
- limits
- qlist.h
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.cpp)
**Purpose:** Exposes attached design token properties to QML items.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/anim.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/anim.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/appearanceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/font.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/font.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/monitorconfigmanager.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokens.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokens.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
### External Deps:
- qquickitem.h

## [shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/tokensattached.hpp)
**Purpose:** Exposes attached design token properties to QML items.

### Internal Deps:
- None
### External Deps:
- qqmlintegration.h
- qqmlparserstatus.h
- qquickattachedpropertypropagator.h

## [shell-upstream/plugin/src/Caelestia/Config/userpaths.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/userpaths.hpp)
**Purpose:** Defines default directory paths for user config files, cache, and state folders.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qdir.h
- qstandardpaths.h
- qstring.h

## [shell-upstream/plugin/src/Caelestia/Config/utilitiesconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/utilitiesconfig.hpp)
**Purpose:** Defines layout and behavior config settings for system utility widgets.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- qstring.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Config/winfoconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/winfoconfig.hpp)
**Purpose:** Defines configuration schemas for window info and active window tracking.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/configobject.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.cpp)
**Purpose:** QQuickImageProvider implementation that caches loaded icon and wallpaper images.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp)
- [shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp)
### External Deps:
- qfileinfo.h
- qimage.h
- qimagereader.h
- qloggingcategory.h
- qrunnable.h
- qthreadpool.h

## [shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp)
**Purpose:** QQuickImageProvider implementation that caches loaded icon and wallpaper images.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp)
### External Deps:
- qquickimageprovider.h

## [shell-upstream/plugin/src/Caelestia/Images/imagecacher.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/imagecacher.cpp)
**Purpose:** Asynchronously downloads, processes, and caches images on the local filesystem.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp)
### External Deps:
- qcryptographichash.h
- qdir.h
- qfile.h
- qfileinfo.h
- qimage.h
- qloggingcategory.h
- qmutex.h
- qpainter.h
- qsavefile.h
- qthreadpool.h

## [shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp)
**Purpose:** Asynchronously downloads, processes, and caches images on the local filesystem.

### Internal Deps:
- None
### External Deps:
- qmutex.h
- qobject.h
- qset.h
- qsize.h
- qstring.h

## [shell-upstream/plugin/src/Caelestia/Images/iutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/iutils.cpp)
**Purpose:** Image utility helper functions for format conversions and scaling operations.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp)
- [shell-upstream/plugin/src/Caelestia/Images/iutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/iutils.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Images/iutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/iutils.hpp)
**Purpose:** Image utility helper functions for format conversions and scaling operations.

### Internal Deps:
- None
### External Deps:
- qobject.h
- qqmlintegration.h
- qurl.h

## [shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.cpp)
**Purpose:** Thread-safe ring buffer implementation for tracking data history.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.hpp)
### External Deps:
- algorithm

## [shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.hpp)
**Purpose:** Thread-safe ring buffer implementation for tracking data history.

### Internal Deps:
- None
### External Deps:
- qobject.h
- qqmlintegration.h
- qvector.h

## [shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.cpp)
**Purpose:** Coordinates layout and property updates for circular visual indicators.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp)
### External Deps:
- qeasingcurve.h
- qpoint.h

## [shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp)
**Purpose:** Coordinates layout and property updates for circular visual indicators.

### Internal Deps:
- None
### External Deps:
- qeasingcurve.h
- qobject.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.cpp)
**Purpose:** Tracks system keyboard, mouse, and touch devices configured through Hyprland.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp)
### External Deps:
- qjsonarray.h

## [shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp)
**Purpose:** Tracks system keyboard, mouse, and touch devices configured through Hyprland.

### Internal Deps:
- None
### External Deps:
- qjsonobject.h
- qobject.h
- qqmlintegration.h
- qqmllist.h

## [shell-upstream/plugin/src/Caelestia/Internal/hyprextras.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprextras.cpp)
**Purpose:** Helper functions for querying status and controlling Hyprland compositor states.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/hyprextras.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprextras.hpp)
### External Deps:
- qdir.h
- qjsonarray.h
- qlocalsocket.h
- qloggingcategory.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Internal/hyprextras.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprextras.hpp)
**Purpose:** Helper functions for querying status and controlling Hyprland compositor states.

### Internal Deps:
- None
### External Deps:
- qlocalsocket.h
- qobject.h
- qqmlintegration.h
- qsharedpointer.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.cpp)
**Purpose:** Coordinates layout and property updates for linear visual indicators.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp)
### External Deps:
- qpoint.h

## [shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp)
**Purpose:** Coordinates layout and property updates for linear visual indicators.

### Internal Deps:
- None
### External Deps:
- qcolor.h
- qeasingcurve.h
- qobject.h
- qqmlengine.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Internal/logindmanager.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/logindmanager.cpp)
**Purpose:** Interacts with systemd-logind to monitor session states and listen for power events.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp)
### External Deps:
- QtDBus/qdbusconnection.h
- QtDBus/qdbuserror.h
- QtDBus/qdbusinterface.h
- QtDBus/qdbusreply.h
- qloggingcategory.h

## [shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp)
**Purpose:** Interacts with systemd-logind to monitor session states and listen for power events.

### Internal Deps:
- None
### External Deps:
- qobject.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.cpp)
**Purpose:** Renders animated line graphs or sparklines for displaying system metrics history.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularbuffer.hpp)
- [shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp)
### External Deps:
- qpainter.h
- qpainterpath.h
- qpen.h

## [shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp)
**Purpose:** Renders animated line graphs or sparklines for displaying system metrics history.

### Internal Deps:
- None
### External Deps:
- qcolor.h
- qobject.h
- qqmlintegration.h
- qquickpainteditem.h

## [shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.cpp)
**Purpose:** Renders animated audio frequency visualizer bars based on input data.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp)
### External Deps:
- algorithm
- cmath
- qbrush.h
- qpainter.h
- qpainterpath.h
- qpen.h

## [shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp)
**Purpose:** Renders animated audio frequency visualizer bars based on input data.

### Internal Deps:
- None
### External Deps:
- qcolor.h
- qobject.h
- qqmlintegration.h
- qquickpainteditem.h
- qvector.h

## [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.cpp)
**Purpose:** QAbstractListModel implementation for browsing and filtering local directories in QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
### External Deps:
- qdiriterator.h
- qfuturewatcher.h
- qtconcurrentrun.h

## [shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp)
**Purpose:** QAbstractListModel implementation for browsing and filtering local directories in QML.

### Internal Deps:
- None
### External Deps:
- qabstractitemmodel.h
- qdir.h
- qfilesystemwatcher.h
- qfuture.h
- qimagereader.h
- qmimedatabase.h
- qobject.h
- qqmlintegration.h
- qqmllist.h

## [shell-upstream/plugin/src/Caelestia/Services/audiocollector.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.cpp)
**Purpose:** Captures raw PCM audio samples from PipeWire stream buffers in real time.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- algorithm
- pipewire/pipewire.h
- qloggingcategory.h
- qmutex.h
- spa/param/audio/format-utils.h
- spa/param/latency-utils.h
- stop_token
- vector

## [shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp)
**Purpose:** Captures raw PCM audio samples from PipeWire stream buffers in real time.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- atomic
- pipewire/pipewire.h
- qmutex.h
- qqmlintegration.h
- spa/param/audio/format-utils.h
- stop_token
- thread
- vector

## [shell-upstream/plugin/src/Caelestia/Services/audioprovider.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.cpp)
**Purpose:** Processes captured PCM data to compute audio amplitude and visualizer levels.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- qloggingcategory.h
- qthread.h

## [shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp)
**Purpose:** Processes captured PCM data to compute audio amplitude and visualizer levels.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- qqmlintegration.h
- qtimer.h

## [shell-upstream/plugin/src/Caelestia/Services/beattracker.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/beattracker.cpp)
**Purpose:** Analyzes audio signals to detect tempo, beat triggers, and audio transients.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/beattracker.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/beattracker.hpp)
### External Deps:
- aubio/aubio.h

## [shell-upstream/plugin/src/Caelestia/Services/beattracker.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/beattracker.hpp)
**Purpose:** Analyzes audio signals to detect tempo, beat triggers, and audio transients.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp)
### External Deps:
- aubio/aubio.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/cavaprovider.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cavaprovider.cpp)
**Purpose:** Integrates with CAVA (Console-based Audio Visualizer) to provide frequency spectrum bars.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/cavaprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cavaprovider.hpp)
### External Deps:
- cava/cavacore.h
- cstddef
- qloggingcategory.h

## [shell-upstream/plugin/src/Caelestia/Services/cavaprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cavaprovider.hpp)
**Purpose:** Integrates with CAVA (Console-based Audio Visualizer) to provide frequency spectrum bars.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audioprovider.hpp)
### External Deps:
- cava/cavacore.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/cpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.cpp)
**Purpose:** Monitors CPU usage statistics, core temperatures, and frequency states.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/cpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp)
### External Deps:
- cmath
- qfile.h
- qregularexpression.h

## [shell-upstream/plugin/src/Caelestia/Services/cpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.hpp)
**Purpose:** Monitors CPU usage statistics, core temperatures, and frequency states.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp)
### External Deps:
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/diskinfo.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/diskinfo.cpp)
**Purpose:** Retrieves disk usage statistics, read/write metrics, and partition capacities.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp)
**Purpose:** Retrieves disk usage statistics, read/write metrics, and partition capacities.

### Internal Deps:
- None
### External Deps:
- qobject.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/gpu.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.cpp)
**Purpose:** Retrieves GPU usage, VRAM allocation, and card temperatures via sysfs or nvidia-smi.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/gpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp)
### External Deps:
- cmath
- qdir.h
- qfile.h
- qregularexpression.h

## [shell-upstream/plugin/src/Caelestia/Services/gpu.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.hpp)
**Purpose:** Retrieves GPU usage, VRAM allocation, and card temperatures via sysfs or nvidia-smi.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp)
### External Deps:
- qprocess.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.cpp)
**Purpose:** Represents a potential lyrics search result retrieved from media metadata.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp)
**Purpose:** Represents a potential lyrics search result retrieved from media metadata.

### Internal Deps:
- None
### External Deps:
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.cpp)
**Purpose:** Fetches and synchronizes lyrics for currently playing media from local cache or online services.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/serviceconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/userpaths.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/userpaths.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp)
### External Deps:
- qdiriterator.h
- qfileinfo.h
- qjsonarray.h
- qnetworkcookiejar.h
- qsavefile.h
- qurlquery.h

## [shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp)
**Purpose:** Fetches and synchronizes lyrics for currently playing media from local cache or online services.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyriccandidate.hpp)
### External Deps:
- qhash.h
- qjsonobject.h
- qnetworkaccessmanager.h
- qnetworkreply.h

## [shell-upstream/plugin/src/Caelestia/Services/memory.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.cpp)
**Purpose:** Monitors RAM, Swap space usage, and memory pressure statistics.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/memory.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp)
### External Deps:
- qfile.h
- qregularexpression.h

## [shell-upstream/plugin/src/Caelestia/Services/memory.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp)
**Purpose:** Monitors RAM, Swap space usage, and memory pressure statistics.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp)
### External Deps:
- qqmlintegration.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Services/sensorslib.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/sensorslib.cpp)
**Purpose:** Low-level library interface for reading system temperature, voltage, and fan speed sensors.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp)
### External Deps:
- atomic
- cctype
- cstdlib
- cstring
- mutex
- qloggingcategory.h
- sensors/sensors.h

## [shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/sensorslib.hpp)
**Purpose:** Low-level library interface for reading system temperature, voltage, and fan speed sensors.

### Internal Deps:
- None
### External Deps:
- optional

## [shell-upstream/plugin/src/Caelestia/Services/service.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.cpp)
**Purpose:** Base class for system monitoring services that tick at regular intervals.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- qpointer.h

## [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
**Purpose:** Base class for system monitoring services that tick at regular intervals.

### Internal Deps:
- None
### External Deps:
- qobject.h
- qset.h

## [shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.cpp)
**Purpose:** Handles reference counting and instantiation lifecycle of active services in QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/serviceref.hpp)
**Purpose:** Handles reference counting and instantiation lifecycle of active services in QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- qpointer.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/Services/storage.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.cpp)
**Purpose:** Exposes persistent storage configurations and disk stats to QML components.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/storage.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp)
### External Deps:
- algorithm
- cmath
- qdir.h
- qfile.h
- qfileinfo.h
- qhash.h
- qloggingcategory.h
- qstorageinfo.h
- sys/stat.h
- sys/sysmacros.h

## [shell-upstream/plugin/src/Caelestia/Services/storage.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp)
**Purpose:** Exposes persistent storage configurations and disk stats to QML components.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp)
### External Deps:
- qbytearrayview.h
- qqmlintegration.h
- qqmllist.h
- qvariant.h

## [shell-upstream/plugin/src/Caelestia/Services/tickingservice.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.cpp)
**Purpose:** A recurring service base class that updates its telemetry at configurable intervals.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Config/config.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp)
- [shell-upstream/plugin/src/Caelestia/Config/dashboardconfig.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/dashboardconfig.hpp)
- [shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/tickingservice.hpp)
**Purpose:** A recurring service base class that updates its telemetry at configurable intervals.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/service.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/service.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Services/usagefmt.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.cpp)
**Purpose:** Format utilities for CPU, RAM, and disk utilization data.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp)
### External Deps:
- None

## [shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/usagefmt.hpp)
**Purpose:** Format utilities for CPU, RAM, and disk utilization data.

### Internal Deps:
- None
### External Deps:
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/appdb.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/appdb.cpp)
**Purpose:** Manages the desktop applications database, including indexing, search, and launch frequencies.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/appdb.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/appdb.hpp)
### External Deps:
- qloggingcategory.h
- qsqldatabase.h
- qsqlquery.h
- quuid.h

## [shell-upstream/plugin/src/Caelestia/appdb.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/appdb.hpp)
**Purpose:** Manages the desktop applications database, including indexing, search, and launch frequencies.

### Internal Deps:
- None
### External Deps:
- qhash.h
- qobject.h
- qqmlintegration.h
- qqmllist.h
- qregularexpression.h
- qtimer.h

## [shell-upstream/plugin/src/Caelestia/cutils.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.cpp)
**Purpose:** Provides low-level, high-performance system utility functions (filesystem tasks, screenshotting, math) to QML.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
### External Deps:
- QtConcurrent/qtconcurrentrun.h
- QtQuick/qquickitemgrabresult.h
- QtQuick/qquickwindow.h
- qdir.h
- qfileinfo.h
- qfuturewatcher.h
- qloggingcategory.h
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/cutils.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/cutils.hpp)
**Purpose:** Provides low-level, high-performance system utility functions (filesystem tasks, screenshotting, math) to QML.

### Internal Deps:
- None
### External Deps:
- QtQuick/qquickitem.h
- qobject.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/imageanalyser.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/imageanalyser.cpp)
**Purpose:** Analyzes images (such as desktop backgrounds) to extract dominant colors and brightness levels.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/imageanalyser.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/imageanalyser.hpp)
### External Deps:
- QtConcurrent/qtconcurrentrun.h
- QtQuick/qquickitemgrabresult.h
- qfuturewatcher.h
- qimage.h
- qloggingcategory.h
- qquickwindow.h

## [shell-upstream/plugin/src/Caelestia/imageanalyser.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/imageanalyser.hpp)
**Purpose:** Analyzes images (such as desktop backgrounds) to extract dominant colors and brightness levels.

### Internal Deps:
- None
### External Deps:
- QtQuick/qquickitem.h
- qfuture.h
- qfuturewatcher.h
- qobject.h
- qpointer.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/qalculator.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/qalculator.cpp)
**Purpose:** Integrates with Qalculate library to evaluate math expressions and unit conversions.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/qalculator.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/qalculator.hpp)
### External Deps:
- libqalculate/qalculate.h
- qtconcurrentrun.h

## [shell-upstream/plugin/src/Caelestia/qalculator.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/qalculator.hpp)
**Purpose:** Integrates with Qalculate library to evaluate math expressions and unit conversions.

### Internal Deps:
- None
### External Deps:
- qmutex.h
- qobject.h
- qqmlintegration.h

## [shell-upstream/plugin/src/Caelestia/requests.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/requests.cpp)
**Purpose:** Handles asynchronous HTTP network requests from QML components.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/requests.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/requests.hpp)
### External Deps:
- qjsvalueiterator.h
- qloggingcategory.h
- qnetworkaccessmanager.h
- qnetworkcookiejar.h
- qnetworkreply.h
- qnetworkrequest.h

## [shell-upstream/plugin/src/Caelestia/requests.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/requests.hpp)
**Purpose:** Handles asynchronous HTTP network requests from QML components.

### Internal Deps:
- None
### External Deps:
- qnetworkaccessmanager.h
- qobject.h
- qqmlengine.h

## [shell-upstream/plugin/src/Caelestia/toaster.cpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.cpp)
**Purpose:** Provides system notification toast services and manages active toast instances.

### Internal Deps:
- [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
### External Deps:
- qlogging.h
- qtimer.h

## [shell-upstream/plugin/src/Caelestia/toaster.hpp](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/toaster.hpp)
**Purpose:** Provides system notification toast services and manages active toast instances.

### Internal Deps:
- None
### External Deps:
- qobject.h
- qqmlintegration.h
- qqmllist.h
- qset.h
