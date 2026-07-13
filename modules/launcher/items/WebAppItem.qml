import qs.components
import qs.services
import Caelestia
import Caelestia.Config
import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import qs.components.images

Item {
    id: root

    required property var list

    readonly property string rawInput: list.search.text.slice(`${GlobalConfig.launcher.actionPrefix}webapp `.length).trim()
    readonly property var fields: rawInput.split("|").map(f => f.trim())
    readonly property string appName: fields[0] ?? ""
    readonly property string appUrl: fields[1] ?? ""
    
    property string resolvedIcon: ""
    property string lastCheckedName: ""

    readonly property string appIcon: resolvedIcon || fields[2] || faviconUrl(appUrl)
    readonly property string customExec: fields[3] ?? ""
    readonly property string mimeTypes: fields[4] ?? ""
    readonly property bool ready: appName.length > 0 && appUrl.length > 0
    readonly property string example: `${GlobalConfig.launcher.actionPrefix}webapp ChatGPT | chatgpt.com`

    onAppNameChanged: updateIcon()
    onAppUrlChanged: updateIcon()
    Component.onCompleted: updateIcon()

    function updateIcon() {
        if (fields[2]) {
            resolvedIcon = fields[2];
            return;
        }

        const fallback = faviconUrl(appUrl);
        if (!appName) {
            resolvedIcon = fallback;
            return;
        }

        checkSimpleIcon(appName, fallback);
    }

    function checkSimpleIcon(name, fallbackUrl) {
        if (!name) {
            resolvedIcon = fallbackUrl;
            return;
        }

        if (name === lastCheckedName)
            return;
        lastCheckedName = name;

        // Slugify
        let slug = name.toLowerCase().trim();
        slug = slug.replace(/\.js$/i, "dotjs");
        slug = slug.replace(/[^a-z0-9]/g, "");

        const simpleUrl = `https://cdn.simpleicons.org/${slug}`;

        const xhr = new XMLHttpRequest();
        xhr.open("HEAD", simpleUrl, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    resolvedIcon = simpleUrl;
                } else {
                    resolvedIcon = fallbackUrl;
                }
            }
        }
        xhr.send();
    }

    function normalisedUrl(url) {
        return /^[a-zA-Z][a-zA-Z0-9+.-]*:/.test(url) ? url : `https://${url}`;
    }

    function faviconUrl(url) {
        if (!url)
            return "";

        const normalised = normalisedUrl(url);
        const match = normalised.match(/^[a-zA-Z][a-zA-Z0-9+.-]*:\/\/([^/:?#]+)/);
        return `https://www.google.com/s2/favicons?domain=${(match && match[1]) ? match[1] : normalised}&sz=128`;
    }

    function installCommand() {
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

    function onClicked() {
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

        Loader {
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredWidth: root.implicitHeight * 0.6
            Layout.preferredHeight: root.implicitHeight * 0.6

            sourceComponent: (root.ready && root.appIcon) ? brandIcon : genericIcon
        }

        Component {
            id: brandIcon

            CachingIconImage {
                source: root.appIcon
                implicitSize: root.implicitHeight * 0.6
            }
        }

        Component {
            id: genericIcon

            MaterialIcon {
                text: root.ready ? "add_to_home_screen" : "edit_note"
                fontStyle: Tokens.font.icon.builders.extraLarge.scale(1.2).build()
                color: root.ready ? Colours.palette.m3primary : Colours.palette.m3onSurfaceVariant
            }
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
