pragma ComponentBehavior: Bound

import qs.components
import Caelestia.Config
import Quickshell
import QtQuick

Item {
    id: root

    required property ShellScreen screen
    required property ScreenState screenState
    readonly property real maxHeight: screen.height - Config.border.thickness * 2 - Tokens.spacing.large
    readonly property real targetHeight: Math.min(maxHeight, content.implicitHeight)

    visible: height > 0
    implicitWidth: content.implicitWidth
    implicitHeight: 0

    states: State {
        name: "visible"
        when: root.screenState.smcMixer

        PropertyChanges {
            root.implicitHeight: root.targetHeight
        }
    }

    transitions: [
        Transition {
            from: ""
            to: "visible"

            Anim {
                target: root
                property: "implicitHeight"
                type: Anim.Emphasized
            }
        },
        Transition {
            from: "visible"
            to: ""

            Anim {
                target: root
                property: "implicitHeight"
                type: Anim.Emphasized
            }
        }
    ]

    Loader {
        id: content

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Component.onCompleted: active = Qt.binding(() => root.screenState.smcMixer || root.visible)

        sourceComponent: Content {
            maxHeight: root.maxHeight
            screenState: root.screenState
        }
    }
}
