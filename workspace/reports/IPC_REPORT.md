# IPC Handling & Usage Report

This report details the Inter-Process Communication (IPC) mechanisms used by the Caelestia ecosystem, specifically how the CLI (`caelestia-cli`) interacts with the Shell (`caelestia-shell`) and how both interact with the system (Hyprland, System Services).

## 1. CLI to Shell Communication (Quickshell IPC)

The primary channel for controlling the shell from the command line is the Quickshell IPC interface.

* **Mechanism:** The `caelestia` CLI wraps the `qs` binary.
* **Command Pattern:** `caelestia shell <target> <function> [args]` → `qs -c caelestia ipc call <target> <function> [args]`
* **Implementation:**
  * **CLI Side:** `caelestia-cli/src/caelestia/subcommands/shell.py` executes the `qs` subprocess.
  * **Shell Side:** QML modules instantiate `IpcHandler` components to expose functions.

### Exposed IPC Targets

| Target | Description | Functions | Defined In |
| :--- | :--- | :--- | :--- |
| `drawers` | Controls UI visibility | `toggle(drawer)`, `list()` | `Shortcuts.qml` |
| `controlCenter` | Opens control center | `open()` | `Shortcuts.qml` |
| `toaster` | Shows toast popups | `info(...)`, `success(...)`, `warn(...)`, `error(...)` | `Shortcuts.qml` |
| `notifs` | Notification management | `clear()`, `toggleDnd()`, `enableDnd()`, `disableDnd()` | `Notifs.qml` |
| `hypr` | Hyprland helpers | `refreshDevices()`, `cycleSpecialWorkspace(...)` | `Hypr.qml` |
| `mpris` | Media control | `play()`, `pause()`, `next()`, `getActive(prop)`, `list()` | `Players.qml` |
| `idleInhibitor`| Power management | `enable()`, `disable()`, `toggle()`, `isEnabled()` | `IdleInhibitor.qml` |
| `wallpaper` | Wallpaper management | `set(...)`, `get()`, `list()` | `Wallpapers.qml` |

## 2. CLI/Shell to Hyprland (Socket IPC)

Both components communicate directly with the Hyprland compositor, but use different methods.

### CLI Implementation (`hypr.py`)

* **Mechanism:** Raw Unix Socket.
* **Path:** `$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket.sock`
* **Usage:**
  * Sends `j/` prefixed commands for JSON output (e.g., `j/monitors`).
  * Sends `dispatch` commands for window management (e.g., `dispatch togglespecialworkspace`).
  * **Logic:** The `toggle` command performs state reconciliation by querying `clients` via IPC and then spawning/moving windows based on the result.

### Shell Implementation (`Quickshell.Hyprland`)

* **Mechanism:** C++ Bindings (Quickshell Module).
* **Usage:**
  * **State:** Binds QML properties to Hyprland state (`Hyprland.workspaces`, `Hyprland.toplevels`).
  * **Events:** Listens to `onRawEvent` for signals like `workspace`, `openwindow`, `configreloaded`.
  * **Dispatch:** Uses `Hyprland.dispatch()` for actions.

## 3. System Services (DBus)

The shell relies on Quickshell services which act as DBus clients.

* **Notifications:** `org.freedesktop.Notifications`
  * The shell runs a `NotificationServer` (in `Notifs.qml`) that registers this name on DBus to receive system notifications.
  * The CLI uses `notify-send` which sends messages *to* this DBus interface.
* **Media (MPRIS):** `org.mpris.MediaPlayer2.*`
  * The shell watches these buses to aggregate player state (`Players.qml`).
* **Bluetooth:** `org.bluez`
  * Managed via `Quickshell.Services.Bluetooth` in `BtPane.qml`.

## 4. Process-Based Monitoring

Some services rely on long-running subprocesses instead of DBus or Sockets.

* **Network (nmcli):** `VPN.qml` runs `nmcli monitor` in a background process (`Process` component) and parses stdout to detect network changes.
* **Application Launching:** The shell uses `app2unit` as a wrapper when spawning applications to ensure they are detached from the shell's process tree and correctly scoped within systemd.
