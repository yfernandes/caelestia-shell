# Plugin System Design

Status: **Design — not yet implemented**

## 1. Motivation

The shell already carries the intent to support plugins, but none of it is wired:

- A stubbed "Plugins" settings page in Nexus (`modules/nexus/PageRegistry.qml`, rendered as a
  `PlaceholderComp` in `PageCompRegistry.qml`).
- `modules/nexus/pages/AboutPage.qml` hardcodes `pluginCount: 0` with a comment that plugin
  support "is not wired up yet".
- `custom_modules/` exists as an out-of-tree module namespace, but its only member (`smcmixer`)
  is hand-wired into `modules/drawers/Panels.qml` and `components/ScreenState.qml`.
- `mise run build-sdk` (`qmltypes/README`, `scripts/generate-qml-stubs.py`) already builds a QML
  SDK "for third-party plugin developers" with `.qmltypes` and generated `qmldir` files.
- smcmixer established a de-facto out-of-process plugin pattern: an external daemon speaking
  newline-delimited JSON over a unix socket to a QML singleton.

There are **two kinds of plugin** this system must serve, and the second is the harder one:

- **Surface plugins** add self-contained UI: a bar widget, a drawer panel, a launcher action,
  their own settings page. smcmixer is the canonical example.
- **Deep plugins** integrate with core behavior and *modify existing UI*. The canonical example
  is the Material Color Utilities scheme extractor (commit `6338a8fb`): it shipped a C++ helper
  **executable** (`extras/material-extractor.cpp`, invoked out-of-process by the CLI), added
  five typed config keys (`serviceconfig.hpp`), and performed surgery on the existing
  Wallpaper & style Nexus page — a new "Dynamic colour scheme" section, an "Extractor" select
  whose choice shows/hides sibling rows, and mutations to pre-existing rows (the "Dark theme"
  toggle became legacy-only; `last: true` moved to a different row).

A plugin system that only handles the first kind would have forced the extractor to stay
in-tree. This document specifies both tiers, including the machinery deep plugins need:
a **declarative Nexus page schema** that plugins can patch, and **dependency/conflict
resolution** so patches from independent plugins compose deterministically or fail loudly.

## 2. Goals and non-goals

**Goals**

- Drop-in plugins: install a directory, restart the shell, done — for data-only plugins.
  Executable-class plugins (any QML or commands, §4.1) add exactly one step: a first-run
  approval on the Plugins page (§12). No
  editing of shell source in either case.
- Extension points for surface plugins: bar widgets, drawer panels, launcher actions, Nexus
  pages, headless background services, external daemons.
- Deep integration for plugins that extend core behavior: contribute options to *existing*
  settings pages, register alternative backends for shell functions (scheme extraction being
  the first), and ship native helper executables.
- Deterministic composition: plugin load order, patch application order, and conflict outcomes
  never depend on filesystem enumeration order.
- Explicit dependencies: a plugin can require or optionally use another plugin; a missing
  required dependency disables the dependent plugin with a clear explanation, never a broken
  half-load.
- Failure isolation, with an honest boundary. The guarantee is: **manifest errors, schema and
  patch errors, component load/creation failures, and out-of-process failures (daemon or
  executable crashes) never take down the shell** — they degrade to a missing widget/row and an
  error toast. What is *not* guaranteed: plugin QML that loads successfully runs in-process
  with full engine privileges and can still block the event loop, exhaust memory, mutate
  shared singletons, or call `Qt.quit()`. That residual risk is governed by the trust model
  (§12), not by isolation machinery that cannot exist for in-process code.
- Reuse existing shell machinery (config watcher, `Toaster`, `FileView`,
  `DelegateChooser`, the `drawers` IPC target, the Nexus row components) rather than inventing
  parallel frameworks.

**Non-goals**

- Sandboxing. Plugins are QML/JS running in-process with full user privileges (see §12).
- Hot (un)loading without a shell reload.
- **In-process native (C++) plugin loading.** Deep plugins ship native code as *executables*
  invoked out-of-process (the material-extractor pattern) or as daemons. Loading third-party
  `.so` QML modules into the Quickshell engine is out of scope: we do not control the engine's
  import paths, and a native crash would take the whole shell down. Functionality that truly
  must be in-process C++ is either upstreamed or built in-tree as a CMake module
  (`ENABLE_MODULES`).
- Plugins defining their own `qs.*` QML namespaces. Intra-plugin types use relative imports.

## 3. Plugin unit and discovery

A plugin is a directory containing a `plugin.json` manifest plus QML files, schema patches,
assets, and optionally native executables. Discovery scans, in priority order:

1. `~/.config/caelestia/plugins/<name>/` — user-installed plugins
2. `$XDG_DATA_HOME/caelestia/plugins/<name>/` and each entry of
   `$XDG_DATA_DIRS/caelestia/plugins/<name>/` — distro/Nix-packaged plugins

The first directory found for a given plugin name wins; later duplicates are ignored with a
warning. Discovery, manifest parsing, and dependency resolution happen in C++ (a new
`Caelestia.Plugins` module). Component instantiation happens in QML via
`Qt.createComponent(fileUrl)`.

**Why file-URL loading works without engine changes:** the QML engine Quickshell owns already
has `qs.*` and `Caelestia.*` registered, so any component it loads — including one from an
arbitrary `file://` URL — can import them. Same-directory types and `import "./subdir"`
relative imports also resolve implicitly. The one constraint: plugins cannot publish types into
a global namespace; cross-file singletons inside a plugin need a `qmldir` inside the plugin
directory and relative imports. Documented, acceptable, and requires no
`QQmlEngine::addImportPath`.

## 4. Manifest schema (`plugin.json`)

All entry-point keys are optional; a manifest with only metadata is valid.

```json
{
    "name": "material-schemes",
    "version": "1.2.0",
    "description": "Material Color Utilities dynamic scheme extractor",
    "author": "Yago F.",
    "minShellVersion": "1.0",

    "dependencies": [
        { "plugin": "scheme-tools", "version": ">=2.0", "optional": false }
    ],
    "conflicts": ["legacy-scheme-overhaul"],
    "provides": ["scheme-extractor"],

    "barWidgets": { "material-schemes.status": "bar/Status.qml" },
    "panels": [ { "name": "schemePreview", "component": "Panel.qml", "position": "bottom" } ],
    "launcherActions": [
        { "name": "Refresh scheme", "icon": "refresh", "command": ["exec", "caelestia", "scheme", "refresh"] }
    ],
    "nexusPages": [
        { "label": "Material schemes", "icon": "palette", "description": "…", "component": "settings/Page.qml" }
    ],
    "nexusPatches": ["patches/wallpaper-and-style.json"],
    "quickToggles": { "material-schemes.refresh": "toggles/Refresh.qml" },
    "dashboardTabs": [
        { "id": "terminal", "icon": "terminal", "label": "Terminal", "component": "dash/Terminal.qml" }
    ],
    "launcherProviders": [
        { "action": "emoji", "name": "Emoji", "icon": "emoji_emotions",
          "description": "Pick an emoji to copy", "component": "launcher/EmojiList.qml" }
    ],
    "desktopWidgets": [
        { "id": "lyrics", "component": "desktop/Lyrics.qml", "position": "bottom-center" }
    ],
    "services": ["Service.qml"],
    "daemon": { "command": ["bin/material-extractor-daemon"], "managed": true },
    "executables": { "extractor": "bin/material-extractor" },
    "backendProviders": [
        {
            "extensionPoint": "scheme.extractor",
            "value": "material",
            "executable": "extractor",
            "protocol": "caelestia.scheme-extractor/1"
        }
    ]
}
```

Field semantics:

