# Caelestia Shell UI Port Review: Modules Analysis

This document provides a detailed comparative review of the **Caelestia** shell UI modules ported from Quickshell/QML (upstream) into Svelte (candidate port).

---

## 1. BatteryMonitor
* **Visual Description**: Headless system monitoring module. It registers no UI elements itself but dispatches global toast notifications (power status, low/critical level warnings) and handles automatic system hibernation under critical power thresholds.
* **Visual Hierarchy**: Not applicable (headless logic).
* **User-Visible States**:
  * *Discharging*: Unplugged notification sent.
  * *Charging*: Plugged-in notification sent.
  * *Low Warning*: Low percentage alert toast shown.
  * *Critical Warning*: Danger alert toast shown; initiates 5-second countdown to hibernation.
* **Interaction Behavior**: None.
* **Animation and Transition Intent**: None.
* **Data Dependencies**: `UPower` DBus/system service.
* **Port Correctness**:
  * **Changed but acceptable**: In QML, the component connects to `UPower` signals and runs `systemctl hibernate` via `Quickshell.execDetached`. In Svelte, it runs as a logic component utilizing `$effect` dependencies to trigger events.
  * **Possibly incorrect**: The Svelte version expects an `onHibernate` callback prop to run hibernation but in `Shell.svelte` it is instantiated as `<BatteryMonitor />` without this callback. When critical thresholds are hit, it logs a console warning: `[BatteryMonitor] Hibernate requested but no onHibernate callback was provided`, rendering the safety shutdown feature broken.
* **Questions**:
  * Should `BatteryMonitor` bind to an IPC command or Tauri invocation to trigger a real system hibernate, or should we wire up the callback in `Shell.svelte`?

---

## 2. ConfigToasts
* **Visual Description**: Headless feedback module. Displays toast alerts when configuration files are successfully loaded or when parsing/saving failures occur.
* **Visual Hierarchy**: Not applicable.
* **User-Visible States**:
  * *Load success*: Informative toast.
  * *Load failed*: Warnings with details.
  * *Save failed*: Critical failure warnings.
  * *Unknown key*: Warns when unrecognized parameters exist in the config.
* **Interaction Behavior**: None.
* **Animation and Transition Intent**: None.
* **Data Dependencies**: Shell configuration services.
* **Port Correctness**:
  * **Possibly incorrect / Missing**: In QML, the component binds to `GlobalConfig` and `TokenConfig` signals. Svelte's `ConfigToasts` exposes helper functions (`configLoaded()`, `configLoadFailed()`) but lacks automatic event bindings. `Shell.svelte` instantiates `<ConfigToasts />` without any props or hooks, leaving configuration load/fail toasts completely inactive.
* **Questions**:
  * How should Svelte components receive config reload signals? Should we create a global config store or reactive service that `ConfigToasts` listens to internally?

---

## 3. GSFLoader
* **Visual Description**: Headless font asset manager. Dynamically loads the variable-weight typeface "Google Sans Flex".
* **Visual Hierarchy**: Not applicable.
* **User-Visible States**: Active.
* **Interaction Behavior**: None.
* **Animation and Transition Intent**: None.
* **Data Dependencies**: Local font assets.
* **Port Correctness**:
  * **Preserved**: Successfully translates QML's `FontLoader` to a standard `@font-face` definition injected into `<svelte:head>`.

---

## 4. IdleMonitors
* **Visual Description**: Headless activity monitor. Watches activity to lock the session or trigger sleep commands after configurable idle timeouts.
* **Visual Hierarchy**: Not applicable.
* **User-Visible States**:
  * *Active*: Timers reset.
  * *Idle*: Exceeds thresholds; locks session/powers down.
  * *Inhibited*: Active media players (e.g. music/videos) block timeouts.
