# Images Sub-Module

This directory contains classes for asynchronous image loading, cropping, scaling, and caching.

## Core Classes

* **[ImageCacher](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/imagecacher.hpp):** Coordinates scaling and cropping jobs in background worker threads. Once a job completes, it saves the optimized image to a designated disk cache path to speed up future requests. It tracks in-flight requests using a mutex-protected set `m_inflight`.
* **[CachingImageProvider](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/cachingimageprovider.hpp):** A `QQuickAsyncImageProvider` implementation. When QML requests an image using the `image://cached/...` URL scheme, the provider queries `ImageCacher`. If the cached image is not ready yet, it handles the generation asynchronously without blocking the QML rendering engine.
* **[IUtils](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Images/iutils.hpp):** General image handling utilities.