| Field | Meaning |
| --- | --- |
| `name` | Unique plugin id, must match the directory name. Registry rejects duplicates. |
| `minShellVersion` | Plugin skipped with a toast if the running shell is older. |
| `dependencies` | Other plugins this one needs (§9). `optional: true` — load anyway, drop contributions that target the missing plugin. `optional: false` (default) — do not load this plugin; list it in Nexus as "requires *X*, which is not installed". `version` supports two operators over dotted numeric tuples of **at most three components** (`major[.minor[.patch]]`; more is a manifest validation error): `>=` compares component-wise with missing components read as 0 (`>=2.0` accepts `2.0.1`); `=` is a **prefix match on exactly the components written** (`=1.2` accepts any `1.2.x`; `=1.2.0` accepts only `1.2.0`). |
| `conflicts` | Plugins known to be incompatible. If both are installed and enabled, the one that sorts *later* in resolution order (§9) is disabled with an explanation. |
| `provides` | Capability tags. Purely informational for other plugins' tooling today; reserved for capability-based dependencies later. |
| `barWidgets` | Map of bar-entry id → QML file. Ids must be namespaced `<plugin>.<widget>` so they can never collide with built-in ids. Usable directly in `bar.entries`. |
| `panels[]` | `name` becomes the ScreenState/IPC drawer key (rejected on collision with built-in bools or other plugins); `position` is a constrained enum (`top`, `bottom`, `left`, `right`, `center`, corners) mapped to anchors by the shell. |
| `launcherActions[]` | Same verb dispatch as `GlobalConfig.launcher.actions`. |
| `nexusPages[]` | Whole new settings pages, grouped under a `plugins` category. |
| `nexusPatches[]` | Patch files (or inline patch objects, §4.1) modifying *existing* declarative pages (§8). |
| `quickToggles` | Map of toggle id → QML file for the utilities quick-toggle grid, same id-registry contract as `barWidgets`. |
| `dashboardTabs[]` | Tabs appended to the dashboard's tab bar. |
| `launcherProviders[]` | Searchable launcher modes (emoji picker, clipboard history, …) entered via the `autocomplete` verb; §6. |
| `desktopWidgets[]` | Widgets rendered on the background/desktop layer (floating lyrics, desktop clock, pets); `position` enum as for panels. |
| `services` | Headless QML files instantiated once at startup. May contain `IpcHandler` items; targets must be named `<plugin>` or `<plugin>.<sub>`. |
| `daemon` | Optional external process. `managed: true` → shell runs it via `Process { running: enabled }`; `managed: false` → user-run. Convention: newline-delimited JSON `{kind, data}` frames over a unix socket in `$XDG_RUNTIME_DIR` (the smcmixer pattern). |
| `executables` | Named native helper binaries inside the plugin dir, resolvable by the shell, the CLI, and other plugins via the registry (§10). |
| `backendProviders[]` | Registers an executable as a provider for a shell-defined backend extension point (§10.1): `extensionPoint` (shell-owned id), `value` (the selection value this provider claims — must match an option the plugin `extendSelect`s), `executable` (key into `executables`), `protocol` (versioned protocol id the executable implements). This is what lets external consumers map a selected backend value to something they can actually run. |

### 4.1 The extension ladder, and why there is no plugin taxonomy

There are no plugin *types* ("launcher plugin", "nexus plugin", "drawer plugin"). Real plugins
span surfaces — material-schemes is at once a settings patch, a config contribution, and a
native executable; smcmixer is a panel, a service, and a daemon. A plugin simply *is* the set
of entry-point keys its manifest declares; the Nexus Plugins page derives capability badges
from the manifest ("bar widget", "settings patch", "daemon") rather than asking authors to
self-categorize.

What the design distinguishes instead is **how much machinery a change needs** — and the
expectation is that the distribution is bottom-heavy. Historical example: remapping the
launcher's `>calc` prefix to `=` once required modding the repo; today it is a config value.
Most "plugins" people want are that size. The ladder:

1. **Config.** If a tweak is a value, it should be a `shell.json` option. Authors (and
   reviewers of plugin submissions) should prefer upstreaming a config option over shipping a
   plugin. The declarative schema (§7) reinforces this: every schema row is config-backed, so
   adding an option is cheap.
2. **Data-only plugin.** A directory with `plugin.json` and patch/schema JSON — no QML, no
   executables. Reorders or extends settings pages, adds launcher actions, contributes select
   options. To keep ceremony near zero, `nexusPatches` entries may be **inline objects** in
   the manifest instead of file references — a micro-plugin can be a single `plugin.json`.
3. **Declarative-UI plugin.** Adds QML components into shell-managed slots (bar widgets,
   quick toggles, panels, tabs, desktop widgets, launcher providers).
4. **Deep plugin.** Ships services, daemons, or native executables; integrates with core
   pipelines via choice extension points.

The rungs matter because they are **mechanically verifiable trust classes** (§12) — but for
*consent* there are only two, and the boundary is not "has services": it is "ships anything
runnable". **Data-only** means the registry can prove the plugin contains no runnable content:
no QML files at all, no `executables`, no `daemon`, and no `exec` (or bare) command in any
`launcherActions` entry or patch `onChanged` list (see the verb grammar, §4.2 — closed verbs
like `drawer` or `autocomplete` are fine). **Everything else is executable-class** — including
rung-3 "declarative-UI" plugins, because a bar widget's QML runs in-process with exactly the
same privileges as a service; a consent model that waved UI QML through would be theater.
Consent is enforced at resolution time, not at UI time: an executable-class plugin without a
valid acknowledgement resolves to `AwaitingConsent` (§9 step 2) and exposes **nothing** — no
services, no components, no patches — until approved on the Plugins page. Data-only plugins
activate immediately with a badge.

### 4.2 Command verb grammar

There is **one** command grammar, shared by `launcher.actions` in user config, plugin
`launcherActions`, and schema/patch `onChanged` lists. A command is a JSON array whose first
element is a verb:

| Verb | Arguments | Effect |
| --- | --- | --- |
| `autocomplete` | mode name | Prefill the launcher with `>mode ` |
| `setMode` | `light` \| `dark` | Colour scheme mode |
| `drawer` | drawer/panel name | Toggle a drawer (plugin panels included, §6) |
| `openSubPage` | page id | Nexus navigation |
| `saveNow` | — | Flush `shell.json` immediately |
| `toast` | level, text | Show a toast |
| `exec` | argv… | Spawn a detached process |

Today `modules/launcher/services/Actions.qml` treats an unrecognized first element as a raw
command line (`["loginctl", "poweroff"]`). That form stays grandfathered for *user config*
(with a deprecation warning) but is **invalid in plugin content**: the dispatcher gains the
explicit `exec` verb, and a bare command in a plugin manifest or patch is a validation error.
This closure is what makes the data-only proof in §4.1 sound — every code-capable command is
spelled `exec`, and the classifier has no heuristics to get wrong.

## 5. Architecture

```
 plugin dirs                     C++ (Caelestia.Plugins)                 QML
┌──────────────┐    scan   ┌──────────────────────────────┐   ┌────────────────────────┐
│ plugin.json  │──────────▶│ PluginRegistry               │──▶│ services/Plugins.qml   │
│ *.qml        │           │  ├ PluginManifest[]          │   │  (aggregator singleton)│
│ patches/*.json│          │  ├ dependency/conflict solver│   └───────────┬────────────┘
│ bin/*        │           │  └ NexusSchema (base+patches)│               │
└──────────────┘           └──────────────────────────────┘               │
                                                                          │
              ┌──────────────────┬──────────────────┬─────────────────────┼───────────────┐
              ▼                  ▼                  ▼                     ▼               ▼
       Bar.qml fallback   Panels.qml slot     Actions.qml          Nexus page       SchemaPage.qml
       DelegateChoice     Repeater            concat               registries       (declarative pages)
```

### 5.1 C++ layer — `plugin/src/Caelestia/Plugins/`

```cpp
class PluginManifest : public QObject { // QML_UNCREATABLE
    // CONSTANT: name, version, description, author (QString); dir (QUrl)
    // CONSTANT: barWidgets (QVariantMap), panels / launcherActions / nexusPages /
    //           dependencies (QVariantList), services (QStringList),
    //           daemon / executables (QVariantMap)
    // status (enum: Active, Disabled, AwaitingConsent, MissingDependency, Conflict, ManifestError)
    // statusMessage (QString) — human-readable explanation for non-Active states
    // enabled (bool, R/W) — writes through to GlobalConfig.plugins.disabled
    Q_INVOKABLE QUrl resolve(const QString& relPath) const; // rejects dir-escaping paths
    Q_INVOKABLE QString executable(const QString& key) const;
};

class PluginRegistry : public QObject { // QML_ELEMENT QML_SINGLETON
    Q_PROPERTY(QQmlListProperty<PluginManifest> plugins ...)  // resolution order
    Q_PROPERTY(int count ...)                                  // Active plugins only
    Q_INVOKABLE PluginManifest* byName(const QString& name) const;
    Q_INVOKABLE void rescan();
signals:
    void pluginsChanged();
    void pluginError(const QString& plugin, const QString& message);
};
```