* **Interaction Behavior**: Listening to activity resets.
* **Animation and Transition Intent**: None.
* **Data Dependencies**: Logind service state, media playback state.
* **Port Correctness**:
  * **Possibly incorrect**: QML utilizes the compositor's Wayland idle protocol (`IdleMonitor`) and system service `LogindManager`. Svelte binds event listeners (`pointerdown`, `keydown`, `wheel`) to the local `window` object. Because the shell window is unfocused during regular usage, these DOM events won't fire, causing the shell to lock or hibernate even while the user is actively working in a terminal or web browser.
  * **Missing**: Logind signals (`onAboutToSleep`, `onLockRequested`) are completely absent in Svelte, bypassing lid-close lock triggers.
* **Questions**:
  * Should system-level idle monitoring be implemented using a backend daemon connection (e.g., Hyprland idle listener socket or dbus) rather than DOM events?

---

## 5. Shortcuts
* **Visual Description**: Headless keyboard shortcut manager. Handles opening or toggling shell panels (nexus, launcher, session, etc.) and exposes shell actions to command-line IPC.
* **Visual Hierarchy**: Not applicable.
* **User-Visible States**: Active.
* **Interaction Behavior**: Triggers shell drawer visibilities upon key presses.
* **Animation and Transition Intent**: None.
* **Data Dependencies**: Keyboard events, screen visibilities, fullscreen flags.
* **Port Correctness**:
  * **Possibly incorrect**: QML registers system-wide compositor shortcuts (`CustomShortcut`). Svelte hooks into `<svelte:window onkeydown={handleKeydown}>`. If the user is typing in a separate window, these keyboard events will not reach the shell, rendering hotkeys non-functional.
  * **Missing**: QML utilizes `IpcHandler` to handle external command lines (`caelestia-ipc drawers toggle`). Svelte lacks any IPC integration to trigger toggles externally.
* **Questions**:
  * How will global hotkeys be bound on a live system (e.g. Hyprland configuration forwarding to a Unix socket, or global keyboard grab)?

---

## 6. areapicker
* **Visual Description**: Overlay screenshot region selection tool. Dim-colors the desktop display, snaps selection boxes to window boundaries under the cursor, and draws crop frames.
* **Visual Hierarchy**: Large dimmed workspace overlays with high-contrast highlighted cutout. A dimension badge appears on the bottom-right of the crop box.
* **User-Visible States**:
  * *Ready/Idle*: Snapshot overlay shown, cursor snaps to window edges.
  * *Selecting*: Dragging out manual boxes.
  * *Capturing*: Brief full-screen white flash occurs.
* **Interaction Behavior**: Move pointer to snap crop frames to windows; drag to crop arbitrary rectangular regions. Escape cancels.
* **Animation and Transition Intent**: Emphasized fade-in on start, responsive/fluid crop snap, white flash overlay fade-out, zoom-out shrink close.
* **Data Dependencies**: Window dimensions.
* **Port Correctness**:
  * **Changed but acceptable**: QML fetches screen toplevels from Hyprland IPC. Svelte queries DOM elements (`.bg-m3-t-surface-container-l3`, `button`, etc.) to simulate window bounds.
  * **Possibly incorrect / Mocked**: QML uses `ScreencopyView` to grab real frame buffers and opens `swappy` or `wl-copy`. Svelte logs actions to the console without capturing screen details.
* **Questions**:
  * Will the actual desktop port invoke a command line screenshot utility (e.g., `grim` or `slurp`) or does the browser shell receive frames over IPC?

---

## 7. background
* **Visual Description**: Bottom-layer desktop workspace. Comprises wallpaper, calendar-styled desktop clock, and a bottom-aligned audio visualizer.
* **Visual Hierarchy**: The clock draws initial focus (configurable alignments), with visualizer bars drifting underneath.
* **User-Visible States**: Default, Music playing (activates visualizer), Clock hidden, Fallback error (wallpaper missing).
* **Interaction Behavior**: None (clock has optional backdrop-blur). Fallback offers file uploads to reset wallpaper.
* **Animation and Transition Intent**: Wallpaper cross-fades smoothly over 700ms. Visualizer bars bounce vertically.
* **Data Dependencies**: Time, audio volume, visualizer levels, active music players.
* **Port Correctness**:
  * **Preserved**: Layout structures, date formatting, and clock scale configurations align.
  * **Changed but acceptable**: In QML, the visualizer reads real-time frequencies from `cava`. Svelte simulates visualizer bounces using randomized CSS keyframe animations.
  * **Changed but acceptable**: `useLightSet` in QML resolves using system variables (`Colours.light ? !invertColors : invertColors`). Svelte uses a hardcoded fallback (`invertColors`).
