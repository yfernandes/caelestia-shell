import QtQuick
import Quickshell
import Quickshell.Bluetooth
ShellRoot {
    property var adapters: Bluetooth.adapters.values
    Timer {
        interval: 1500
        running: true
        onTriggered: {
            console.log('BLUETOOTH_CHECK', JSON.stringify(Bluetooth.adapters.values.map(a => ({name: a.name, enabled: a.enabled, devices: a.devices.values.map(d => ({name: d.name, paired: d.paired, bonded: d.bonded, connected: d.connected}))}))), 'globalDevices', Bluetooth.devices.values.length);
            Qt.quit();
        }
    }
}
