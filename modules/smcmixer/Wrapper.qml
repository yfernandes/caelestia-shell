pragma ComponentBehavior: Bound

import qs.components
import qs.config
import Quickshell
import QtQuick

Item {
    id: root

    required property ShellScreen screen
    required property PersistentProperties visibilities
    readonly property real maxHeight: screen.height - Config.border.thickness * 2 - Appearance.spacing.large
    readonly property real targetHeight: Math.min(maxHeight, content.implicitHeight)

    visible: height > 0
    implicitWidth: content.implicitWidth
    implicitHeight: 0

    states: State {
        name: "visible"
        when: root.visibilities.smcMixer

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
                duration: Appearance.anim.durations.expressiveDefaultSpatial
                easing.bezierCurve: Appearance.anim.curves.expressiveDefaultSpatial
            }
        },
        Transition {
            from: "visible"
            to: ""

            Anim {
                target: root
                property: "implicitHeight"
                easing.bezierCurve: Appearance.anim.curves.emphasized
            }
        }
    ]

    Loader {
        id: content

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Component.onCompleted: active = Qt.binding(() => root.visibilities.smcMixer || root.visible)

        sourceComponent: Content {
            maxHeight: root.maxHeight
            visibilities: root.visibilities
        }
    }
}
