pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Caelestia.Components
import Caelestia.Config
import qs.components
import qs.components.controls
import qs.components.images
import qs.services
import qs.modules.nexus.common

PageBase {
    id: root

    readonly property list<MenuItem> extractorItems: [
        MenuItem { text: qsTr("Legacy") },
        MenuItem { text: qsTr("Material Color Utilities") }
    ]
    readonly property list<string> extractorValues: ["legacy", "material"]
    readonly property list<MenuItem> modeItems: [
        MenuItem { text: qsTr("Auto") },
        MenuItem { text: qsTr("Light") },
        MenuItem { text: qsTr("Dark") }
    ]
    readonly property list<string> modeValues: ["auto", "light", "dark"]
    readonly property list<MenuItem> legacyFlavourItems: [
        MenuItem { text: qsTr("Standard") },
        MenuItem { text: qsTr("High") }
    ]
    readonly property list<string> legacyFlavourValues: ["default", "hard"]
    readonly property list<MenuItem> materialVariantItems: [
        MenuItem { text: qsTr("Tonal spot") },
        MenuItem { text: qsTr("Vibrant") },
        MenuItem { text: qsTr("Expressive") },
        MenuItem { text: qsTr("Fidelity") },
        MenuItem { text: qsTr("Fruit salad") },
        MenuItem { text: qsTr("Monochrome") },
        MenuItem { text: qsTr("Neutral") },
        MenuItem { text: qsTr("Rainbow") },
        MenuItem { text: qsTr("Content") }
    ]
    readonly property list<string> materialVariantValues: ["tonalspot", "vibrant", "expressive", "fidelity", "fruitsalad", "monochrome", "neutral", "rainbow", "content"]
    function itemFor(values: list<string>, items: list<MenuItem>, value: string): MenuItem {
        return items[Math.max(0, values.indexOf(value))];
    }

    function refreshDynamicScheme(): void {
        GlobalConfig.saveNow();
        Quickshell.execDetached([Quickshell.env("CAELESTIA_CLI") || "caelestia", "scheme", "refresh"]);
    }

    title: qsTr("Wallpaper & style")

    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        width: root.cappedWidth
        spacing: Tokens.spacing.large

        StyledClippingRect {
            id: wallWrapper

            Layout.alignment: Qt.AlignHCenter
            implicitWidth: {
                const screen = root.nState.screen;
                return implicitHeight / screen.height * screen.width;
            }
            implicitHeight: {
                const screen = root.nState.screen;
                const cWidth = root.cappedWidth;
                return Math.min(Math.round(cWidth * 0.4), cWidth / screen.width * screen.height);
            }

            color: Colours.tPalette.m3surfaceContainer
            radius: Tokens.rounding.large

            Loader {
                anchors.centerIn: parent
                opacity: Config.background.wallpaperEnabled ? 0 : 1
                active: opacity > 0

                sourceComponent: ColumnLayout {
                    spacing: Tokens.spacing.extraSmall

                    MaterialIcon {
                        Layout.alignment: Qt.AlignHCenter
                        text: "hide_image"
                        color: Colours.palette.m3onSurfaceVariant
                        fontStyle: Tokens.font.icon.extraLarge
                    }

                    StyledText {
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("Wallpaper disabled")
                        color: Colours.palette.m3onSurfaceVariant
                        font: Tokens.font.body.large
                    }
                }

                Behavior on opacity {
                    Anim {
                        type: Anim.SlowEffects
                    }
                }
            }

            Item {
                anchors.fill: parent
                opacity: Config.background.wallpaperEnabled ? 1 : 0

                Behavior on opacity {
                    Anim {
                        type: Anim.SlowEffects
                    }
                }

                Loader {
                    id: wallIndicatorLoader

                    anchors.centerIn: parent

                    opacity: 0
                    active: opacity > 0

                    sourceComponent: StyledRect {
                        implicitWidth: wallLoadingIndicator.implicitSize + Tokens.padding.largeIncreased * 2
                        implicitHeight: wallLoadingIndicator.implicitSize + Tokens.padding.largeIncreased * 2

                        color: Colours.palette.m3primaryContainer
                        radius: Tokens.rounding.full

                        LoadingIndicator {
                            id: wallLoadingIndicator

                            anchors.centerIn: parent
                            containsIcon: true
                            implicitSize: Math.min(wallWrapper.implicitWidth, wallWrapper.implicitHeight) * 0.4
                        }
                    }

                    Behavior on opacity {
                        Anim {
                            type: Anim.DefaultEffects
                        }
                    }
                }

                Timer {
                    id: wallLoadDebounceTimer

                    interval: 100
                    onTriggered: {
                        if (wallImg.status !== Image.Ready)
                            wallIndicatorLoader.opacity = 1;
                    }
                }

                FadeImage {
                    id: wallImg

                    anchors.fill: parent
                    source: Wallpapers.current
                    preventInit: wallIndicatorLoader.opacity > 0
                    fadeOutAnim: Anim.DefaultEffects
                    fadeInAnim: Anim.SlowEffects

                    onSourceChanged: wallLoadDebounceTimer.restart()

                    onStatusChanged: {
                        if (status === Image.Ready) {
                            wallLoadDebounceTimer.stop();
                            wallIndicatorLoader.opacity = 0;
                        }
                    }
                }
            }
        }

        ButtonRow {
            Layout.alignment: Qt.AlignHCenter
            spacing: Tokens.spacing.small

            IconTextButton {
                icon: "wallpaper"
                text: qsTr("Wallpapers")
                font: Tokens.font.body.large
                isRound: true
                shapeMorph: true
                type: IconTextButton.Tonal
                horizontalPadding: Tokens.padding.extraLarge
                verticalPadding: Tokens.padding.medium
                disabled: !Config.background.wallpaperEnabled
                onClicked: root.nState.openSubPage(1) // Wallpaper page
            }

            IconTextButton {
                icon: "palette"
                text: qsTr("Colours")
                font: Tokens.font.body.large
                isRound: true
                shapeMorph: true
                type: IconTextButton.Tonal
                horizontalPadding: Tokens.padding.extraLarge
                verticalPadding: Tokens.padding.medium
                onClicked: root.nState.openSubPage(3) // Colours page
            }

            IconTextButton {
                icon: "refresh"
                text: qsTr("Refresh scheme")
                font: Tokens.font.body.large
                isRound: true
                shapeMorph: true
                type: IconTextButton.Tonal
                horizontalPadding: Tokens.padding.extraLarge
                verticalPadding: Tokens.padding.medium
                onClicked: root.refreshDynamicScheme()
            }
        }

        ToggleRow {
            first: true
            text: qsTr("Display wallpaper")
            checked: Config.background.wallpaperEnabled
            onToggled: GlobalConfig.background.wallpaperEnabled = checked
        }

        ToggleRow {
            Layout.topMargin: Tokens.spacing.extraSmall / 2 - parent.spacing

            last: true
            text: qsTr("Transparency")
            subtext: qsTr("Base %1, layers %2").arg(Colours.transparency.base).arg(Colours.transparency.layers)
            checked: Colours.transparency.enabled
            onToggled: GlobalConfig.appearance.transparency.enabled = checked
        }

        SectionHeader {
            text: qsTr("Dynamic colour scheme")
        }

        SelectRow {
            first: true
            label: qsTr("Extractor")
            subtext: qsTr("Colour model used for dynamic schemes")
            menuItems: root.extractorItems
            active: root.itemFor(root.extractorValues, root.extractorItems, GlobalConfig.services.dynamicSchemeBackend)
            onSelected: item => {
                GlobalConfig.services.dynamicSchemeBackend = root.extractorValues[root.extractorItems.indexOf(item)];
                root.refreshDynamicScheme();
            }
        }

        SelectRow {
            Layout.fillWidth: true
            Layout.topMargin: GlobalConfig.services.dynamicSchemeBackend === "legacy" ? -parent.spacing : 0
            Layout.preferredHeight: visible ? implicitHeight : 0
            visible: GlobalConfig.services.dynamicSchemeBackend === "legacy"
            label: qsTr("Surface contrast")
            subtext: qsTr("High darkens generated surfaces")
            menuItems: root.legacyFlavourItems
            active: root.itemFor(root.legacyFlavourValues, root.legacyFlavourItems, GlobalConfig.services.dynamicSchemeLegacyFlavour)
            onSelected: item => {
                GlobalConfig.services.dynamicSchemeLegacyFlavour = root.legacyFlavourValues[root.legacyFlavourItems.indexOf(item)];
                root.refreshDynamicScheme();
            }
        }

        ToggleRow {
            Layout.fillWidth: true
            Layout.topMargin: visible ? -parent.spacing : 0
            Layout.preferredHeight: visible ? implicitHeight : 0
            visible: GlobalConfig.services.dynamicSchemeBackend === "legacy"
            last: true
            text: qsTr("Dark theme")
            checked: !Colours.light
            onToggled: Colours.setMode(checked ? "dark" : "light")
        }

        SelectRow {
            Layout.topMargin: visible ? -parent.spacing : 0
            Layout.preferredHeight: visible ? implicitHeight : 0
            visible: GlobalConfig.services.dynamicSchemeBackend === "material"
            label: qsTr("Theme mode")
            subtext: qsTr("Auto follows the wallpaper; light and dark are fixed")
            menuOnTop: true
            menuItems: root.modeItems
            active: root.itemFor(root.modeValues, root.modeItems, GlobalConfig.services.dynamicSchemeMode)
            onSelected: item => {
                GlobalConfig.services.dynamicSchemeMode = root.modeValues[root.modeItems.indexOf(item)];
                root.refreshDynamicScheme();
            }
        }

        SelectRow {
            Layout.topMargin: visible ? -parent.spacing : 0
            Layout.preferredHeight: visible ? implicitHeight : 0
            visible: GlobalConfig.services.dynamicSchemeBackend === "material"
            label: qsTr("Material variant")
            subtext: qsTr("Palette strategy for the Material extractor")
            menuItems: root.materialVariantItems
            active: root.itemFor(root.materialVariantValues, root.materialVariantItems, GlobalConfig.services.materialSchemeVariant)
            onSelected: item => {
                GlobalConfig.services.materialSchemeVariant = root.materialVariantValues[root.materialVariantItems.indexOf(item)];
                root.refreshDynamicScheme();
            }
        }

        StepperRow {
            Layout.topMargin: visible ? -parent.spacing : 0
            Layout.preferredHeight: visible ? implicitHeight : 0
            visible: GlobalConfig.services.dynamicSchemeBackend === "material"
            last: true
            label: qsTr("Material contrast")
            subtext: qsTr("Contrast adjustment from -1.0 to 1.0")
            value: GlobalConfig.services.materialSchemeContrastLevel ?? 0
            from: -1
            to: 1
            stepSize: 0.01
            onMoved: value => {
                GlobalConfig.services.materialSchemeContrastLevel = value;
                root.refreshDynamicScheme();
            }
        }
    }
}
