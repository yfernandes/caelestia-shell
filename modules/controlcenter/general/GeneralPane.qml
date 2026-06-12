pragma ComponentBehavior: Bound

import ".."
import "../components"
import qs.components
import qs.components.controls
import qs.components.containers
import qs.components.effects
import qs.config
import qs.services
import Quickshell
import Quickshell.Widgets
import QtQuick
import QtQuick.Layouts

Item {
    id: root

    required property Session session

    property int hoverDelay: Config.general.hoverDelay ?? 150
    property bool useFahrenheit: Config.services.useFahrenheit ?? false
    property bool useTwelveHourClock: Config.services.useTwelveHourClock ?? false
    property bool idleInhibitWhenAudio: Config.general.idle.inhibitWhenAudio ?? true
    property bool idleLockBeforeSleep: Config.general.idle.lockBeforeSleep ?? true

    anchors.fill: parent

    function saveConfig(): void {
        Config.general.hoverDelay = root.hoverDelay;
        Config.general.idle.inhibitWhenAudio = root.idleInhibitWhenAudio;
        Config.general.idle.lockBeforeSleep = root.idleLockBeforeSleep;
        Config.services.useFahrenheit = root.useFahrenheit;
        Config.services.useTwelveHourClock = root.useTwelveHourClock;
        Config.save();
    }

    ClippingRectangle {
        anchors.fill: parent
        anchors.margins: Appearance.padding.normal
        anchors.leftMargin: 0
        anchors.rightMargin: Appearance.padding.normal

        radius: border.innerRadius
        color: "transparent"

        StyledFlickable {
            id: flickable

            anchors.fill: parent
            anchors.margins: Appearance.padding.large
            anchors.rightMargin: Appearance.padding.large + Appearance.padding.normal
            flickableDirection: Flickable.VerticalFlick
            contentHeight: contentLayout.height

            StyledScrollBar.vertical: StyledScrollBar {
                flickable: flickable
            }

            ColumnLayout {
                id: contentLayout

                anchors.left: parent.left
                anchors.right: parent.right
                spacing: Appearance.spacing.normal

                StyledText {
                    text: qsTr("General")
                    font.pointSize: Appearance.font.size.large
                    font.weight: 500
                }

                SectionHeader {
                    title: qsTr("Interaction")
                    description: qsTr("Pointer and drawer behaviour")
                }

                SectionContainer {
                    SliderInput {
                        label: qsTr("Hover delay")
                        value: root.hoverDelay
                        from: 0
                        to: 1000
                        stepSize: 10
                        suffix: "ms"
                        decimals: 0
                        validator: IntValidator {
                            bottom: 0
                            top: 1000
                        }
                        onValueModified: newValue => {
                            const rounded = Math.round(newValue);
                            if (root.hoverDelay !== rounded) {
                                root.hoverDelay = rounded;
                                root.saveConfig();
                            }
                        }
                    }
                }

                SectionHeader {
                    title: qsTr("Idle")
                    description: qsTr("Sleep and lock behaviour")
                }

                SectionContainer {
                    LabeledSwitch {
                        label: qsTr("Inhibit while media plays")
                        checked: root.idleInhibitWhenAudio
                        onToggled: {
                            root.idleInhibitWhenAudio = checked;
                            root.saveConfig();
                        }
                    }

                    LabeledSwitch {
                        label: qsTr("Lock before sleep")
                        checked: root.idleLockBeforeSleep
                        onToggled: {
                            root.idleLockBeforeSleep = checked;
                            root.saveConfig();
                        }
                    }
                }

                SectionHeader {
                    title: qsTr("Locale")
                    description: qsTr("Units and time display")
                }

                SectionContainer {
                    LabeledSwitch {
                        label: qsTr("Use Fahrenheit")
                        checked: root.useFahrenheit
                        onToggled: {
                            root.useFahrenheit = checked;
                            root.saveConfig();
                        }
                    }

                    LabeledSwitch {
                        label: qsTr("Use 12-hour clock")
                        checked: root.useTwelveHourClock
                        onToggled: {
                            root.useTwelveHourClock = checked;
                            root.saveConfig();
                        }
                    }
                }
            }
        }
    }

    InnerBorder {
        id: border
        leftThickness: 0
        rightThickness: Appearance.padding.normal
    }

    component LabeledSwitch: RowLayout {
        property string label: ""
        property alias checked: toggle.checked
        signal toggled()

        Layout.fillWidth: true
        spacing: Appearance.spacing.normal

        StyledText {
            Layout.fillWidth: true
            text: parent.label
            font.pointSize: Appearance.font.size.normal
            elide: Text.ElideRight
        }

        StyledSwitch {
            id: toggle
            onToggled: parent.toggled()
        }
    }
}
