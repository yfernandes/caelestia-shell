import qs.components
import qs.services
import Caelestia
import Caelestia.Config
import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Item {
    id: root

    required property var list

    readonly property string rawInput: list.search.text.slice(`${GlobalConfig.launcher.actionPrefix}webapp `.length).trim()
    readonly property var fields: rawInput.split("|").map(f => f.trim())
    readonly property string appName: fields[0] ?? ""
    readonly property string appUrl: fields[1] ?? ""
    readonly property string appIcon: fields[2] || faviconUrl(appUrl)
    readonly property string customExec: fields[3] ?? ""
    readonly property string mimeTypes: fields[4] ?? ""
    readonly property bool ready: appName.length > 0 && appUrl.length > 0
    readonly property string example: `${GlobalConfig.launcher.actionPrefix}webapp ChatGPT | chatgpt.com`

    function normalisedUrl(url: string): string {
        return /^[a-zA-Z][a-zA-Z0-9+.-]*:/.test(url) ? url : `https://${url}`;
    }

    function faviconUrl(url: string): string {
        if (!url)
            return "";

        const normalised = normalisedUrl(url);
        const match = normalised.match(/^[a-zA-Z][a-zA-Z0-9+.-]*:\/\/([^/:?#]+)/);
        return `https://www.google.com/s2/favicons?domain=${match?.[1] ?? normalised}&sz=128`;
    }

    function installCommand(): list<string> {
        const runner = `
shell_dir=$1
shift
for candidate in "$shell_dir/assets/webapp-install" "$shell_dir/../webapp-install"; do
  if [ -x "$candidate" ]; then
    exec "$candidate" "$@"
  fi
done
if command -v webapp-install >/dev/null 2>&1; then
  exec webapp-install "$@"
fi
echo "webapp-install was not found" >&2
exit 127
`;

        const command = ["sh", "-c", runner, "webapp-install", Quickshell.shellDir, appName, appUrl, appIcon];
        if (customExec || mimeTypes)
            command.push(customExec);
        if (mimeTypes)
            command.push(mimeTypes);

        return command;
    }

    function onClicked(): void {
        if (!ready) {
            Toaster.toast(qsTr("Web app details missing"), qsTr("Use: %1").arg(example), "add_to_home_screen", Toast.Warning);
            return;
        }

        installProc.command = installCommand();
        installProc.running = true;
    }

    implicitHeight: Tokens.sizes.launcher.itemHeight

    anchors.left: parent?.left
    anchors.right: parent?.right

    StateLayer {
        radius: Tokens.rounding.large

        function onClicked(): void {
            root.onClicked();
        }
    }

    RowLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: Tokens.padding.medium

        spacing: Tokens.spacing.medium

        MaterialIcon {
            text: root.ready ? "add_to_home_screen" : "edit_note"
            fontStyle: Tokens.font.icon.extraLarge
            color: root.ready ? Colours.palette.m3primary : Colours.palette.m3onSurfaceVariant
            Layout.alignment: Qt.AlignVCenter
        }

        ColumnLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter

            StyledText {
                text: root.ready ? qsTr("Install %1").arg(root.appName) : qsTr("Install web app")
                font: Tokens.font.body.medium
                elide: Text.ElideRight
                Layout.fillWidth: true
            }

            StyledText {
                text: root.ready ? qsTr("%1 with icon %2").arg(root.normalisedUrl(root.appUrl)).arg(root.appIcon) : qsTr("Use: %1 Name | URL | [Icon]").arg(`${GlobalConfig.launcher.actionPrefix}webapp`)
                font: Tokens.font.body.small
                color: Colours.palette.m3outline
                elide: Text.ElideRight
                Layout.fillWidth: true
            }
        }

        MaterialIcon {
            text: installProc.running ? "hourglass_top" : "download"
            fontStyle: Tokens.font.icon.large
            color: root.ready ? Colours.palette.m3primary : Colours.palette.m3outline
            Layout.alignment: Qt.AlignVCenter
        }
    }

    Process {
        id: installProc

        stdout: StdioCollector {
            id: stdoutCollector
        }

        stderr: StdioCollector {
            id: stderrCollector
        }

        onExited: code => {
            if (code === 0) {
                root.list.screenState.launcher = false;
                Toaster.toast(qsTr("Web app installed"), qsTr("%1 is now available in the app launcher").arg(root.appName), "add_to_home_screen", Toast.Success);
            } else {
                const message = stderrCollector.text.trim() || stdoutCollector.text.trim() || qsTr("webapp-install exited with code %1").arg(code);
                Toaster.toast(qsTr("Failed to install web app"), message, "error", Toast.Error);
            }
        }
    }
}