Scans at construction, then runs dependency/conflict resolution (§9). Every discovered plugin —
including broken, conflicting, or dependency-starved ones — produces a `PluginManifest` with a
`status` and `statusMessage`, so the Nexus Plugins page can list and explain all of them. Only
`Active` plugins expose entry points. The registry parses JSON and resolves the graph; no
plugin code runs in C++, so it adds no crash surface.

### 5.2 QML layer — `services/Plugins.qml`

The shell-facing API, following the existing pattern of `services/*` singletons wrapping C++:

```qml
pragma Singleton
Singleton {
    // Every UI entry point is exposed as a HANDLE — { url, status, error } backed by
    // PluginComponentHandle (§5.2) — never as a Component. Loaders instantiate from
    // handle.url; only services are instantiated here.
    readonly property var barWidgets          // ({ id: handle }) — lazily resolved, cached
    readonly property var quickToggles        // ({ id: handle })
    readonly property list<var> panels        // [{ name, plugin, handle, position }]
    readonly property list<var> launcherActions
    readonly property list<var> launcherProviders // [{ action, meta, handle }]
    readonly property list<var> dashboardTabs // [{ meta, handle }]
    readonly property list<var> desktopWidgets// [{ id, plugin, handle, position }]
    readonly property list<var> nexusPages    // [{ meta, handle }]

    function barWidget(id: string): var       // handle, or null (+ one-shot toast) if unknown
    function quickToggle(id: string): var     // ditto
    function isPanel(name: string): bool
    function pluginConfig(plugin: string): var // shared PluginConfig instance (§11)
}
```

Dynamic loading separates **resolution** (one owner) from **instantiation** (two distinct
owners), because `Loader` performs its own instantiation and must not be mixed with manual
`createObject()`:

**`PluginComponentHandle`** — one per manifest entry, owned by the aggregator. Validates the
entry, resolves it to a file URL (dir-escape checked), and tracks:

```
Idle ──▶ Loading ──▶ Ready | Failed
Loading ──▶ Failed   on error   (log errorString(), one-shot Toaster error)
Loading ──▶ Failed   on timeout (10 s watchdog — there is no forever-Loading state;
                                 a component stuck loading is a failure)
```

**Services** (single-instance, aggregator-owned): the handle creates the `Component` with
`Qt.createComponent(url, Component.Asynchronous)` and instantiation happens only on `Ready`,
driven by `statusChanged` — never assumed synchronously, since even `PreferSynchronous` may
return a still-`Loading` component. The aggregator calls `createObject(aggregator, props)`
exactly once, null-checks the return (null → `Failed`, with `try/catch` as a second net), and
retains both the `Component` and the instance for their lifetime (a garbage-collected
component destroys its objects).

**UI slots** (per-screen/per-entry instances — bar, toggles, panels, tabs, desktop widgets,
launcher providers): each slot's `Loader` performs its own instantiation and owns its item;
the handle only supplies the validated URL and failure reporting. Slots call
`loader.setSource(handle.url, { screen: …, screenState: …, entryData: … })` — the
`properties` argument of `setSource` is the **only** mechanism that initializes matching and
`required` properties on the loaded item; assigning properties on the `Loader` element itself
does not propagate to the item. `Loader.status === Loader.Error` routes into the same `Failed`
path as the handle — and it marks the shared handle `Failed` **globally**: the source file
and injected property shape are identical on every screen, so failure is a property of the
file, not the screen, and all screens rendering consistently empty beats screens disagreeing.

`Failed` is sticky per handle: one toast, one log line, and every slot bound to it renders
empty. A failure at any point disables only that plugin's contribution.

## 6. Surface extension points (opening the closed seams)

Each surface extension point maps to one small, local change in the shell:

**Bar** — `modules/bar/Bar.qml`. The `Repeater` over `Config.bar.entries` uses a
`DelegateChooser { role: "id" }` with hardcoded choices. Append one fallback `DelegateChoice`
(no `roleValue` — `DelegateChooser` routes unmatched roles to it):

```qml
DelegateChoice {
    delegate: EntryWrapper {
        Loader {
            Component.onCompleted: {
                const handle = Plugins.barWidget(parent.entryId);
                if (handle)
                    setSource(handle.url, { screen: bar.screen, screenState: bar.screenState,
                                            entryData: parent.modelData });
            }
        }
    }
}
```

`bar.entries` already accepts arbitrary id strings, so no config change is needed. Widget
contract: optional `screen`, `screenState`, and `entryData` properties (the raw entry object,
so users can pass per-entry options in config), initialized via `setSource`'s properties
argument (§5.2). Unknown id → null handle → zero-size item plus a single warning toast.

**Drawer panels** — `modules/drawers/Panels.qml` gains one generic repeater (no per-plugin
imports):

```qml
Repeater {
    model: Plugins.panels
    PluginPanelSlot { screen: root.screen; screenState: root.screenState }
}
```

New `modules/drawers/PluginPanelSlot.qml` generalizes `custom_modules/smcmixer/Wrapper.qml`:
show/hide states + `Anim` transition, a `Loader` activated by
`screenState.pluginOpen(def.name) || visible`, anchors derived from `position`. The loaded
panel receives `screen`, `screenState`, `maxHeight`, and a `close()` callable via Loader
properties. Toggle-only for now (no `Interactions.qml` hover-reveal — future work).

**ScreenState** — `components/ScreenState.qml` is `PersistentProperties` with fixed bools,
which cannot grow dynamically. Add a persisted map:

```qml
property var pluginDrawers: ({})
function pluginOpen(name: string): bool { return !!pluginDrawers[name]; }
function setPluginOpen(name: string, open: bool): void {
    const m = Object.assign({}, pluginDrawers);
    m[name] = open;
    pluginDrawers = m; // reassignment → change notify + persistence
}
```

(Verify `PersistentProperties` persists `var` properties across reloads; fallback is a JSON
string property with the same accessors.)

**IPC** — `modules/Shortcuts.qml` (`IpcHandler` `target: "drawers"`) currently guards with
`typeof screenState[drawer] === "boolean"`. Each of `toggle`/`open`/`close`/`isOpen` gets a
fallback: `if (Plugins.isPanel(drawer)) screenState.setPluginOpen(drawer, ...)`; `list()`
appends plugin panel names. `caelestia shell drawers toggle <name>` then works for plugin
panels with zero CLI changes. The `drawer` verb in `modules/launcher/services/Actions.qml`
gets the same fallback.

**Launcher actions** — `modules/launcher/services/Actions.qml` concatenates
`Plugins.launcherActions` onto the config-driven model, honoring the same `enabled`/`dangerous`
filtering, tagged with the plugin name for display.

**Launcher providers (searchable modes)** — the launcher's modes (`=` calc,
`>scheme`, `>wallpaper`, …) are a prefix dispatch in `modules/launcher/AppList.qml`
(lines ~50–109): each mode pairs a `Searcher` singleton (`Apps`, `Actions`, `Schemes`,
`M3Variants`) with a delegate list. This is what an emoji picker, clipboard history, or window
switcher plugs into. A provider registers an action name (entered via the existing
`autocomplete <action>` verb, so it automatically appears as a launcher action too) and a list
component:

- Contract: the provider's list view receives `query: string` (the search text after the
  prefix) and a `close()` callable via `setSource` properties (§5.2); it owns its own model,
  filtering (reusing `qs.utils` `Searcher`/fuzzy helpers), and item delegates.
- Wiring: `AppList.qml`'s prefix dispatch gets a fallback — if the typed action matches a
  plugin provider, a `Loader.setSource(handle.url, { query, close })` swaps in that
  provider's view (the same mechanism the wallpaper mode uses today via `ContentList.qml`'s
  `showWallpapers` branch, generalized).
- Provider action names are plugin-namespaced against built-in modes; a collision with a
  built-in mode is rejected at validation.

**Utilities quick toggles** — `modules/utilities/cards/Toggles.qml` renders
`utilities.quickToggles` config entries through a `DelegateChooser` on id (`wifi`,
`bluetooth`, `mic`, `settings`, `gameMode`, `dnd`, `vpn`) — structurally identical to the bar.
Same fix: one fallback `DelegateChoice` resolving unknown ids via `Plugins.quickToggle(id)`.
Toggle contract: an item exposing `checked`/`toggled()` compatible with the existing toggle
buttons. Users then enable plugin toggles by adding `{ "id": "<plugin>.<toggle>" }` to
`utilities.quickToggles`.

