pragma ComponentBehavior: Bound

import qs.components
import qs.components.controls
import qs.services
import Caelestia.Config
import QtQuick
import QtQuick.Layouts

// Isolated SMC Mixer panel.
//
// Data flows in via properties; commands flow out via signals.
// This file has no knowledge of the SmcMixer service or any host shell API.
StyledRect {
    id: root

    // ── Data inputs ──────────────────────────────────────────────────────────
    property var channels: []
    property var streams: []
    property bool ready: false
    property bool connected: false
    property bool deviceConnected: true
    property real maxHeight: 900

    // ── Helper function inputs ────────────────────────────────────────────────
    // Provided by the host adapter so Panel never calls host singletons directly.
    property var fnChannelLabel: function(idx) { return "CH" + (idx + 1); }
    property var fnStreamSubtitle: function(_stream) { return ""; }
    property var fnKindLabel: function(_kind) { return ""; }
    property var fnDisplayName: function(_stream) { return ""; }
    property var fnStreamForChannel: function(_ch) { return null; }

    // ── Command outputs ───────────────────────────────────────────────────────
    signal requestBind(int ch, var stream)
    signal requestUnbind(int ch)
    signal requestToggleMute(int ch)
    signal requestToggleSolo(int ch)
    signal requestReconnect()
    signal requestClose()

    // ── Internal UI state ─────────────────────────────────────────────────────
    property int selectedChannel: 0
    property int pickerChannel: -1
    property int navSetting: 0

    readonly property bool bindMode: pickerChannel >= 0
    readonly property int panelWidth: 1180

    implicitWidth: Math.min(panelWidth, 1500)
    implicitHeight: Math.min(maxHeight, shell.implicitHeight + Tokens.padding.large * 2)
    radius: Tokens.rounding.large
    color: Colours.transparency.enabled ? Colours.layer(Colours.palette.m3surfaceContainer, 2) : Colours.palette.m3surfaceContainerHigh
    clip: true

    // ── Pure helpers (no service calls) ───────────────────────────────────────
    function clamp(value: real): real {
        return Math.max(0, Math.min(1, value ?? 0));
    }

    function volumeText(value: real): string {
        return `${Math.round(clamp(value) * 100)}%`;
    }

    function selectedChannelLabel(): string {
        return qsTr("CH%1").arg(selectedChannel + 1);
    }

    function kindAccentColor(kind: int): color {
        switch (kind) {
        case 1: return "#FF4444";
        case 2: return "#4488FF";
        default: return "#44FF88";
        }
    }

    function kindShortLabel(kind: int): string {
        switch (kind) {
        case 1: return "input";
        case 2: return "output";
        default: return "source";
        }
    }

    function streamsForKind(kind: int): var {
        const blocked = {};
        for (let i = 0; i < channels.length; i++) {
            const channel = channels[i] ?? {};
            if (i !== pickerChannel && channel.user_bound && channel.stream_id !== undefined)
                blocked[channel.stream_id] = true;
        }
        return streams.filter(s => (s.kind ?? 0) === kind && !blocked[s.id]);
    }

    function openBind(index: int): void {
        selectedChannel = index;
        pickerChannel = pickerChannel === index ? -1 : index;
    }

    function close(): void {
        requestClose();
    }

    // ─────────────────────────────────────────────────────────────────────────

    ColumnLayout {
        id: shell

        anchors.fill: parent
        anchors.margins: Tokens.padding.large
        spacing: Tokens.spacing.medium

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
        radius: Tokens.rounding.medium
        color: Colours.palette.m3surfaceContainer

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: Tokens.padding.medium
            anchors.rightMargin: Tokens.padding.medium
            spacing: Tokens.spacing.medium

            StatusPill {
                text: root.ready ? qsTr("Main") : qsTr("Waiting")
                icon: "view_column"
                active: root.ready
            }

            StyledText {
                text: qsTr("%1 selected").arg(root.selectedChannelLabel())
                color: Colours.palette.m3onSurfaceVariant
                font.weight: 600
            }

            StyledRect {
                Layout.preferredWidth: 1
                Layout.fillHeight: true
                Layout.topMargin: Tokens.padding.extraSmall
                Layout.bottomMargin: Tokens.padding.extraSmall
                color: Colours.palette.m3outlineVariant
            }

            Repeater {
                model: [
                    { name: qsTr("stream"), icon: "graphic_eq" },
                    { name: qsTr("mute"), icon: "volume_off" },
                    { name: qsTr("solo"), icon: "filter_center_focus" }
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
                text: root.deviceConnected ? qsTr("MIDI linked") : qsTr("No MIDI device")
                color: root.deviceConnected ? Colours.palette.m3onSurfaceVariant : Colours.palette.m3error
                font.weight: 600
            }

            StyledText {
                text: root.bindMode ? qsTr("enter bind  u unbind  esc close") : qsTr("enter bind  u unbind  q close")
                color: Colours.palette.m3onSurfaceVariant
            }

            IconButton {
                icon: "refresh"
                type: IconButton.Tonal
                onClicked: root.requestReconnect()
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

        radius: Tokens.rounding.medium
        color: Colours.tPalette.m3surfaceContainer

        RowLayout {
            anchors.fill: parent
            anchors.margins: Tokens.padding.medium
            spacing: Tokens.spacing.small

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
        readonly property var channel: root.channels[channelIndex] ?? {}
        readonly property var boundStream: root.fnStreamForChannel(channel)
        readonly property bool bound: channel.stream_id !== undefined || !!channel.name
        readonly property bool muted: !!channel.mute || !!channel.solo_muted
        readonly property bool crossfader: !!channel.cross_sink_a_name || !!channel.cross_sink_b_name
        readonly property int kind: channel.kind ?? 0
        readonly property color accent: root.kindAccentColor(kind)

        signal activated
        signal pickRequested

        radius: Tokens.rounding.small
        color: strip.binding ? Colours.palette.m3tertiaryContainer : strip.selected ? Colours.palette.m3secondaryContainer : Colours.palette.m3surfaceContainerHigh
        border.width: strip.selected ? 2 : 1
        border.color: strip.selected ? strip.accent : Colours.palette.m3outlineVariant

        StateLayer {
            color: Colours.palette.m3onSurface

            function onClicked(): void {
                strip.activated();
            }
        }

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: Tokens.padding.small
            spacing: 3

            RowLayout {
                Layout.fillWidth: true
                spacing: 0

                StyledText {
                    text: "CH" + (strip.channelIndex + 1)
                    color: Colours.palette.m3onSurfaceVariant
                    font: Tokens.font.body.small
                }

                StyledText {
                    text: " · "
                    color: Colours.palette.m3outlineVariant
                    font: Tokens.font.body.small
                }

                StyledText {
                    Layout.fillWidth: true
                    text: root.kindShortLabel(strip.kind)
                    color: strip.bound ? strip.accent : Colours.palette.m3outlineVariant
                    font: Tokens.font.body.small
                    elide: Text.ElideRight
                }
            }

            StyledText {
                Layout.fillWidth: true
                text: root.fnChannelLabel(strip.channelIndex)
                color: strip.bound ? Colours.palette.m3onSurface : Colours.palette.m3outline
                font.weight: 700
                elide: Text.ElideRight
                maximumLineCount: 1
            }

            StyledText {
                Layout.fillWidth: true
                text: {
                    const subtitle = root.fnStreamSubtitle(strip.boundStream);
                    if (subtitle)
                        return subtitle;
                    if (strip.crossfader)
                        return `${strip.channel.cross_sink_a_name || "-"} / ${strip.channel.cross_sink_b_name || "-"}`;
                    return "";
                }
                color: Colours.palette.m3onSurfaceVariant
                elide: Text.ElideRight
                maximumLineCount: 1
                font: Tokens.font.body.small
                visible: text !== ""
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: 4

                StyledText {
                    text: strip.crossfader ? "⇄" : "◎"
                    color: Colours.palette.m3onSurfaceVariant
                    font: Tokens.font.body.small
                }

                StyledText {
                    text: strip.crossfader
                        ? `${strip.channel.cross_sink_a_name || "A"}↔${strip.channel.cross_sink_b_name || "B"}`
                        : `${Math.round((strip.channel.knob ?? 0) / 127 * 100)}%`
                    color: Colours.palette.m3onSurface
                    font: Tokens.font.body.small
                }

                BarMeter {
                    Layout.fillWidth: true
                    value: (strip.channel.knob ?? 0) / 127
                    fillColour: Colours.palette.m3tertiary
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: Tokens.spacing.extraSmall

                VerticalFader {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 28
                    volume: strip.channel.actual_volume ?? 0
                    faderPos: strip.channel.fader_pos ?? 0
                    synced: !!strip.channel.synced
                    muted: strip.muted
                }

                ColumnLayout {
                    Layout.fillHeight: true
                    spacing: 2

                    Item { Layout.fillHeight: true }

                    TuiButton {
                        label: "[M]"
                        active: strip.muted
                        navFocused: root.selectedChannel === strip.channelIndex && root.navSetting === 1
                        activeColor: "#ffaf00"
                        onPressed: root.requestToggleMute(strip.channelIndex)
                    }

                    TuiButton {
                        label: "[S]"
                        active: !!strip.channel.solo
                        navFocused: root.selectedChannel === strip.channelIndex && root.navSetting === 2
                        activeColor: "#ffff00"
                        activeTextColor: "#000000"
                        onPressed: root.requestToggleSolo(strip.channelIndex)
                    }

                    TuiButton {
                        label: "[R]"
                        active: !!strip.channel.rec || !!strip.channel.advanced
                        activeColor: "#ff3333"
                        enabled: root.connected
                    }

                    TuiButton {
                        label: "[■]"
                        active: !!strip.channel.stop
                        activeColor: "#5f87ff"
                        enabled: root.connected
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: Tokens.spacing.extraSmall

                Rectangle {
                    width: 14
                    height: 14
                    radius: 2
                    color: strip.muted ? Colours.palette.m3error : strip.accent
                    opacity: strip.bound ? 1.0 : 0.25
                }

                Item { Layout.fillWidth: true }

                StyledText {
                    text: root.volumeText(strip.channel.actual_volume ?? 0)
                    color: strip.muted ? Colours.palette.m3error : Colours.palette.m3onSurface
                    font: Tokens.font.body.small
                }
            }
        }
    }

    component VerticalFader: Item {
        id: vfader

        required property real volume
        required property real faderPos
        property bool synced
        property bool muted

        readonly property int segments: 7
        readonly property color fillColor: muted ? Colours.palette.m3error : Colours.palette.m3primary
        readonly property color pickupColor: "#ffaf00"
        readonly property color dimColor: Colours.palette.m3surfaceContainerHighest

        ColumnLayout {
            anchors.fill: parent
            spacing: 2

            Repeater {
                model: vfader.segments

                Rectangle {
                    required property int index

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    radius: 2

                    readonly property bool filled: index >= (vfader.segments - Math.round(root.clamp(vfader.volume) * vfader.segments))
                    readonly property bool faderFilled: !vfader.synced && index >= (vfader.segments - Math.round(root.clamp(vfader.faderPos) * vfader.segments))

                    color: {
                        if (filled)
                            return vfader.fillColor;
                        if (faderFilled)
                            return vfader.pickupColor;
                        return vfader.dimColor;
                    }
                }
            }
        }
    }

    component TuiButton: StyledRect {
        id: btn

        required property string label
        property bool active
        property bool navFocused
        property bool enabled: true
        property color activeColor: Colours.palette.m3primary
        property color activeTextColor: "#ffffff"

        signal pressed

        implicitWidth: btnText.implicitWidth + 4
        implicitHeight: btnText.implicitHeight + 2
        radius: 2
        color: active ? btn.activeColor : "transparent"
        border.width: navFocused ? 1 : 0
        border.color: "#ffff00"
        opacity: btn.enabled ? 1.0 : 0.4

        StyledText {
            id: btnText

            anchors.centerIn: parent
            text: btn.label
            color: btn.active ? btn.activeTextColor : Colours.palette.m3onSurfaceVariant
            font: Tokens.font.body.small
        }

        MouseArea {
            anchors.fill: parent
            enabled: btn.enabled
            cursorShape: Qt.PointingHandCursor
            onClicked: btn.pressed()
        }
    }

    component BindPanel: StyledRect {
        id: bindPanel

        radius: Tokens.rounding.medium
        color: Colours.palette.m3surfaceContainer
        clip: true

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: Tokens.padding.medium
            spacing: Tokens.spacing.small

            RowLayout {
                Layout.fillWidth: true
                spacing: Tokens.spacing.medium

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
                        root.requestUnbind(root.pickerChannel);
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
                    spacing: Tokens.spacing.medium

                    Repeater {
                        model: [0, 1, 2]

                        ColumnLayout {
                            required property int modelData
                            readonly property var groupStreams: root.streamsForKind(modelData)

                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignTop
                            spacing: Tokens.spacing.small

                            StyledText {
                                text: root.fnKindLabel(modelData)
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
                                        root.requestBind(root.pickerChannel, modelData);
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
        radius: Tokens.rounding.small
        color: Colours.palette.m3surfaceContainerHigh

        StateLayer {
            color: Colours.palette.m3onSurface

            function onClicked(): void {
                row.clicked();
            }
        }

        RowLayout {
            anchors.fill: parent
            anchors.margins: Tokens.padding.small
            spacing: Tokens.spacing.small

            Badge {
                Layout.preferredWidth: 54
                text: root.fnKindLabel(row.stream.kind ?? 0)
            }

            ColumnLayout {
                Layout.fillWidth: true
                spacing: 0

                StyledText {
                    Layout.fillWidth: true
                    text: root.fnDisplayName(row.stream)
                    color: Colours.palette.m3onSurface
                    font.weight: 700
                    elide: Text.ElideRight
                }

                StyledText {
                    Layout.fillWidth: true
                    text: root.fnStreamSubtitle(row.stream)
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

        implicitHeight: 6
        radius: Tokens.rounding.full
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
            font: Tokens.font.body.small
            elide: Text.ElideRight
        }
    }

    component StatusPill: StyledRect {
        id: pill

        required property string text
        required property string icon
        property bool active

        implicitWidth: pillRow.implicitWidth + Tokens.padding.medium * 2
        implicitHeight: 30
        radius: implicitHeight / 2
        color: active ? Colours.palette.m3primaryContainer : Colours.palette.m3surfaceContainerHighest

        RowLayout {
            id: pillRow

            anchors.centerIn: parent
            spacing: Tokens.spacing.extraSmall

            MaterialIcon {
                text: pill.icon
                color: pill.active ? Colours.palette.m3onPrimaryContainer : Colours.palette.m3onSurfaceVariant
                fontStyle: Tokens.font.icon.medium
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

        implicitWidth: tabRow.implicitWidth + Tokens.padding.small * 2
        implicitHeight: 30
        radius: Tokens.rounding.small
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
            spacing: Tokens.spacing.extraSmall

            MaterialIcon {
                text: tab.icon
                color: tab.active ? Colours.palette.m3onSecondaryContainer : Colours.palette.m3onSurfaceVariant
                fontStyle: Tokens.font.icon.medium
            }

            StyledText {
                text: tab.text
                color: tab.active ? Colours.palette.m3onSecondaryContainer : Colours.palette.m3onSurfaceVariant
                font.weight: tab.active ? 800 : 600
            }
        }
    }
}
