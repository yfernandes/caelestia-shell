pragma Singleton

import Quickshell
import Quickshell.Io
import QtQml

Singleton {
    id: root

    readonly property string runtimeDir: Quickshell.env("XDG_RUNTIME_DIR")
    readonly property string fallbackSocket: `${Quickshell.env("HOME")}/.local/share/smc-mixer/smc-mixer.sock`
    readonly property string runtimeSocket: runtimeDir ? `${runtimeDir}/smc-mixer.sock` : fallbackSocket
    readonly property string socketPath: socket.path
    readonly property bool connected: socket.connected
    readonly property bool ready: channels.length === 8

    property var channels: []
    property var streams: []
    property var labels: []
    property string configPath: ""
    property bool deviceConnected: true
    property var lastGlobal: ({})
    property string lastError: ""

    function connect(): void {
        if (socket.connected)
            return;

        socket.path = runtimeSocket;
        socket.connected = true;
    }

    function reconnect(): void {
        socket.connected = false;
        socket.path = socket.path === runtimeSocket ? fallbackSocket : runtimeSocket;
        socket.connected = true;
    }

    function handleFrame(frame: string): void {
        if (frame.length === 0)
            return;

        let message;
        try {
            message = JSON.parse(frame);
        } catch (error) {
            lastError = `Bad smc-mixer frame: ${error}`;
            return;
        }

        const data = message.data ?? {};
        switch (message.kind) {
        case "initial":
            channels = data.snapshot ?? [];
            streams = sortStreams(data.streams ?? []);
            labels = data.labels ?? [];
            configPath = data.config_path ?? "";
            break;
        case "snapshot":
            channels = data ?? [];
            break;
        case "streams":
            streams = sortStreams(data ?? []);
            break;
        case "device":
            deviceConnected = data.connected ?? true;
            break;
        case "global":
            lastGlobal = data;
            break;
        }
    }

    function sortStreams(items: var): var {
        return [...items].sort((a, b) => {
            if ((a.kind ?? 0) !== (b.kind ?? 0))
                return (a.kind ?? 0) - (b.kind ?? 0);
            return displayName(a).localeCompare(displayName(b));
        });
    }

    function displayName(item: var): string {
        return item?.name || item?.app_name || item?.node_name || item?.bind_key || qsTr("Unknown");
    }

    function channelLabel(index: int): string {
        const channel = channels[index] ?? {};
        return channel.name || labels[index] || qsTr("Channel %1").arg(index + 1);
    }

    function streamForChannel(channel: var): var {
        if (!channel)
            return null;
        return streams.find(stream => {
            if (channel.stream_id !== undefined && stream.id === channel.stream_id)
                return true;
            return channel.mpris_name && stream.mpris_player === channel.mpris_name;
        }) ?? null;
    }

    function streamSubtitle(stream: var): string {
        if (!stream)
            return "";
        if (stream.artist && stream.track)
            return `${stream.artist} - ${stream.track}`;
        if (stream.track)
            return stream.track;
        if (stream.win_title && stream.win_title !== stream.name)
            return stream.win_title;
        if (stream.media_name && stream.media_name !== stream.name)
            return stream.media_name;
        return stream.node_name ?? "";
    }

    function kindLabel(kind: int): string {
        switch (kind) {
        case 1:
            return qsTr("Input");
        case 2:
            return qsTr("Output");
        default:
            return qsTr("App");
        }
    }

    function command(kind: string, data: var): void {
        if (!socket.connected)
            return;

        socket.write(`${JSON.stringify({
            kind,
            data
        })}\n`);
        socket.flush();
    }

    function bind(ch: int, stream: var): void {
        if (!stream)
            return;

        command("bind", {
            ch,
            id: stream.id,
            name: displayName(stream),
            kind: stream.kind ?? 0,
            mpris_name: stream.mpris_player ?? ""
        });
    }

    function unbind(ch: int): void {
        command("unbind", {
            ch
        });
    }

    function toggleMute(ch: int): void {
        command("mute", {
            ch
        });
    }

    function toggleSolo(ch: int): void {
        command("solo", {
            ch
        });
    }

    Socket {
        id: socket

        parser: SplitParser {
            onRead: frame => root.handleFrame(frame)
        }

        onConnectedChanged: {
            if (connected)
                root.lastError = "";
        }

        onError: error => {
            root.lastError = `${error}`;
            if (socket.path === root.runtimeSocket && root.runtimeSocket !== root.fallbackSocket)
                root.reconnect();
        }
    }

    Component.onCompleted: connect()
}