**Dashboard tabs** — `modules/dashboard/Content.qml` already computes a data-driven
`dashboardTabs` list consumed by `Tabs.qml` and a content `ScriptModel`. Plugin tabs are
appended: `dashboardTabs.concat(Plugins.dashboardTabs)`. Appending (never inserting) keeps
built-in tab indices stable, which matters because `ScreenState.dashboardTab` persists an int
index. Tab contract: `iconName`/`text` metadata plus a content component loaded lazily like
the built-in tabs.

**Desktop widgets** — the background layer (`modules/background/`) gains a repeater over
`Plugins.desktopWidgets`, mirroring `PluginPanelSlot`: a positioned, lazily-loaded slot on the
wallpaper layer with the `position` enum, receiving `screen`. This covers the
floating-lyrics/desktop-clock/pets class of feature without touching `Background.qml`
internals per plugin.

**IPC and global shortcuts** — plugin `services` QML may instantiate Quickshell `IpcHandler`
items directly; Quickshell registers targets dynamically, so `caelestia shell <plugin> …` works
with no shell changes. Convention (validated in review, not enforceable at runtime): targets
are named `<plugin>` or `<plugin>.<sub>`. Hyprland global shortcuts follow from IPC + the
`drawers` fallback (§ above) — a plugin panel is bindable as
`caelestia shell drawers toggle <panel>` or via a `GlobalShortcut` item in the plugin's own
service QML.

**Whole Nexus pages** — `modules/nexus/PageRegistry.qml` and `PageCompRegistry.qml` are
parallel index-aligned lists with exactly three consumers (`Pages.qml`,
`navpane/NavLocations.qml`, `WindowFactory.qml`). Extend without breaking alignment:

- `PageRegistry`: `readonly property list<var> allPages:
  pages.concat(Plugins.nexusPages.map(p => p.meta))` — plugin metas get `category: "plugins"`.
  Switch the three consumers from `pages` to `allPages`.
- `PageCompRegistry`: `function compAt(idx)` — built-in `pageComps[idx]` when
  `idx < pageComps.length`; otherwise the shell-owned `PluginNexusPage` component (a
  `StackPage` wrapping a `Loader`), parameterized with
  `Plugins.nexusPages[idx - pageComps.length].handle` — the Loader `setSource`s the handle's
  URL, and a broken or `Failed` page shows the existing placeholder instead of breaking
  navigation. Both combined views derive from the *same* `Plugins.nexusPages` array, so
  alignment is guaranteed by construction.

Also: implement the stubbed **Plugins page** (`modules/nexus/pages/plugins/PluginsPage.qml`) —
lists all discovered plugins with name/version/author, capability badges derived from the
manifest (§4.1), a status badge (`AwaitingConsent` / `ManifestError` / `MissingDependency` /
`Conflict`, with the `statusMessage`), and an enable/disable toggle writing
`GlobalConfig.plugins.disabled`. `AwaitingConsent` entries get primary treatment: what the
plugin ships (from the trust classifier — "runs a daemon", "adds 2 bar widgets", "executes
commands"), author/source, and an **Approve** action that writes the content digest into
`plugins.acknowledged` and prompts for the reload that activates it. Because approval must
exist before any executable contribution can ever load, a *minimal* version of this page
(list + status + approve/enable) ships in Phase 0, before any extension point. Wire `AboutPage.pluginCount` to
`PluginRegistry.count`.

## 7. Declarative Nexus pages (the deep-plugin substrate)

Deep plugins must be able to *modify existing settings pages* — the material extractor added a
section to Wallpaper & style, an extensible "Extractor" choice, rows conditional on that
choice, and changed the visibility of a pre-existing row. Hand-written QML pages cannot be
patched by data. Therefore the settings *content* of Nexus pages migrates from imperative QML
to a **declarative schema**, interpreted at runtime. This is the largest single piece of the
plugin system and is exactly the "build Nexus procedurally from JSON" idea.

### 7.1 What gets schematized (and what doesn't)

The Nexus row vocabulary is already small and componentized
(`modules/nexus/common/`): `SectionHeader`, `ToggleRow`, `SelectRow`, `SliderRow`,
`StepperRow`, `InfoRow`, `NavRow`, `PopupRow`, plus buttons. These become schema row types.
Truly bespoke widgets (`AudioDeviceList`, the wallpaper `WallItem` grid, `EthernetSection`,
the logo/blob decorations) do **not** get schematized — the schema has a `custom` row type
referencing a QML component. Pages migrate incrementally; a page is patchable as soon as its
settings sections are schema-driven, even if it still embeds custom widgets.

### 7.2 Schema format

Built-in pages live in `modules/nexus/schema/<page>.json` (shipped with the shell, loaded by
the registry at startup). **Every page, section, and row has a stable string id** — ids are
the public patching API and follow the same compatibility discipline as config keys.

```json
{
    "id": "wallpaperAndStyle",
    "sections": [
        {
            "id": "dynamicScheme",
            "header": "Dynamic colour scheme",
            "rows": [
                {
                    "id": "extractor",
                    "type": "select",
                    "label": "Extractor",
                    "subtext": "Colour model used for dynamic schemes",
                    "bind": "shell:services.dynamicSchemeBackend",
                    "extensible": true,
                    "extensionPoint": "scheme.extractor",
                    "options": [ { "value": "legacy", "label": "Legacy" } ],
                    "onChanged": [ ["saveNow"], ["exec", "caelestia", "scheme", "refresh"] ]
                },
                {
                    "id": "legacyFlavour",
                    "type": "select",
                    "label": "Surface contrast",
                    "bind": "shell:services.dynamicSchemeLegacyFlavour",
                    "options": [ { "value": "default", "label": "Standard" },
                                 { "value": "hard", "label": "High" } ],
                    "visibleWhen": { "bind": "shell:services.dynamicSchemeBackend", "in": ["legacy"] },
                    "onChanged": [ ["saveNow"], ["exec", "caelestia", "scheme", "refresh"] ]
                },
                {
                    "id": "darkTheme",
                    "type": "toggle",
                    "label": "Dark theme",
                    "read": "qml:Colours.light",
                    "negate": true,
                    "write": { "call": "Colours.setMode", "map": { "true": "dark", "false": "light" } },
                    "visibleWhen": { "bind": "shell:services.dynamicSchemeBackend", "in": ["legacy"] }
                }
            ]
        },
        {
            "id": "wallpaperGrid",
            "rows": [ { "id": "grid", "type": "custom", "component": "WallpaperGrid.qml" } ]
        }
    ]
}
```

Schema elements:

- **Row types**: `toggle`, `select`, `slider`, `stepper`, `info`, `nav`, `buttonRow`,
  `custom` — each rendered by the existing `modules/nexus/common/` component via a
  `DelegateChooser` in a new `SchemaPage.qml` / `SchemaSection.qml` interpreter.
- **`bind`** — where the value lives:
  - `shell:<path>` — a property path into `GlobalConfig` (walkable in JS because every config
    key is a `Q_PROPERTY`; a small resolver handles get/set + change signal subscription).
  - `plugin:<name>:<key>` — a key in that plugin's own `config.json` (§11). This is how deep
    plugins get settings UI without touching the typed C++ schema.
  - A value binding must supply **read + change-notify + write**. `shell:` and `plugin:`
    binds provide all three intrinsically (Q_PROPERTY notify signals / watched JSON). For
    values not backed by config, a row uses the split form:
    - `read: "qml:<Singleton>.<prop>"` — a property with a NOTIFY signal on a whitelisted
      shell singleton; optional `negate: true` describes the *read* transformation only.
    - `write` — either a `shell:`/`plugin:` path (direct set), or an object
      `{ "call": "<Singleton>.<fn>", "map": { … } }` where `map` translates the row value
      (JSON-stringified as the lookup key) into the call argument before invoking; without
      `map`, the value is passed as-is. The map is required whenever read and write speak
      different vocabularies — the "Dark theme" row above is the canonical case: it *reads*
      `!Colours.light` (boolean) but must *write* `setMode("dark"|"light")`, so `negate`
      alone cannot express the write side.
    - In `onChanged` verb lists, `exec` arguments may use the `$value` placeholder, replaced
      with the row's current value at dispatch time.
    Bare `call:` strings are valid only inside `onChanged` verb lists — never as a value
    bind, since they carry no getter and no notification.
- **`visibleWhen`** — declarative condition: `{ bind, equals | in | truthy }`. Evaluated
  reactively; hidden rows collapse (the `Layout.preferredHeight: visible ? implicitHeight : 0`
  pattern the current page uses by hand becomes automatic).
- **`onChanged`** — list of verb commands, same dispatch style as launcher actions:
  `saveNow`, `exec …`, `toast …`, `openSubPage <id>`.
- **`extensible: true`** on a select row — marks it a **choice extension point**: plugins may
  add options to it (§8). The material "Extractor" select is the archetype. A select that is
  additionally a *backend* extension point (its value picks an executable provider, §10)
  carries `extensionPoint: "<id>"` — a shell-owned identifier (e.g. `scheme.extractor`)
  distinct from the row's schema id (`dynamicScheme.extractor`), because schema ids are UI
  addresses that may move between pages while extension-point ids are cross-process contract
  names that must not. This field is the link `backendProviders` entries validate against. First/last row
  styling (`first`/`last` corner rounding) is computed from the rendered list, not stored —
  eliminating the `last: true` migration churn seen in commit `6338a8fb`.

### 7.3 Interpreter

New `modules/nexus/schema/SchemaPage.qml`: takes a resolved page model (base schema + applied
patches, provided by the registry), renders sections/rows with the existing components, wires
binds/conditions/verbs. `PageCompRegistry` slots for migrated pages point at `SchemaPage`
parameterized by page id. A schema error in any row degrades to an inline error row (and a
toast naming the plugin at fault), never a broken page.

## 8. Page patches — how deep plugins modify existing pages

A `nexusPatches` file is a list of operations addressed by stable ids:

```json
{
    "page": "wallpaperAndStyle",
    "operations": [
        {
            "op": "extendSelect",
            "target": "dynamicScheme.extractor",
            "option": { "value": "material", "label": "Material Color Utilities" }
        },
        {
            "op": "insertRows",
            "section": "dynamicScheme",
            "anchor": "after:legacyFlavour",
            "rows": [
                {
                    "id": "materialVariant",
                    "type": "select",
                    "label": "Material variant",
                    "bind": "plugin:material-schemes:variant",
                    "options": [ { "value": "tonalspot", "label": "Tonal spot" }, "…" ],
                    "visibleWhen": { "bind": "shell:services.dynamicSchemeBackend", "in": ["material"] },
                    "onChanged": [ ["saveNow"], ["exec", "caelestia", "scheme", "refresh"] ]
                }
            ]
        },
        { "op": "appendSection", "page": "wallpaperAndStyle", "section": { "id": "…", "rows": ["…"] } }
    ]
}
```

**Operations**, from safe to restricted:

| Op | Semantics | Conflict rule |
| --- | --- | --- |
| `appendSection` | New section at end of page | Never conflicts. Order: resolution order (§9). |
| `insertRows` | New rows at `start`/`end`/`before:<id>`/`after:<id>` within a section | Never conflicts. Multiple plugins on the same anchor: resolution order. |
| `extendSelect` | Add option(s) to an `extensible` select | Never conflicts (options merge; duplicate `value` from two plugins → second dropped with warning). Targeting a non-extensible select is rejected. |
| `setRowProperty` | Change a property of an existing row (e.g. add a `visibleWhen`) | **Exclusive**: at most one plugin may touch a given `(row, property)`. Second claimant's operation is dropped, both plugins stay loaded, warning surfaced on the Plugins page. |
| `replaceRow` / `removeRow` | Substitute or hide an existing row | **Exclusive per row id**, same rule. Discouraged in docs; exists because "Dark theme becomes legacy-only" is a real need (`setRowProperty` with `visibleWhen` covers that case — `replaceRow` is the last resort). |

**Addressing rules:**

- Ids created by a plugin are implicitly namespaced `<plugin>.<id>` internally; plugins can
  only *reference* (anchor to, extend, modify) built-in ids and ids of plugins they declare in
  `dependencies`. Referencing an id from an undeclared plugin is a validation error — this is
  what makes the dependency graph honest.
- An anchor/target that doesn't exist at apply time (missing optional dependency, upstream
  removed a row) drops **that operation** with a warning — anchored rows fall back to `end` of
  the section if only the anchor row is gone but the section exists. The rest of the patch
  still applies. Never a crash, never a half-rendered page.

