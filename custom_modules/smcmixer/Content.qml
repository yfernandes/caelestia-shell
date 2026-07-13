pragma ComponentBehavior: Bound

import qs.components
import Quickshell

// Shell-side adapter: bridges the SmcMixer service to Panel's property interface.
// Nothing about layout or rendering lives here.
Panel {
    required property var screenState

    channels: SmcMixer.channels
    streams: SmcMixer.streams
    ready: SmcMixer.ready
    connected: SmcMixer.connected
    deviceConnected: SmcMixer.deviceConnected

    fnChannelLabel: idx => SmcMixer.channelLabel(idx)
    fnStreamSubtitle: stream => SmcMixer.streamSubtitle(stream)
    fnKindLabel: kind => SmcMixer.kindLabel(kind)
    fnDisplayName: stream => SmcMixer.displayName(stream)
    fnStreamForChannel: ch => SmcMixer.streamForChannel(ch)

    onRequestBind: (ch, stream) => SmcMixer.bind(ch, stream)
    onRequestUnbind: ch => SmcMixer.unbind(ch)
    onRequestToggleMute: ch => SmcMixer.toggleMute(ch)
    onRequestToggleSolo: ch => SmcMixer.toggleSolo(ch)
    onRequestReconnect: SmcMixer.reconnect()
    onRequestClose: screenState.smcMixer = false
}