* **Questions**:
  * Do we need an IPC service adapter to stream real CAVA frequency data to Svelte?

---

## 8. bar
* **Visual Description**: Vertical panel anchored to the left screen edge. Contains workspace indicators, window titles, system trays, battery level icons, clock, and session power triggers.
* **Visual Hierarchy**: Top section holds branding/workspaces; center holds active window title; bottom holds tray/status icons, clock, and power.
* **User-Visible States**: Collapsed, Expanded (on hover/persistent), Popouts open.
* **Interaction Behavior**: Hovering status icons slides open side-panels. Scrolling wheel over workspaces switches workspaces; scrolling over top half alters volume; scrolling over bottom half alters brightness.
* **Animation and Transition Intent**: Width slides smoothly (350ms) between collapsed (1.5w) and expanded (12w) modes.
* **Data Dependencies**: Current window, battery charge status, system tray, volumes, workspaces.
* **Port Correctness**:
  * **Possibly incorrect**: QML maps the hover coordinate directly to icon positions (`icon.mapToItem(...)`). Svelte hardcodes the popout center coordinates in `BarWrapper.svelte` (e.g. `lockstatus = 320`, `audio = 360`, `kblayout = 400`). If users customize `bar.entries` layout, the popouts will render offset from their triggering icons.
  * **Missing**: Volume/brightness scrolling on the bar is completely absent in Svelte.
* **Questions**:
  * Can we dynamically resolve icon offsets in Svelte (e.g. using `getBoundingClientRect()`) to position popout panels correctly?

---

## 9. dashboard
* **Visual Description**: Expandable full-screen overlay panel hosting system resource tanks, calendar grid, weather brief, and music playback controls.
* **Visual Hierarchy**: Prominent time/date and user card on top. Resource monitor grids and weather forecast below. Music media player on the side.
* **User-Visible States**: Closed, Open, Media active/inactive, Resource monitoring.
* **Interaction Behavior**: Toggle monitoring tabs, control music playback.
* **Animation and Transition Intent**: Emphasized slide-down from the top edge. Bouncing liquid effects on the resource progress tanks.
* **Data Dependencies**: Weather forecast, CPU/memory usage, media status.
* **Port Correctness**:
  * **Preserved**: The battery/resource tanks replicate QML's color-masked overlay clipping design, preserving correct visual behavior as heights change.
  * **Changed but acceptable**: background drifting shapes utilize standard CSS clip-path polygons rather than QML custom shapes.

---

## 10. drawers
* **Visual Description**: Containment layer managing launcher, dashboard, sidebar, utilities, osd, notifications, session, and popouts.
* **Visual Hierarchy**: Frames screen edges. Vertically wraps the left bar, with other panels sliding out relative to it.
* **User-Visible States**: Drawers closed/open, drag-gestures active.
* **Interaction Behavior**: Pointer drag gestures near screen edges pull panels open.
* **Animation and Transition Intent**: Highly elastic fluid "metaball" deformation. Panels appear to organically bubble out from the bar.
* **Data Dependencies**: Screen dimensions, fullscreen status.
* **Port Correctness**:
  * **Missing**: The Svelte port lacks the custom `BlobGroup` and `BlobRect` metaball liquid deform shader entirely. Drawers are rendered as standard rectangular divs with simple slide/fade animations.
  * **Missing**: Wayland layer-shell exclusion zones (telling the compositor to reserve space) are absent, which is expected in a browser mockup but required for real usage.
* **Questions**:
  * Is the organic liquid metaball look a priority for the web simulator, or is standard rectangular slide animation acceptable for this port?

---

