# System Assumptions Report

<!--toc:start-->
- [System Assumptions Report](#system-assumptions-report)
  - [1. Core System Environment](#1-core-system-environment)
  - [2. External Applications](#2-external-applications)
    - [Terminal & Shell](#terminal-shell)
    - [Default GUI Applications](#default-gui-applications)
    - [Launchers & Menus](#launchers-menus)
    - [System Utilities](#system-utilities)
  - [3. System Services](#3-system-services)
  - [4. Theming & Visuals](#4-theming-visuals)
  - [5. Configuration & Paths](#5-configuration-paths)
<!--toc:end-->

This report documents the implicit and explicit assumptions made by the `caelestia-cli` and `caelestia-shell` codebase regarding the underlying system environment, installed applications, and services.

Each item includes an **Integration Level**:

- **[High]**: Deeply integrated into code logic/architecture; changing requires significant refactoring (e.g., rewriting QML modules or IPC handling).
- **[Medium]**: Hardcoded in multiple scripts or requires specific command syntax; changing requires updates across several files.
- **[Low]**: Configurable via JSON or isolated to a single string definition; easy to swap.

## 1. Core System Environment

- **Operating System:** Linux (Arch Linux) **[Medium]**
  - *Reasoning:* `version.py` explicitly calls `pacman` to check package versions. Porting to another distro requires rewriting this utility.
- **Init System:** `systemd` **[High]**
  - *Reasoning:* Power (`systemctl`) and session (`loginctl`) commands are hardcoded in `SessionConfig.qml`, `LauncherConfig.qml`, and `Idle.qml`.
- **Display Server:** Wayland (Hyprland) **[Extreme]**
  - *Reasoning:* The entire shell architecture (`Hypr.qml`, workspaces, window rules, event listeners) is built directly on the Hyprland IPC socket and object model. Porting to Sway or generic Wayland would require a rewrite of the shell core.
- **Shell:** `zsh` **[Low]**
  - *Reasoning:* Used as an interpreter for command execution strings (e.g., in `CalcItem.qml`). Swapping to `bash` or `fish` involves changing the command string in a few files.
- **Environment Variables:** **[Medium]**
  - `HYPRLAND_INSTANCE_SIGNATURE` is critical for IPC.
  - `CAELESTIA_XKB_RULES_PATH` assumes X11-style xkb layout files exist.

## 2. External Applications

### Terminal & Shell

- **Terminal Emulator:** `ghostty` **[Low]**
  - *Reasoning:* Defined in `GeneralConfig.qml` and `fuzzel.ini`. Easy config change.
- **Shell:** `zsh` **[Low]**
  - *Reasoning:* See Core Environment.

### Default GUI Applications

- **File Manager:** `thunar` **[Low]**
- **Audio Mixer:** `pavucontrol` **[Low]**
- **Media Player:** `mpv` **[Low]**
- **Music Player:** `Spotify` / `feishin` **[Low]**
- **Calculator:** `qalc` (libqalculate) **[Medium]**
  - *Reasoning:* `CalcItem.qml` specifically constructs a command for `qalc`. Swapping requires changing the command syntax logic.

### Launchers & Menus

- **Application Launcher:** `app2unit` **[Medium]**
  - *Reasoning:* Used as a wrapper prefix for launching *all* applications from the shell (Launcher, Notifications, Sidebar). Changing it requires regex-replacing the prefix in multiple QML files.
- **Menu/Picker:** `fuzzel` **[Medium]**
  - *Reasoning:* Hardcoded in python scripts (`clipboard.py`, `emoji.py`) with specific flags (`--dmenu`).

### System Utilities

- **System Info:** `pacman` **[Medium]**, `sensors` **[Low]**.
- **Clipboard:** `wl-clipboard`, `cliphist` **[Medium]**.
  - *Reasoning:* `clipboard.py` parses `cliphist` output specifically.
- **Screenshot & Recording:** `grim`, `slurp`, `swappy`, `gpu-screen-recorder` **[Medium]**.
  - *Reasoning:* Command flags are hardcoded in `screenshot.py`, `record.py`, and `Recorder.qml`.

## 3. System Services

- **Network:** `NetworkManager` **[High]**
  - *Reasoning:* `Nmcli.qml` contains complex logic to parse `nmcli` output. Moving to `iwd` or `connman` would require writing a completely new network service module.
- **Audio:** `PipeWire` **[High]**
  - *Reasoning:* The shell uses `Quickshell.Services.Pipewire` directly, binding QML properties to PipeWire nodes.
- **Bluetooth:** `BlueZ` **[High]**
  - *Reasoning:* Uses `Quickshell.Services.Bluetooth` which binds to BlueZ DBus interfaces.
- **Notifications:** `libnotify` **[Low]**.
  - *Reasoning:* Standard `notify-send` calls.
- **VPN:** `wireguard` / `nmcli` **[Medium]**.
  - *Reasoning:* `VPN.qml` has hardcoded command templates for specific providers.
- **Privilege Escalation:** `pkexec` **[Low]**.
  - *Reasoning:* Used as a command prefix string.
- **Fingerprint:** `fprintd` **[Low]**.
  - *Reasoning:* Config file asset.

## 4. Theming & Visuals

- **Wallpaper Backend:** External Daemon (swww/hyprpaper) **[Low]**
  - *Reasoning:* The system only manages a symlink. The backend is decoupled.
- **Theming Tools:** `sass`, `dconf`, `qt5ct` **[Medium]**.
  - *Reasoning:* `theme.py` generates specific config formats for these tools.
- **Icons:** `papirus-folders` **[Medium]**.
  - *Reasoning:* `theme.py` calls this specific script to recolor icons.

## 5. Configuration & Paths

- **Paths:** `~/.config/caelestia/`, `~/.local/state/caelestia/` **[High]**
  - *Reasoning:* Hardcoded across Python scripts and QML modules. Not easily portable without find-and-replace.
