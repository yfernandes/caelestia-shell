//@ pragma DefaultEnv QS_NO_RELOAD_POPUP=1

import qs.components
import qs.components.containers
import qs.custom_modules.smcmixer

import Quickshell
import QtQml

ShellRoot {
    StyledWindow {
        name: "smcmixer-dev"
        implicitWidth: 1500
        implicitHeight: 900
        Content {
            maxHeight: 900
            screenState: QtObject {
                smcMixer: true
            }
        }
    }
}
