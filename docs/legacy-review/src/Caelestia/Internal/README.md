# Internal Sub-Module

This directory contains low-level integrations for the Linux desktop session, window management, and custom rendering elements.

## Core Integrations

### Window Manager Integration (Hyprland IPC)
* **[HyprExtras](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprextras.hpp):** Communicates with the Hyprland Window Manager via its local UNIX domain socket. Exposes commands (`message`, `batchMessage`) to QML, listens to window/workspace events asynchronously, and queries active workspace properties.
* **[HyprDevices](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/hyprdevices.hpp):** Focuses on parsing and tracking active input devices (keyboards, tablets, mice) and window variables.

### Desktop Session Management (systemd-logind)
* **[LogindManager](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/logindmanager.hpp):** Connects to `org.freedesktop.login1` via DBus. It monitors and signals session changes (e.g. system suspension, session lock/unlock events) and triggers system power actions (suspend, reboot, shutdown).

### Telemetry Graph Items
* **[SparklineItem](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/sparklineitem.hpp):** A custom geometry node that draws sparkline indicators (line charts) of historical resource metrics.
* **[CircularIndicatorManager](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/circularindicatormanager.hpp) & [LinearIndicatorManager](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/linearindicatormanager.hpp):** Manages rendering paths for circular charts and bar charts.
* **[VisualiserBars](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Internal/visualiserbars.hpp):** Exposes customizable equalizing bars for audio spectrum visualization.