**Application order** is the resolution order from §9, so the composed page is identical on
every startup regardless of install order or directory enumeration.

The proof case: the entire "Dynamic colour scheme" material half of commit `6338a8fb`'s
`WallpaperAndStyle.qml` diff is expressible as one `extendSelect` + one `insertRows` (three
rows with `visibleWhen: material`) — and the two "legacy-only" visibility changes to
pre-existing rows are the built-in schema's own `visibleWhen`, not a patch at all, once the
extractor select exists in the base schema.

## 9. Dependency and conflict resolution

Performed by the C++ registry after discovery, before anything loads:

1. **Validate manifests.** Broken JSON / schema violations / dir-escaping paths → status
   `ManifestError`.
2. **Prune.** User disablement (`GlobalConfig.plugins.disabled`) → `Disabled`;
   `minShellVersion` too new → `ManifestError`; executable-class plugins (§4.1) without a
   matching content-digest acknowledgement (§12) → `AwaitingConsent`.
3. **Detect cycles.** Compute strongly-connected components of the dependency graph; every
   plugin in a cyclic SCC — size > 1, *or* a single plugin depending on itself (self-edge) —
   gets `ManifestError` (cycle listed) and is **removed from the ordering graph** — a graph
   with cycles cannot be topologically sorted.
4. **Order.** Topological sort of the remaining acyclic subgraph (dependencies before
   dependents), ties broken by plugin name, lexicographic; cyclic plugins are appended after
   the sorted portion, lexicographically, so *every* discovered manifest has a defined, stable
   position (needed for display and diagnostics). This is the **resolution order** used for
   load order, patch application, and every "multiple plugins did X" tie-break. It is computed
   once from the graph alone — statuses never change it — and is fully deterministic.
5. **Status fixed point.** Repeat until no status changes:
   a. *Dependency propagation:* a candidate plugin whose required dependency is missing,
      version-incompatible, or currently non-Active gets `MissingDependency` (with a chain
      explanation: "requires *scheme-tools ≥ 2.0*, which lost a conflict with *X*").
   b. *Conflicts:* `conflicts` is **symmetric** — a declaration by either side binds both. If
      two conflicting plugins are both still Active, the later one in resolution order gets
      `Conflict` ("conflicts with *X*").
   The loop is needed because these steps feed each other: if `C → B` and `B` then loses a
   conflict with `A`, the next iteration must demote `C` to `MissingDependency`. Termination
   is guaranteed: statuses only ever move from Active to non-Active (monotone), so the loop
   runs at most N iterations for N plugins.
6. **Apply patches** in resolution order, Active plugins only, enforcing the per-operation
   conflict rules from §8. Patch-level conflicts never disable a plugin — only the losing
   operation is dropped, and the Plugins page shows a per-plugin warning list.
7. **Publish state.** Write the resolved state file for external consumers (§10).

Design choice worth stating: dependency problems disable *plugins*; patch problems drop
*operations*. This keeps the failure blast radius proportional to the failure.

## 10. Native code: the out-of-process rule

The material extractor sets the pattern for plugins that need real compute or system access:

- Native code ships as an **executable inside the plugin directory**, declared under
  `executables` in the manifest. In-shell consumers resolve it via `PluginRegistry`
  (`byName("material-schemes").executable("extractor")`).