## 11. launcher
* **Visual Description**: Overlay application launcher with search bar, application grid, calculator, and styling cards.
* **Visual Hierarchy**: Search bar on top; results and calculator displays scrollable below.
* **User-Visible States**: Active search, Calculator result, Application item hovered.
* **Interaction Behavior**: Typing in search bar filters apps or evaluates math. Click launches apps.
* **Animation and Transition Intent**: Emphasized slide-up from bottom edge. Grid items stagger-fade in.
* **Data Dependencies**: List of installed apps, math expressions.
* **Port Correctness**:
  * **Changed but acceptable**: Svelte uses a custom JS `ArithmeticParser` for math instead of the system `qalc` binary.
  * **Preserved**: Apps lists, wallpaper thumbnails, and grid layouts are equivalent.

---

## 12. lock
* **Visual Description**: Security lock screen displaying profile, clock, notification dock, and weather.
* **Visual Hierarchy**: Centered user profile and password input. Clock on the side, notification summaries below.
* **User-Visible States**: Locked, Unlocking (inputting password), Incorrect password error, Max tries locked out.
* **Interaction Behavior**: Typing password, clicking unlock. Keyboard modifier sync.
* **Animation and Transition Intent**: Shake animation on password error. Smooth fade-out of lock screen on unlock.
* **Data Dependencies**: System lock state, pam authorization.
* **Port Correctness**:
  * **Changed but acceptable**: Svelte implements a `PamStub` that stubs authentication (accepting empty or "password"), which is necessary for a web mockup.

---

## 13. nexus
* **Visual Description**: Complete control center settings dashboard.
* **Visual Hierarchy**: Sidebar navigation pane on the left; configuration forms and sliders on the right.
* **User-Visible States**: Page selected, Subpages open, Settings changed.
* **Interaction Behavior**: Navigating menus, adjusting sliders, toggling switches.
* **Animation and Transition Intent**: Smooth page-fade swaps. Navigation indicators slide to selected item.
* **Data Dependencies**: System settings, network state, audio devices, wallpapers.
* **Port Correctness**:
  * **Preserved**: The layout structure, page stack navigation, and settings sliders match.

---

## 14. notifications
* **Visual Description**: Toast notification stack displayed on screen overlays.
* **Visual Hierarchy**: Urgency color-coding. Top header details; body text with expandable action rows below.
* **User-Visible States**: Normal, Critical, Expanded, Collapsed, Progress updating.
* **Interaction Behavior**: Click expand toggle, swipe horizontally to dismiss, click action buttons.
* **Animation and Transition Intent**: Smooth vertical slide-in, horizontal swipe tracking, fade-out on dismiss.
* **Data Dependencies**: Notification daemon signals, progress percentages.
* **Port Correctness**:
  * **Missing**: Vertical drag gesture to expand/collapse is absent (only horizontal swipe-to-clear is implemented).
  * **Preserved**: Horizontal swipe-to-clear and progress indicator ring are preserved.

---

## 15. osd
* **Visual Description**: Volume and brightness indicators.
* **Visual Hierarchy**: Vertical slider bars with icons.
* **User-Visible States**: Active, Hidden, Muted.
* **Interaction Behavior**: Slides out when volume/brightness changes; disappears after a delay.
* **Animation and Transition Intent**: Smooth panel slide from the right side.
* **Data Dependencies**: Audio volume, screen brightness.
* **Port Correctness**:
  * **Preserved**: Input detection and auto-hide delay function exactly as in QML.

---

## 16. session
* **Visual Description**: System power options menu (Logout, Shutdown, Hibernate, Reboot) with key navigation and animated gif.
* **Visual Hierarchy**: Vertically aligned buttons with a central GIF.
* **User-Visible States**: Default, Button focused/hovered.
* **Interaction Behavior**: Keyboard navigation (arrow keys, Tab, Vim hotkeys `Ctrl+J/K/N/P`), clicking actions.
* **Animation and Transition Intent**: Smooth scale/corner-radius change when focused.
* **Data Dependencies**: Session config.
* **Port Correctness**:
  * **Preserved**: Layout, Vim-style key navigation, and central animated GIF are preserved.

---

