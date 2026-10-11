# Components Sub-Module

This directory contains high-performance, custom QQuickItem components that extend standard QML capabilities.

## Core Classes

* **[LazyListView](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/lazylistview.hpp):** A custom virtualizing list view. Rather than instantiating the entire model's visual delegates, it tracks a visible viewport area (expanded by a `cacheBuffer`) and instantiates delegates only when they intersect this zone.
  * **Asynchronous Allocation:** Spreads delegate allocation (`ASYNC_BATCH_CREATE = 2`) and disposal (`ASYNC_BATCH_DESTROY = 4`) over multiple animation frames, preventing GUI thread lockups.
  * **Height Cache:** Caches item heights. Supports dynamic height updates via the `LazyListViewAttached` properties attached to delegates.
* **[WavyLine](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/wavyline.hpp):** Renders dynamic wave lines using the Qt Quick Scene Graph geometry nodes (`QSGGeometry`).
* **[ButtonRow](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Components/buttonrow.hpp):** A layout item managing columns and grid structures.
