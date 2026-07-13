pragma Singleton

import Quickshell

Singleton {
    readonly property var rounding: _cfg.rounding
    readonly property var spacing: _cfg.spacing
    readonly property var padding: _cfg.padding
    readonly property var font: _cfg.font
    readonly property var anim: _cfg.anim
    readonly property var transparency: _cfg.transparency

    AppearanceConfig {
        id: _cfg
    }
}