## 17. sidebar
* **Visual Description**: Side utility panel hosting notification dock.
* **Visual Hierarchy**: Header with notification count; scrollable grouped notifications list.
* **User-Visible States**: Active notifications list, Empty state ("All up to date!").
* **Interaction Behavior**: Scroll list, click "Clear All".
* **Animation and Transition Intent**: Cascading clear animation.
* **Data Dependencies**: Notification records.
* **Port Correctness**:
  * **Preserved**: Cascading logarithmic clear function is fully preserved.

---

## 18. utilities
* **Visual Description**: Quick toggles panel with screen recording card and toggles.
* **Visual Hierarchy**: Sectioned toggles (inhibit sleep, night light), recording list below.
* **User-Visible States**: Idle, Recording screen, Recording list expanded.
* **Interaction Behavior**: Clicking toggles, choosing recording mode, playing recordings.
* **Animation and Transition Intent**: Flashing recording indicator.
* **Data Dependencies**: Recording status, screen capture outputs.
* **Port Correctness**:
  * **Preserved**: Recorder timers, confirmation modals, and toggles translate cleanly.

---

## 19. windowinfo
* **Visual Description**: Hover/preview overlay displaying active client details.
* **Visual Hierarchy**: Screenshot thumbnail preview on the left; scrollable details and action buttons (kill, floating, pinned) on the right.
* **User-Visible States**: Preview loading, Preview shown, Window operations selected.
* **Interaction Behavior**: Toggling window states (floating, pinned), closing window.
* **Animation and Transition Intent**: Snappy slide-in panel.
* **Data Dependencies**: Active window details from Hyprland compositor.
* **Port Correctness**:
  * **Preserved**: Layout structure and details cards align.

---

## Deep-Dive: The Missing Liquid Metaball Rendering System

The defining visual identity of Caelestia’s shell UI is the organic merging and fluid morphing of panels (launcher, dashboard, sidebar, popouts) as they emerge from or nestle into the main status bar or screen boundaries. In the QML upstream implementation, this is not a basic CSS layout transition; it is a custom rendering pipeline written in C++ and executed directly on the GPU via GLSL shaders.

The Svelte port currently represents all panels as standard rectangular `div` elements sliding on top of or next to the bar, resulting in a **complete loss of the liquid/blob visual identity**.

Below is a detailed analysis of how this organic metaball effect is mathematically constructed and rendered in Caelestia's upstream codebase.

### 1. Mathematical Mechanics (GLSL Shader: `blob.frag`)

The rendering process is performed on the GPU using **Signed Distance Fields (SDFs)** to describe shape contours, merging them with a **Circular Smooth Minimum**:

#### A. Rounded Box SDF with Independent Corner Radii
Each panel is modeled as a rounded rectangle. The distance field $d(p)$ is computed using the GLSL equivalent of:

```glsl
float sdRoundedBox4(vec2 p, vec2 center, vec2 halfSize, vec4 r) {
    p -= center;
    r.xy = (p.x > 0.0) ? r.xy : r.wz;
    r.x  = (p.y > 0.0) ? r.y : r.x;
    vec2 q = abs(p) - halfSize + r.x;
    return min(max(q.x, q.y), 0.0) + length(max(q, 0.0)) - r.x;
}
```
*Where `r` stores independent radii for `(topRight, bottomRight, bottomLeft, topLeft)`.*

#### B. Asymmetric Deformation Matrix
To make panels squash and stretch dynamically as they slide open, the evaluation coordinates are warped using a pre-computed inverse deformation matrix (`invDeform`):
$$p' = \text{center} + \text{invDeform} \cdot (p - \text{center})$$

#### C. Circular Smooth Minimum (`smin`)
Instead of standard polynomial blending (which causes squircle-like bulging across the entire shape range), Caelestia uses a **Circular Smooth Minimum** to generate a perfect circular fillet arc of radius $k$ (the `smoothFactor`) at the intersection boundary:

```glsl
float smin(float a, float b, float k) {
    return max(k, min(a, b)) - length(max(vec2(k) - vec2(a, b), vec2(0.0)));
}
```
This formula limits shape blending exclusively to regions where *both* shapes are closer to each other than $k$, preserving sharp linear boundaries elsewhere.