- **Cross-process authority is a state file, not environment variables** (env vars only reach
  processes the shell launched — a `caelestia` command run from a terminal would never see
  them). The registry atomically writes `$XDG_STATE_HOME/caelestia/plugins-state.json` (write
  to temp file in the same directory, fsync, rename) after every resolution pass (§9 step 7)
  **and, debounced, whenever a published selection or parameter changes at runtime** — a user
  flipping the extractor in Nexus must be visible to the next CLI invocation without a shell
  restart. Contents: active plugins (name, version, trust class, install dir, resolved
  executable paths, per-executable sha256 hashes matching the approved content digest, §12)
  plus the resolved backend extension points (§10.1). The CLI and any external tool treat
  this file as the single source of truth for "which plugin backends exist, where, and which
  is selected". It remains readable when the shell is not running. The CLI does no discovery
  of its own (the narrow built-in-tooling fallback is defined in §10.1).

  Runtime publication has a defined QML→C++ path, because effective parameters like `mode`
  are runtime state owned by QML singletons (`Colours`), not manifest/config data the C++
  registry can derive on its own:

  ```cpp
  // Caelestia.Plugins
  Q_INVOKABLE void PluginRegistry::setExtensionPointState(const QString& point,
                                                          const QVariantMap& parameters);
  ```

  `services/Plugins.qml` observes the relevant sources — the selected backend and
  `requestedMode` from `GlobalConfig.services.*`, the effective light/dark from
  `Colours.currentLight` (**not** `Colours.light`, which is preview-sensitive: it flips during
  scheme *previews* and would leak transient UI state into the contract) — and submits the
  resolved parameter map. C++ merges it with the provider metadata it already owns and
  performs the debounced atomic write. QML decides *what* is true; C++ decides *how* it is
  published.
- Long-running native code is a `daemon` (managed or user-run) speaking JSON-over-unix-socket
  to a plugin `services` QML bridge — smcmixer's pattern, unchanged.
- **Backend selection** (which extractor, which lyrics provider, …) has three coordinated
  parts: the *UI* is a select row carrying an `extensionPoint` id (§7.2, extended via
  `extendSelect`); the *selection storage* is one open typed key in `shell.json`
  (e.g. `services.dynamicSchemeBackend`); and the *runnable mapping* is the manifest's
  `backendProviders` entry (§4), which ties the selection value to an executable key and a
  versioned protocol — `extendSelect` alone adds a UI option and could never tell an external
  consumer what to run. Registry validation keeps the UI and the published provider map from
  ever disagreeing:
  - Provider validation applies **only** to select rows marked with `extensionPoint`; a
    `backendProviders` entry naming an unknown extension-point id is a manifest validation
    error.
  - A plugin's `backendProviders.value` must match an option that same plugin contributes via
    `extendSelect` to the row carrying that `extensionPoint`, and vice versa — a provider
    without a UI option or an option on a backend point without a provider is a validation
    error for that plugin.
  - **Built-in option values are reserved**: a provider claiming `legacy` (or any value in the
    base schema) is dropped with a warning.
  - **Value collisions**: if two plugins claim the same value on the same extension point, the
    later one in resolution order loses *both* its provider entry *and* its corresponding
    select option — dropped together with one warning — so the UI never shows a choice the
    provider map cannot honor, and the map never contains a provider the UI cannot select.

  The resolved mapping is published in the contract file (§10.1); external consumers read only
  that file.

Packaging note: plugins with native executables are naturally Nix-packaged into
`$XDG_DATA_DIRS/caelestia/plugins/<name>/` with their binaries in the store; pure-QML plugins
can just be git-cloned into `~/.config/caelestia/plugins/`.

### 10.1 The shell↔CLI contract

The shell and the CLI are separate repositories in different languages (QML/C++ vs Python),
and today their integration is *implicit duplication*, not a contract. Concretely, the CLI's
material integration (`cli/src/caelestia/utils/material/__init__.py`) hand-parses `shell.json`
with its own copies of the shell's defaults **and its own hardcoded whitelists** —
`backend in {"legacy", "material"}`, a frozen variant list — and discovers the extractor
binary through an ad-hoc chain (`CAELESTIA_MATERIAL_EXTRACTOR` env var → `CAELESTIA_LIB_DIR`
→ `PATH` → `/usr/lib/caelestia/`). This is not just drift-prone; it **breaks the deep-plugin
tier outright**: a plugin registering a new extractor via `extendSelect` would write a backend
value the CLI's whitelist rejects, silently falling back to legacy.

The plugin system therefore requires the boundary to become an explicit, versioned,
language-neutral contract — the state file from §10, whose backend section is structured so
the CLI never reads `shell.json` at all:

```json
{
    "contractVersion": "1.0",
    "extensionPoints": {
        "scheme.extractor": {
            "selected": "material",
            "fallback": "legacy",
            "parameters": { "requestedMode": "auto", "mode": "dark", "legacyFlavour": "default" },
            "providers": {
                "material": {
                    "plugin": "material-schemes",
                    "protocol": "caelestia.scheme-extractor/1",
                    "executable": { "path": "…", "sha256": "…" },
                    "configPath": "/home/user/.config/caelestia/plugin-config/material-schemes.json"
                }
            }
        }
    },
    "plugins": [ { "name": "…", "version": "…", "trustClass": "…", "dir": "…" } ]
}
```

Contract rules:

- **The contract file is complete for its consumers.** Each extension point publishes the
  *effective* selection (defaults already applied by the shell — an absent or never-saved
  `shell.json` key is the shell's problem, resolved before publication), the built-in
  `fallback`, the shell-owned `parameters` relevant to the point, and the full provider map:
  plugin, protocol id, hash-verified executable, and the provider's `configPath` for
  protocol-defined provider settings. The CLI drops its duplicated default tables, its
  whitelists, *and* its knowledge of `services.dynamicSchemeBackend` — it reads only this
  file. Runtime changes republish the file (§10), so it is current, not startup-stale.
- **Open-world validation.** A consumer's valid-value set for an extension point is derived:
  `fallback`/built-ins plus every key in `providers`. `selected` naming no known provider →
  use `fallback` *with a warning*, never silently.
- **Protocols are specs, not strings.** A protocol id like `caelestia.scheme-extractor/1`
  names a versioned document (in this repo, `docs/protocols/<name>.md`) that fixes the argv
  contract, input format, stdout schema, and exit codes. For `scheme-extractor/1` that is the
  current material helper's *actual* interface: `--image <path> --mode <light|dark> --variant
  <string> --contrast <float>` → palette JSON on stdout, non-zero exit = failure with
  diagnostics on stderr. **`auto` is not part of the protocol** — it is a shell/UI concept
  (the extractor itself validates only `light`/`dark`, and the CLI today resolves `auto` to
  the current scheme mode before invoking). The contract preserves that split explicitly: the
  extension point publishes both `requestedMode` (`auto|light|dark`, what the user chose) and
  the effective `mode` (`light|dark`, resolved by the shell at publish time); protocol
  invocations use `mode`, never `requestedMode`. A consumer invokes a provider *only* if it
  recognizes the protocol id; unknown protocol → treated as no provider (fallback + warning).
  New incompatible invocation shapes get a new protocol version. Each provider entry declares
  **exactly one** protocol; a given `(extensionPoint, value)` pair is unique per plugin, so a
  provider upgrades its protocol by replacing the id, not by listing variants.
- **No fallback probing for plugins — ever.** §10 says the CLI does no discovery, and that
  is absolute for plugin providers: a plugin executable that is not in the contract file (and
  hash-valid) does not exist, because probing would bypass consent (§12). The old env/`PATH`
  chain survives only for **built-in tooling** (the in-tree extractor when no contract file
  exists yet, e.g. shell never started), plus an explicit developer escape hatch
  (`CAELESTIA_UNSAFE_PROVIDER=<point>=<path>`) that prints a loud warning and exists for
  plugin development only.
- **Versioning: `contractVersion` is `major.minor`.** Minor increments are additive (new
  fields, new extension points) — consumers ignore unknown fields and accept any minor within
  their major. Major increments are breaking — consumers refuse with a clear error. "Reject
  anything newer" would forbid additive evolution; this doesn't.

Two organizational notes, deliberately kept out of the design's load-bearing path:

- **Repo merge — but contract tests are unconditional.** The contract ships as a canonical
  JSON Schema plus golden fixtures (producer: resolver output for fixture plugin sets;
  consumer: expected CLI behavior per fixture), and **both** CIs run them regardless of repo
  layout — the shell CI validates its output against the schema, the CLI CI validates its
  parsing/fallback behavior against the fixtures. Merging the repos (as this fork intends)
  collapses that into one CI and lets fixtures stay automatically in sync, which is the real
  argument for the merge; staying split just means the fixtures are vendored on the CLI side
  and bumped deliberately.
- **Language.** There are movements toward a Lua CLI. The contract is JSON files, argv, and
  exit codes — nothing in this design assumes Python, and a Lua (or any) rewrite inherits the
  same contract unchanged. This is a reason to resist any temptation to integrate more
  intimately (importing shell headers, linking, shared code): the boundary being "dumb" is
  what makes it survive rewrites on either side.

## 11. Configuration

Two tiers, deliberately split:

1. **`shell.json`** gets one small *typed* addition —
   `plugin/src/Caelestia/Config/pluginsconfig.hpp`:

   ```cpp
   class PluginsConfig : public ConfigObject {
       CONFIG_PROPERTY(QStringList, disabled, {})
       // consent ledger: plugin name → content digest at acknowledgement time (§12):
       // sha256 over the full file inventory, so ANY changed file re-triggers consent.
       CONFIG_PROPERTY(QVariantMap, acknowledged, {})
   };
   // in config.hpp: CONFIG_SUBOBJECT(PluginsConfig, plugins)
   ```

   Enable/disable state flows through the existing watcher/auto-save machinery and is editable
   from Nexus like everything else. The closed schema and unknown-key detection stay intact.
   Backend-selection keys (like `services.dynamicSchemeBackend`) remain typed shell keys with
   open string values.

2. **Per-plugin settings** live *outside the install directory*, at
   `~/.config/caelestia/plugin-config/<name>.json` — never inside the plugin dir, which would
   dirty a git-cloned plugin with its own state and collide on updates (and is read-only for
   store-installed plugins anyway).

   The helper is **`PluginConfig.qml`: a `FileView` (`watchChanges: true`) with explicit
   `JSON.parse`/`JSON.stringify`** — *not* `JsonAdapter`, which maps statically declared QML
   properties to JSON keys and therefore cannot expose arbitrary plugin-defined keys with
   change notification from a generic shared helper. The concrete API:

   ```qml
   PluginConfig {                         // one shared instance per plugin,
       readonly property var values       //   from Plugins.pluginConfig(name)
       function get(key: string, fallback: var): var  // values[key] ?? fallback
       function set(key: string, value: var): void
       signal keyChanged(key: string)
   }
   ```

   Semantics: the file is a flat JSON object (hand-editable, no wrapper key). `set()`
   clone-and-reassigns the internal map — the `values` reassignment fires QML change
   notification for every binding on `values[...]`, `keyChanged(key)` fires for targeted
   listeners, and a debounced save writes the file. External edits (file watcher) reparse and
   fire the same signals with a self-write cooldown, mirroring `RootConfig`'s reload guard.
   **Missing keys and defaults**: a missing key returns the caller's `fallback` — defaults
   live at the point of use (schema rows carry a `default` field; plugin QML passes its own),
   never in the file, so an untouched config file stays empty and upgrade defaults apply
   automatically. A missing or corrupt file yields an empty map (plus one warning toast for
   corrupt); the file is created on first `set()`. `Plugins.pluginConfig(name)` hands the same
   instance to the schema interpreter (backing `plugin:<name>:<key>` binds, which read
   `get(key, row.default)` and write `set(key, v)`) and to the plugin's own QML.

   Rationale: plugin schemas are unknowable to the C++ side; open blobs in `shell.json` would
   defeat unknown-key warnings and add live-reload churn for unrelated edits.

## 12. Risks and mitigations

- **Security.** Plugins are arbitrary QML/JS (and native executables) running with full user
  privileges. No sandbox is possible. Mitigations: load only from user-owned or store
  directories, display author/source prominently, and gate consent by the **trust class**
  derived from the plugin's *contents* (§4.1): `data-only` activates with a badge and no
  prompt (provably no QML, no executables/daemon, no `exec` commands); everything else —
  UI-only QML included, since it runs with the same in-process privileges as a service —
  requires acknowledgement. Consent is enforced structurally: unacknowledged executable-class
  plugins resolve to `AwaitingConsent` before anything loads (§9). The acknowledgement is
  persisted in `plugins.acknowledged` keyed by plugin name → **content digest**: sha256 over
  the plugin's file inventory, computed as follows. Included: every regular file, as
  `(relative path, executable bit, content sha256)`, sorted by path. Excluded: **VCS internals
  only** — `.git/`, `.hg/`, `.svn/` — and the same directories are **forbidden as content**:
  `resolve()` rejects paths under them and no manifest entry point may reference them, so
  nothing excluded from the digest can ever be loaded. (This is why the exclusion list is
  minimal: a broader list — `.github/`, `.gitignore`, editor files — would let runnable QML
  hide in an unhashed path and change without revoking consent. The cost is that editing repo
  metadata like a CI workflow re-triggers consent; that false positive is accepted. The
  narrow list still prevents the real problem — `git fetch`/GC touching `.git/` — from
  revoking consent on unchanged code.) Symlinks: resolved; a target
  inside the plugin directory is hashed as the file it points to, a target outside is a
  `ManifestError` (the same traversal rule `resolve()` applies at load time). Non-regular
  files (sockets, FIFOs, devices) are a `ManifestError`. Any changed file — `Service.qml`, a panel QML, an
  executable — invalidates the approval; a manifest-only hash would not, and is therefore not
  used. Per-executable hashes are additionally published in the state file (§10) so external
  consumers can verify the binary they invoke matches what was approved. State the trust model
  plainly in user docs.
- **Schema-migration scale.** Converting Nexus pages to declarative schema is the riskiest,
  largest work item. Mitigation: it's incremental per page (§7.1); start with
  Wallpaper & style (the proven deep-plugin target), leave bespoke pages hand-written until a
  plugin actually needs to patch them.
- **Id stability becomes API.** Renaming a section/row id breaks plugin patches the way
  renaming a config key breaks configs. Mitigation: document ids as public API; the anchor
  fallback (§8) degrades gracefully; consider an `aliases` map on rows if renames become
  necessary.
- **Bind-path reflection.** `shell:<path>` resolution walks `GlobalConfig` dynamically; a typo
  in a plugin patch must produce a clear per-row error, not a silent no-op — the resolver
  validates paths at patch-apply time and reports through the same warning channel.
- **Quickshell live reload.** `settings.watchFiles: true` in dev may cause the engine to watch
  loaded plugin files, reloading the shell on plugin edits. Verify during Phase 0; if plugin
  dirs are *not* watched, add a "Reload shell" button to the Plugins page.
- **`PersistentProperties` + `var`.** Persistence of `var` map properties across reloads must
  be verified; fallback documented in §6.
- **Nexus index alignment.** Unchanged risk for built-ins (two parallel lists); the
  plugin-appended segment is safe by construction. Add a debug assertion
  `pages.length === pageComps.length`.
- **Collisions.** Registry enforces unique plugin names and panel names; bar widget ids and
  schema ids are plugin-namespaced by construction.
- **SDK drift.** `mise run build-sdk` output is the plugin author's compile-time contract;
  regenerate stubs as part of release so `.qmltypes` match the shipped shell. The schema format
  and id catalog become part of the SDK docs.

## 13. Implementation roadmap

**Phase 0 — Core.** C++ registry with discovery, manifest validation, and the full §9
resolver (dependencies/conflicts/ordering — building this first is deliberate: retrofitting
determinism later is much harder). `plugins.disabled` config, `services/Plugins.qml`,
About-page count.
New: `plugin/src/Caelestia/Plugins/{CMakeLists.txt,pluginregistry.hpp/cpp,pluginmanifest.hpp/cpp,pluginresolver.hpp/cpp}`,
`plugin/src/Caelestia/Config/pluginsconfig.hpp`, `services/Plugins.qml`.
Modified: `plugin/src/Caelestia/CMakeLists.txt`, `Config/config.hpp`,
`modules/nexus/pages/AboutPage.qml`.
Includes the **minimal Plugins page** (replacing the existing PlaceholderComp stub): plugin
list with statuses, the `AwaitingConsent` approve flow, and enable/disable — it must precede
every extension point, since Phase 1 onward loads executable-class content and consent needs a
surface to happen on. (Phase 4 later completes the page: capability badges, patch-conflict
warning lists, plugin-contributed settings pages.)
The resolver is written as a pure function (manifests in → statuses + order out) with a
**Qt Test unit suite** from day one: conflict-dependent propagation to fixed point
(`C → B`, `B` loses to `A` ⇒ `C` demoted), one-sided `conflicts` binding both parties,
cycles, ordering determinism under shuffled discovery order, path-traversal/symlink rejection
in `resolve()`, digest-based consent classification (including `exec`-verb detection in
patches).
Manual validation: hello-world manifest counted; broken manifest → toast; missing dependency
→ `MissingDependency`, not loaded; unacknowledged code plugin → `AwaitingConsent`.

**Phase 1 — Id-registry widgets: bar + quick toggles.** `modules/bar/Bar.qml` and
`modules/utilities/cards/Toggles.qml` each get the fallback `DelegateChoice` — same pattern,
same PR.

**Phase 2 — Drawer panels + IPC.** `modules/drawers/PluginPanelSlot.qml` (new);
`components/ScreenState.qml`, `modules/drawers/Panels.qml`, `modules/Shortcuts.qml`,
`modules/launcher/services/Actions.qml` (drawer-verb fallback).

**Phase 3 — Launcher actions + providers, dashboard tabs, desktop widgets, services,
daemons, executables.** `modules/launcher/services/Actions.qml` (concat);
`modules/launcher/AppList.qml` + `ContentList.qml` (provider mode fallback);
`modules/dashboard/Content.qml` (tab concat); `modules/background/` (desktop widget repeater);
`services/Plugins.qml` (instantiate services; `Process` for managed daemons); executable
resolution + atomic state-file publication for the CLI (§10). Companion change in the CLI
repo: replace hardcoded backend whitelists and env-var executable discovery with
state-file-derived validation (§10.1) — without it, plugin-provided backends silently fall
back to built-ins.

**Phase 4 — Nexus surface.** Complete the Plugins page (capability badges, patch-conflict
warning lists, on top of the Phase 0 minimal version), whole-page contributions,
`PluginConfig.qml`.
New: `modules/nexus/pages/plugins/PluginsPage.qml`, `modules/nexus/PluginNexusPage.qml`,
`components/misc/PluginConfig.qml`.
Modified: `PageRegistry.qml`, `PageCompRegistry.qml` + three consumers.

**Phase 5 — Declarative schema + patches (the deep tier).**
New: `modules/nexus/schema/SchemaPage.qml`, `SchemaSection.qml`, row `DelegateChooser`, the
bind resolver, verb dispatcher, patch applier (C++ side: `NexusSchema` in the registry);
`modules/nexus/schema/wallpaper-and-style.json` as the first migrated page.
Migration proof: rebuild the current Wallpaper & style settings sections (including the whole
"Dynamic colour scheme" section from commit `6338a8fb`) as base schema — pixel-equivalent
result, `WallItem` grid stays a `custom` row.
Patch proof: express the material extractor's UI additions as a `nexusPatches` file from a
fixture plugin and verify the composed page matches the current hand-written one.

**Phase 6 — Reference plugins.**
- smcmixer migrated to a real plugin (panel `smcMixer` at `bottom`, launcher action, Nexus
  page, `SmcMixer.qml` demoted from `pragma Singleton` to a `services` entry). Remove
  hand-wiring from `Panels.qml`, `ScreenState.qml` (IPC name stays `smcMixer` so keybinds
  survive), and `custom_modules` from the CMake install list; check `smcmixer-dev.qml`.
- material-schemes restructured as a deep reference plugin under `extras/plugins/`
  (executable + `extendSelect` patch + `plugin:` binds), even if it continues to ship in-tree —
  it becomes the living documentation for the deep tier.

## 14. Verification plan

1. **hello-world plugin** (`extras/plugins/hello/`): one bar widget, one bottom panel, one
   launcher action, one Nexus page, one heartbeat service. Matrix: About count; `bar.entries`
   id renders; `caelestia shell drawers toggle helloPanel`; `drawers list` includes it;
   launcher action opens it; disable via Nexus removes contributions after reload; corrupted
   manifest/QML → toast, shell intact.
2. **Automated resolver + patch-applier tests** (fixture manifests, run in CI, not by hand):
   required-missing, optional-missing, version-too-old, two-plugin cycle, declared `conflicts`
   pair (declared by one side only), conflict-loss cascading into dependents (fixed point),
   two plugins patching the same row property (exclusive-op conflict), two plugins extending
   the same select (merge), anchor to a removed row (fallback-to-end), consent classification
   of a patch containing `exec` verbs. Each asserts the specified status/warning and a
   byte-identical composed page model across shuffled discovery orders.
   Plus an **async component-failure test**: a plugin QML file that fails at load, one that
   fails at instantiation (`createObject` → null), and one that stays `Loading` — each must
   end in the `Failed` state with the slot empty and the shell responsive.
3. **Schema equivalence**: migrated Wallpaper & style renders equivalent to the current QML
   (manual visual pass + qmllint); material patch fixture composes to match commit
   `6338a8fb`'s hand-written result.
4. **smcmixer migration**: identical UX — same IPC name, keybinds, socket reconnect — zero
   smcmixer references left in `modules/` or `components/`.
5. **Static checks**: `mise run build-sdk` still generates stubs; qmllint /
   `scripts/qml-lint-conventions.py` pass on all new QML.
6. **Contract tests** (§10.1): resolver output for fixture plugin sets validates against the
   canonical contract JSON Schema; CLI golden fixtures cover selected-provider dispatch,
   unknown-selected → fallback + warning, unknown-protocol → fallback + warning, hash
   mismatch → refusal, missing contract file → built-in fallback, and minor/major
   `contractVersion` handling. Run in both CIs while the repos are split.
   Plus a **runtime republication test**: with `requestedMode` held at `auto`, change the
   effective scheme mode (wallpaper-driven light↔dark flip) and assert the contract file's
   `mode` republishes from `light` to `dark` and the next CLI invocation receives the new
   value — while a scheme *preview* (hover) must NOT trigger republication.

## Appendix A — Coverage check against real fork features

The dim-ghub/caelestia-shell fork (411 commits ahead of upstream) is a catalog of what ricers
actually build. Mapping its features onto this design shows what each extension point buys and
where the honest limits are:

| Fork feature | As a plugin | Mechanism |
| --- | --- | --- |
| Emoji picker, clipboard history, window switcher, keybinds list | ✅ | Launcher provider (+ launcher action via `autocomplete`) |
| GIF/video wallpapers with auto-pause | ✅ (deep) | Backend choice extension point on the wallpaper renderer (same pattern as the scheme extractor: `extensible` select + `plugin:` binds), renderer as a plugin component |
| Wallhaven integration | ✅ | Launcher provider or Nexus page + daemon/executable for fetching |
| Bad Apple shader easter egg | ✅ | Quick toggle + desktop widget (shader component on the background layer) |
| Chrome Dino in the notification dock | ⚠️ | Needs a content slot inside an existing panel — possible as a plugin *panel* of its own; patching arbitrary QML panel internals is deliberately unsupported |
| Dashboard terminal tab | ✅ | Dashboard tab |
| macOS-style dock | ✅ | Bar widget (or panel at `bottom`) |
| DND toggle | ✅ | Quick toggle |
| Material workspace icons | ⚠️ | Config-only if upstream exposes the option; replacing the built-in workspaces widget = `bar.entries` swap to a plugin widget (`<plugin>.workspaces`) |
| Drag-and-drop bar components editor | ❌ | Core feature (edits `bar.entries` config) — belongs upstream, and benefits plugins automatically since plugin widgets live in the same list |
| Floating lyrics, desktop clock, shimeji pets | ✅ | Desktop widgets |
| Dynamic wallpaper recoloring | ✅ (deep) | Executable + scheme-pipeline integration (material-extractor pattern) |
| Lock screen redesign, `lockOnStartup` | ❌ / ⚠️ | Wholesale redesign of a core surface is fork/theme territory, not a plugin; `lockOnStartup`-style options are upstream config contributions |
| AI assistant sidebar + `ai` config section | ✅ | Panel or dashboard tab + per-plugin config + daemon |
| New global shortcuts (`caelestia:emoji`, …) | ✅ | IPC/`drawers` fallback + `GlobalShortcut` in plugin service QML |
| Forked CLI requirement | ✅ mostly | `executables` + the plugins state file (§10) lets the stock CLI invoke plugin backends; features needing new CLI *verbs* still need CLI changes |

Reading of the matrix: roughly 80% of what today requires maintaining a 411-commit fork
becomes installable plugins. The remaining ❌/⚠️ rows share a shape — they *replace or
restructure core surfaces* rather than extend them — and that line (extend: plugin;
restructure: fork or upstream PR) is the intended boundary of this design.
