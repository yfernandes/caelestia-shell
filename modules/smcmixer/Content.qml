pragma ComponentBehavior: Bound

import qs.components
import qs.components.controls
import qs.services
import qs.config
import Quickshell
import QtQuick
import QtQuick.Layouts

StyledRect {
    id: root

    required property PersistentProperties visibilities
    property real maxHeight: 900
    property int selectedChannel: 0
    property int pickerChannel: -1
    property int navSetting: 0

    readonly property bool bindMode: pickerChannel >= 0
    readonly property int panelWidth: 1180

    implicitWidth: Math.min(panelWidth, 1500)
    implicitHeight: Math.min(maxHeight, shell.implicitHeight + Appearance.padding.large * 2)
    radius: Appearance.rounding.large
    color: Colours.transparency.enabled ? Colours.layer(Colours.palette.m3surfaceContainer, 2) : Colours.palette.m3surfaceContainerHigh
    clip: true

    function clamp(value: real): real {
        return Math.max(0, Math.min(1, value ?? 0));
    }

    function streamsForKind(kind: int): var {
        const blocked = {};
        for (let i = 0; i < SmcMixer.channels.length; i++) {
            const channel = SmcMixer.channels[i] ?? {};
            if (i !== pickerChannel && channel.user_bound && channel.stream_id !== undefined)
                blocked[channel.stream_id] = true;
        }
        return SmcMixer.streams.filter(stream => (stream.kind ?? 0) === kind && !blocked[stream.id]);
    }

    function volumeText(value: real): string {
        return `${Math.round(clamp(value) * 100)}%`;
    }

    function selectedChannelLabel(): string {
        return qsTr("CH%1").arg(selectedChannel + 1);
    }

    function openBind(index: int): void {
        selectedChannel = index;
        pickerChannel = pickerChannel === index ? -1 : index;
    }

    function close(): void {
        visibilities.smcMixer = false;
    }

    ColumnLayout {
        id: shell

        anchors.fill: parent
        anchors.margins: Appearance.padding.large
        spacing: Appearance.spacing.normal

        StatusBar {
            Layout.fillWidth: true
        }

        MixerSurface {
            Layout.fillWidth: true
            Layout.preferredHeight: 360
            Layout.maximumHeight: 420
        }

        BindPanel {
            Layout.fillWidth: true
            Layout.preferredHeight: root.bindMode ? 190 : 0
            visible: root.bindMode
        }
    }

    component StatusBar: StyledRect {
        id: bar

        implicitHeight: 46
        radius: Appearance.rounding.normal
        color: Colours.palette.m3surfaceContainer

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: Appearance.padding.normal
            anchors.rightMargin: Appearance.padding.normal
            spacing: Appearance.spacing.normal

            StatusPill {
                text: SmcMixer.ready ? qsTr("Main") : qsTr("Waiting")
                icon: "view_column"
                active: SmcMixer.ready
            }

            StyledText {
                text: qsTr("%1 selected").arg(root.selectedChannelLabel())
                color: Colours.palette.m3onSurfaceVariant
                font.weight: 600
            }

            StyledRect {
                Layout.preferredWidth: 1
                Layout.fillHeight: true
                Layout.topMargin: Appearance.padding.smaller
                Layout.bottomMargin: Appearance.padding.smaller
                color: Colours.palette.m3outlineVariant
            }

            Repeater {
                model: [
                    {
                        name: qsTr("stream"),
                        icon: "graphic_eq"
                    },
                    {
                        name: qsTr("mute"),
                        icon: "volume_off"
                    },
                    {
                        name: qsTr("solo"),
                        icon: "filter_center_focus"
                    }
                ]

                StatusTab {
                    required property int index
                    required property var modelData

                    text: modelData.name
                    icon: modelData.icon
                    active: root.navSetting === index
                    onClicked: root.navSetting = index
                }
            }

            Item {
                Layout.fillWidth: true
            }

            StyledText {
                text: SmcMixer.deviceConnected ? qsTr("MIDI linked") : qsTr("No MIDI device")
                color: SmcMixer.deviceConnected ? Colours.palette.m3onSurfaceVariant : Colours.palette.m3error
                font.weight: 600
            }

            StyledText {
                text: root.bindMode ? qsTr("enter bind  u unbind  esc close") : qsTr("enter bind  u unbind  q close")
                color: Colours.palette.m3onSurfaceVariant
            }

            IconButton {
                icon: "refresh"
                type: IconButton.Tonal
                onClicked: SmcMixer.reconnect()
            }

            IconButton {
                icon: "close"
                type: IconButton.Text
                onClicked: root.close()
            }
        }
    }

    component MixerSurface: StyledRect {
        id: surface

        radius: Appearance.rounding.normal
        color: Colours.tPalette.m3surfaceContainer

        RowLayout {
            anchors.fill: parent
            anchors.margins: Appearance.padding.normal
            spacing: Appearance.spacing.small

            Repeater {
                model: 8

                ChannelStrip {
                    required property int index

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    channelIndex: index
                    selected: root.selectedChannel === index
                    binding: root.pickerChannel === index
                    onActivated: root.selectedChannel = index
                    onPickRequested: root.openBind(index)
                }
            }
        }
    }

    component ChannelStrip: StyledRect {
        id: strip

        required property int channelIndex
        property bool selected
        property bool binding
        readonly property var channel: SmcMixer.channels[channelIndex] ?? {}
        readonly property var boundStream: SmcMixer.streamForChannel(channel)
        readonly property bool bound: channel.stream_id !== undefined || !!channel.name
        readonly property bool muted: !!channel.mute || !!channel.solo_muted
        readonly property bool crossfader: !!channel.cross_sink_a_name || !!channel.cross_sink_b_name

        signal activated
        signal pickRequested

        radius: Appearance.rounding.small
        color: strip.binding ? Colours.palette.m3tertiaryContainer : strip.selected ? Colours.palette.m3secondaryContainer : Colours.palette.m3surfaceContainerHigh
        border.width: strip.selected ? 2 : 0
        border.color: Colours.palette.m3primary

        StateLayer {
            color: Colours.palette.m3onSurface

            function onClicked(): void {
                strip.activated();
            }
        }

        RowLayout {
            anchors.fill: parent
            anchors.margins: Appearance.padding.small
            spacing: Appearance.spacing.small

            ColumnLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: Appearance.spacing.small

                RowLayout {
                    Layout.fillWidth: true
                    spacing: Appearance.spacing.smaller

                    StyledRect {
                        implicitWidth: 28
                        implicitHeight: 24
                        radius: Appearance.rounding.small
                        color: Colours.palette.m3primaryContainer

                        StyledText {
                            anchors.centerIn: parent
                            text: strip.channelIndex + 1
                            color: Colours.palette.m3onPrimaryContainer
                            font.weight: 800
                        }
                    }

                    Badge {
                        Layout.fillWidth: true
                        text: SmcMixer.kindLabel(strip.channel.kind ?? 0)
                    }
                }

                StyledText {
                    Layout.fillWidth: true
                    text: SmcMixer.channelLabel(strip.channelIndex)
                    color: strip.bound ? Colours.palette.m3onSurface : Colours.palette.m3onSurfaceVariant
                    font.weight: 700
                    elide: Text.ElideRight
                    maximumLineCount: 1
                }

                ColumnLayout {
                    Layout.fillWidth: true
                    spacing: 0

                    StyledText {
                        Layout.fillWidth: true
                        text: strip.boundStream?.app_name || strip.boundStream?.bind_key || (strip.bound ? qsTr("Active") : qsTr("Unbound"))
                        color: Colours.palette.m3onSurfaceVariant
                        elide: Text.ElideRight
                    }

                    StyledText {
                        Layout.fillWidth: true
                        text: {
                            const subtitle = SmcMixer.streamSubtitle(strip.boundStream);
                            if (subtitle)
                                return subtitle;
                            if (strip.crossfader)
                                return `${strip.channel.cross_sink_a_name || "-"} / ${strip.channel.cross_sink_b_name || "-"}`;
                            return strip.bound ? qsTr("No metadata") : qsTr("Offline");
                        }
                        color: strip.muted ? Colours.palette.m3error : Colours.palette.m3onSurfaceVariant
                        elide: Text.ElideRight
                        maximumLineCount: 2
                    }
                }

                KnobSection {
                    Layout.fillWidth: true
                    value: strip.channel.knob ?? 0
                    crossfader: strip.crossfader
                    labelA: strip.channel.cross_sink_a_name ?? ""
                    labelB: strip.channel.cross_sink_b_name ?? ""
                }

                FaderSection {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    volume: strip.channel.actual_volume ?? 0
                    fader: strip.channel.fader_pos ?? 0
                    synced: !!strip.channel.synced
                    muted: strip.muted
                }
            }

            ColumnLayout {
                Layout.fillHeight: true
                Layout.preferredWidth: 34
                spacing: Appearance.spacing.small

                ToolButton {
                    icon: "link"
                    active: strip.binding
                    onClicked: strip.pickRequested()
                }

                Item {
                    Layout.fillHeight: true
                }

                ToolButton {
                    icon: "volume_off"
                    active: strip.muted
                    onClicked: SmcMixer.toggleMute(strip.channelIndex)
                }

                ToolButton {
                    icon: "filter_center_focus"
                    active: !!strip.channel.solo
                    onClicked: SmcMixer.toggleSolo(strip.channelIndex)
                }

                ToolButton {
                    icon: "radio_button_checked"
                    active: !!strip.channel.rec || !!strip.channel.advanced
                    commandDisabled: true
                }

                ToolButton {
                    icon: "stop"
                    active: !!strip.channel.stop
                    commandDisabled: true
                }
            }
        }
    }

    component KnobSection: ColumnLayout {
        id: knob

        required property int value
        property bool crossfader
        property string labelA
        property string labelB

        spacing: Appearance.spacing.smaller

        RowLayout {
            Layout.fillWidth: true

            StyledText {
                Layout.fillWidth: true
                text: crossfader ? qsTr("Crossfader") : qsTr("Knob")
                color: Colours.palette.m3onSurfaceVariant
            }

            StyledText {
                text: knob.value
                color: Colours.palette.m3onSurface
                font.weight: 700
            }
        }

        BarMeter {
            Layout.fillWidth: true
            value: knob.value / 127
            fillColour: Colours.palette.m3tertiary
        }

        StyledText {
            Layout.fillWidth: true
            visible: knob.crossfader
            text: `${knob.labelA || "-"} / ${knob.labelB || "-"}`
            color: Colours.palette.m3onSurfaceVariant
            elide: Text.ElideRight
        }
    }

    component FaderSection: ColumnLayout {
        id: fader

        required property real volume
        required property real fader
        property bool synced
        property bool muted

        spacing: Appearance.spacing.smaller

        RowLayout {
            Layout.fillWidth: true

            StyledText {
                Layout.fillWidth: true
                text: qsTr("Volume")
                color: Colours.palette.m3onSurfaceVariant
            }

            StyledText {
                text: root.volumeText(fader.volume)
                color: fader.muted ? Colours.palette.m3error : Colours.palette.m3onSurface
                font.weight: 700
            }
        }

        BarMeter {
            Layout.fillWidth: true
            value: fader.volume
            fillColour: fader.muted ? Colours.palette.m3error : Colours.palette.m3primary
        }

        RowLayout {
            Layout.fillWidth: true

            StyledText {
                Layout.fillWidth: true
                text: fader.synced ? qsTr("Synced") : qsTr("Pickup")
                color: fader.synced ? Colours.palette.m3onSurfaceVariant : Colours.palette.m3error
                font.weight: 600
            }

            StyledText {
                text: root.volumeText(fader.fader)
                color: Colours.palette.m3onSurfaceVariant
            }
        }

        BarMeter {
            Layout.fillWidth: true
            value: fader.fader
            fillColour: Colours.palette.m3secondary
        }
    }

    component BindPanel: StyledRect {
        id: bindPanel

        radius: Appearance.rounding.normal
        color: Colours.palette.m3surfaceContainer
        clip: true

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: Appearance.padding.normal
            spacing: Appearance.spacing.small

            RowLayout {
                Layout.fillWidth: true
                spacing: Appearance.spacing.normal

                StyledText {
                    Layout.fillWidth: true
                    text: qsTr("Bind %1").arg(root.selectedChannelLabel())
                    color: Colours.palette.m3onSurface
                    font.weight: 700
                }

                TextButton {
                    text: qsTr("Unbind")
                    type: TextButton.Text
                    onClicked: {
                        SmcMixer.unbind(root.pickerChannel);
                        root.pickerChannel = -1;
                    }
                }
            }

            Flickable {
                id: streamFlick

                Layout.fillWidth: true
                Layout.fillHeight: true
                contentHeight: streamColumns.implicitHeight
                clip: true

                RowLayout {
                    id: streamColumns

                    width: streamFlick.width
                    spacing: Appearance.spacing.normal

                    Repeater {
                        model: [0, 1, 2]

                        ColumnLayout {
                            required property int modelData
                            readonly property var groupStreams: root.streamsForKind(modelData)

                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignTop
                            spacing: Appearance.spacing.small

                            StyledText {
                                text: SmcMixer.kindLabel(modelData)
                                color: Colours.palette.m3onSurfaceVariant
                                font.weight: 800
                            }

                            Repeater {
                                model: groupStreams

                                StreamRow {
                                    required property var modelData

                                    Layout.fillWidth: true
                                    stream: modelData
                                    onClicked: {
                                        SmcMixer.bind(root.pickerChannel, modelData);
                                        root.pickerChannel = -1;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    component StreamRow: StyledRect {
        id: row

        required property var stream

        signal clicked

        implicitHeight: 48
        radius: Appearance.rounding.small
        color: Colours.palette.m3surfaceContainerHigh

        StateLayer {
            color: Colours.palette.m3onSurface

            function onClicked(): void {
                row.clicked();
            }
        }

        RowLayout {
            anchors.fill: parent
            anchors.margins: Appearance.padding.small
            spacing: Appearance.spacing.small

            Badge {
                Layout.preferredWidth: 54
                text: SmcMixer.kindLabel(row.stream.kind ?? 0)
            }

            ColumnLayout {
                Layout.fillWidth: true
                spacing: 0

                StyledText {
                    Layout.fillWidth: true
                    text: SmcMixer.displayName(row.stream)
                    color: Colours.palette.m3onSurface
                    font.weight: 700
                    elide: Text.ElideRight
                }

                StyledText {
                    Layout.fillWidth: true
                    text: SmcMixer.streamSubtitle(row.stream)
                    color: Colours.palette.m3onSurfaceVariant
                    elide: Text.ElideRight
                }
            }
        }
    }

    component BarMeter: StyledRect {
        id: meter

        required property real value
        property color fillColour: Colours.palette.m3primary

        implicitHeight: 8
        radius: Appearance.rounding.full
        color: Colours.palette.m3surfaceContainerHighest
        clip: true

        StyledRect {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width * root.clamp(meter.value)
            radius: parent.radius
            color: meter.fillColour
        }
    }

    component Badge: StyledRect {
        id: badge

        required property string text

        implicitHeight: 22
        radius: implicitHeight / 2
        color: Colours.palette.m3tertiaryContainer

        StyledText {
            anchors.centerIn: parent
            text: badge.text
            color: Colours.palette.m3onTertiaryContainer
            font.pointSize: Appearance.font.size.small
            font.weight: 800
            elide: Text.ElideRight
        }
    }

    component StatusPill: StyledRect {
        id: pill

        required property string text
        required property string icon
        property bool active

        implicitWidth: pillRow.implicitWidth + Appearance.padding.normal * 2
        implicitHeight: 30
        radius: implicitHeight / 2
        color: active ? Colours.palette.m3primaryContainer : Colours.palette.m3surfaceContainerHighest

        RowLayout {
            id: pillRow

            anchors.centerIn: parent
            spacing: Appearance.spacing.smaller

            MaterialIcon {
                text: pill.icon
                color: pill.active ? Colours.palette.m3onPrimaryContainer : Colours.palette.m3onSurfaceVariant
                font.pointSize: Appearance.font.size.normal
            }

            StyledText {
                text: pill.text
                color: pill.active ? Colours.palette.m3onPrimaryContainer : Colours.palette.m3onSurfaceVariant
                font.weight: 800
            }
        }
    }

    component StatusTab: StyledRect {
        id: tab

        required property string text
        required property string icon
        property bool active

        signal clicked

        implicitWidth: tabRow.implicitWidth + Appearance.padding.small * 2
        implicitHeight: 30
        radius: Appearance.rounding.small
        color: active ? Colours.palette.m3secondaryContainer : "transparent"

        StateLayer {
            color: tab.active ? Colours.palette.m3onSecondaryContainer : Colours.palette.m3onSurface

            function onClicked(): void {
                tab.clicked();
            }
        }

        RowLayout {
            id: tabRow

            anchors.centerIn: parent
            spacing: Appearance.spacing.smaller

            MaterialIcon {
                text: tab.icon
                color: tab.active ? Colours.palette.m3onSecondaryContainer : Colours.palette.m3onSurfaceVariant
                font.pointSize: Appearance.font.size.normal
            }

            StyledText {
                text: tab.text
                color: tab.active ? Colours.palette.m3onSecondaryContainer : Colours.palette.m3onSurfaceVariant
                font.weight: tab.active ? 800 : 600
            }
        }
    }

    component ToolButton: IconButton {
        id: button

        property bool active
        property bool commandDisabled

        checked: active
        isToggle: true
        type: IconButton.Tonal
        disabled: !SmcMixer.connected || commandDisabled
        padding: Appearance.padding.smaller
    }
}