#### D. The "Border Sink" Effect (Edge Recesses)
When panels slide out and press against the screen boundaries, the screen border itself dynamically deforms and indents, pocketing the panel.
The shader implements this by subtracting a calculated `sinkValue` from the frame boundary's inner distance field:

$$\text{topPen} = \text{clamp}(\text{innerTop} - (\text{ctr.y} + \text{halfHeight.y}) - \text{preOff}, 0.0, \text{innerTop} - \text{outerTop})$$
$$\text{sink} = \text{topPen} \cdot \text{smoothstep}(2k, 0.0, \text{lateralDistance}) \cdot \text{proximityZone}$$

This creates a localized recession in the border outline that conforms to the width and penetration depth of the merging panel.

#### E. Selective Morphing (Exclusion Masking)
To prevent active menus or distinct widgets from morphing into the main dock or background container when they cross paths, the shader evaluates a bitwise exclusion mask:

```glsl
if ((excludeMask & (1 << j)) == 0) {
    mergedSdf = smin(mergedSdf, dArr[i], smoothFactor);
}
```
This allows fine-grained control over which elements participate in the fluid morphing.

---

### 2. Frontend Porting Strategies for Svelte / Web

To restore this critical visual aesthetic in the web-based shell, the developer can choose between two main implementation patterns:

#### Option A: WebGL Canvas Layer (Recommended for Parity)
Mount a full-viewport WebGL canvas behind the panels.
* **Mechanism**: Feed Svelte's reactive panel geometries (bounding boxes, offsets, deformation scaling) to the canvas via standard uniforms as an array of structured vectors (matching QML's `rectData[80]`).
* **Pros**: High performance; allows exact porting of Caelestia’s `blob.frag` shader; preserves correct circular `smin` blending, corner-restricted deformation, and glassmorphic backdrop blurs.
* **Cons**: Higher rendering complexity.

#### Option B: SVG Filter Pipeline (CSS Fallback)
Apply a CSS-based SVG color-matrix filter chain directly on the DOM containers.
* **Mechanism**: Apply a heavy Gaussian blur to the panel containers, then restore sharp edges and merge shapes using a high-contrast alpha-cutoff matrix:
```xml
<filter id="metaball">
  <feGaussianBlur in="SourceGraphic" stdDeviation="15" result="blur" />
  <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
  <feBlend in="SourceGraphic" in2="goo" />
</filter>
```
* **Pros**: Pure CSS/HTML; easy to implement.
* **Cons**: Causes inner contents (labels, icons) to blur and distort near boundaries; lacks individual panel glassmorphic backdrop-blurs; does not support the "border sink" boundary recess or selective exclusion masks.

---

## Cross-component design consistency

* **Spacing & Corner Radii**: The Svelte port translates custom tokens to CSS equivalents, maintaining consistent layout rhythms.
* **Hover / Active states**: Correctly handles hover visual shifts.
* **Materials & Blur**: The Svelte port replaces QML's custom `ShaderEffectSource` and `MultiEffect` with `backdrop-filter: blur()`, achieving equivalent visual intent.
* **Animation presets**: The use of GSAP ensures smooth animations, though some complex animations (e.g. cascading clears, swipe-to-dismiss) are custom-coded.

---

## Final summary

* **Overall translation confidence**: **Medium**
* **Highest-risk components**: 
  * `IdleMonitors` & `Shortcuts`: Currently use local DOM window focus listeners. They will fail to receive events on a running desktop shell.
  * `drawers`: Skips the organic blob metaball liquid deform shader entirely.
* **Most likely missing visual details**: The metaball merging effect between panels and the left vertical bar.
* **Most important animation mismatches**: 
  * Bar popouts are positioned using static coordinates instead of dynamically resolving icon coordinates.
  * Missing vertical drag-to-expand gesture on notifications.
* **Recommended next verification steps**:
  * Replace DOM-based keyboard/idle triggers with native IPC or socket listeners.
  * Dynamically calculate popout alignments using `getBoundingClientRect()` rather than hardcoded offsets.
