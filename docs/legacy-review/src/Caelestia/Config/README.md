# Config Sub-Module

This directory contains the classes and macros that power the Caelestia Shell configuration system.

## Core Architecture

* **[RootConfig](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/rootconfig.hpp) & [ConfigObject](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/configobject.hpp):** Base structures for configuration models. They provide automatic property changed signal propagation, sub-object serialization, and loading/saving capabilities to local JSON configuration files.
* **[GlobalConfig](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Config/config.hpp):** The main QML configuration singleton. It aggregates sub-configs (like `AppearanceConfig`, `BarConfig`, `LauncherConfig`, etc.) using macros:
  * `CONFIG_PROPERTY`: Defines configuration properties (like font sizes, colors, toggle states) with defaults.
  * `CONFIG_SUBOBJECT`: Integrates child categories.
* **Screen Overrides:** `GlobalConfig::forScreen(QString)` resolves and instantiates screen-specific options if configured, falling back to global configuration settings. This supports independent panels, widgets, or themes for multi-monitor setups.
