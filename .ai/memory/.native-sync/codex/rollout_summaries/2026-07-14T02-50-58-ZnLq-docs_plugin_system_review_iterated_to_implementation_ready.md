thread_id: 019f5e88-e70c-7042-b262-dde4cb711850
updated_at: 2026-07-14T03:35:23+00:00
rollout_path: /home/yago/.codex/sessions/2026/07/13/rollout-2026-07-13T23-50-58-019f5e88-e70c-7042-b262-dde4cb711850.jsonl
cwd: /home/yago/projects/active/caelestia/shell
git_branch: main

# Iterative review of `docs/plugin-system.md` for the Caelestia shell plugin system

Rollout context: The user repeatedly asked for reviews of `docs/plugin-system.md` after making fixes, including a late-added CLI section around line ~740. The agent reviewed the document several times, using repo inspection plus current Qt/Quickshell docs via the required `find-docs` / Context7 workflow, and eventually concluded the design was implementation-ready. The final user message said all remaining items were resolved and asked whether to commit the design baseline before Phase 0; the assistant agreed and proposed committing only `docs/plugin-system.md`.

## Task 1: Initial plan review

Outcome: partial

Preference signals:

- The user’s request was simply: "Hey Codex, could you review the docs/plugin-system.md plan?" -> they wanted a review of the written design, not implementation or edits.
- After fixes landed, the user repeatedly asked "can you review again?" -> they prefer iterative re-review after revisions rather than a one-shot approval.
- The user later asked for attention to a newly added CLI section "around line 740ish" -> they expect reviewers to inspect newly added adjacent sections, not only the originally discussed area.

Key steps:

- The agent read the plan in `docs/plugin-system.md`, compared it against current repo QML/config structure, and used Qt/Quickshell docs to validate dynamic loading behavior.
- Main issues found were around dependency/conflict ordering, failure-isolation boundaries, async component loading, cross-process executable discovery, and schema binding semantics.

Failures and how to do differently:

- Treat load-order and dependency-propagation issues as a fixed-point problem, not a one-pass status assignment.
- Do not assume in-process QML can be “failure isolated” in the strong sense; only creation/load failures and out-of-process failures can be bounded that way.
- Any proposal using `Qt.createComponent` must explicitly handle `Component.Loading`, `Component.Error`, `createObject()` null returns, and ownership/lifetime boundaries.

Reusable knowledge:

- `modules/nexus/PageRegistry.qml` and `PageCompRegistry.qml` are parallel registries with index alignment constraints.
- `components/ScreenState.qml` is `PersistentProperties` with fixed bools, so plugin drawer state needs a map-like persistence strategy.
- `modules/launcher/services/Actions.qml` currently treats unknown launcher commands as raw argv, which matters for any manifest command grammar.

References:

- [1] Qt docs confirmed `Qt.createComponent()` can be async, may return `Component.Loading`, and `Loader.setSource(url, properties)` is the correct way to pass initial properties to loaded items.
- [2] Repo inspection showed `services/Colours.qml` uses `Colours.setMode(mode)` and `modules/nexus/pages/WallpaperAndStyle.qml` contains the current extractor/dark-theme logic the plan was modeling.
- [3] The initial review response identified the main blockers and established the later re-review loop.

## Task 2: Review after first round of fixes

Outcome: partial

Preference signals:

- The user said "Fixes onboard, can you review again?" -> they want the agent to verify revised text against the actual document, not trust a summary of the fixes.
- The user kept steering the review toward specific sections and newly introduced claims, which suggests they prefer end-to-end consistency checks across sections, not localized proofreading.

Key steps:

- The agent re-read the updated doc from scratch.
- It cross-checked the resolver, consent model, QML loading, CLI executable resolution, and schema binding model against repo code and Qt docs.
- It found that the revision substantially addressed the original blockers, but raised new issues around consent scope, digest coverage, loader ownership separation, cycle ordering, command grammar consistency, Plugins-page approval flow, and the env-export/state-file mismatch.

Failures and how to do differently:

- When a document uses both `Loader` and manual instantiation, split the ownership model explicitly; don’t describe them as one generic dynamic-loading path.
- If a doc claims consent for executable code only, it must say whether UI QML also requires consent, because in-process QML has the same privilege boundary as services.
- Cross-process authority should be one mechanism only; don’t leave both state-file authority and env/PATH discovery in play for plugin providers.

Reusable knowledge:

- The repo’s Quickshell `JsonAdapter` is property-driven, not a generic arbitrary-key map, so a plugin config helper needs either explicit properties or manual JSON handling.
- The current CLI material integration (`../cli/src/caelestia/utils/material/__init__.py`) really does hardcode `legacy/material` and probe extractor paths via env/PATH.

References:

- [1] `../cli/src/caelestia/utils/material/__init__.py` lines 10–145 show the current hardcoded backend whitelist and extractor discovery chain.
- [2] `docs/plugin-system.md` sections around the manifest schema, resolver, and config now document consent and loading more explicitly after the fixes.
- [3] Current Qt docs for `Loader` confirmed `setSource(url, properties)` is the correct initial-property mechanism.

## Task 3: Review of the new CLI contract section

Outcome: partial

Preference signals:

- The user said: "While it is fixing the docs, i just added a new section about the cli, could you take a look at that too? (Around line 740ish)" -> they wanted the CLI section reviewed as part of the same design pass.
- The user later pushed on exact contract details, indicating they care about the shell↔CLI boundary being a real contract, not a loose guideline.

Key steps:

- The agent inspected the new section and the related CLI code.
- It verified the current CLI behavior: material backend whitelists, extractor probing chain, and the absence of a true contract.
- It then checked the design against the actual extractor helper and the proposed state-file publication model.

Failures and how to do differently:

- A state file that only lists executable paths is not enough for a backend contract; it also needs a provider mapping and protocol definition.
- If a protocol says `--mode auto`, but the executable only accepts `light|dark`, the contract must explicitly separate requested vs effective mode.
- Don’t leave fallback discovery available for plugin providers if the contract says the state file is authoritative; that creates a bypass around consent.

Reusable knowledge:

- The actual extractor helper in `extras/material-extractor.cpp` accepts `--image`, `--mode light|dark`, `--variant`, and `--contrast`, and emits palette JSON.
- The current CLI `material` helper in `../cli/src/caelestia/utils/material/__init__.py` derives settings from `shell.json` and probes the extractor via env/PATH.

References:

- [1] `extras/material-extractor.cpp` argument parsing shows `--mode` only accepts `light|dark`.
- [2] `docs/plugin-system.md` now contains a dedicated shell↔CLI contract section with `extensionPoints`, `providers`, `protocol`, and runtime publication notes.
- [3] The user later clarified and accepted a runtime publisher path (`PluginRegistry.setExtensionPointState(point, parameters)`) and a contract that republishes on runtime changes.

## Task 4: Final end-to-end verification and commit boundary

Outcome: success

Preference signals:

- The user said: "I believe that one more review and we are golden" -> they wanted a final proofread-level pass before treating the doc as done.
- After all issues were resolved, the user explicitly asked whether the design baseline should be committed before Phase 0 -> they prefer a commit boundary that freezes the design before implementation starts.
- The assistant proposed a commit plan that stages only `docs/plugin-system.md` and leaves implementation untouched, matching the user’s requested boundary.

Key steps:

- The agent verified the last remaining changes: runtime republication path, `Colours.currentLight` vs preview-sensitive `Colours.light`, version cap, extension-point identity, protocol honesty, digest exclusions, and contract tests.
- It confirmed the document now includes:
  - `PluginRegistry.setExtensionPointState(point, parameters)` as the QML→C++ publication path,
  - a `backendProviders` manifest field tied to shell extension-point ids,
  - a `PluginConfig` helper implemented with `FileView` + explicit JSON handling rather than generic `JsonAdapter`,
  - a `major.minor` contract version policy,
  - and a testing plan covering both static and runtime republication behavior.
- The final assistant response proposed committing only `docs/plugin-system.md` with message `docs: add plugin system design`.

Failures and how to do differently:

- When a contract depends on runtime QML-owned state, the design must name the QML→C++ handoff and specify which source of truth is used (`Colours.currentLight`, not preview state).
- Make the test suite cover runtime republication as well as static contract generation; otherwise the document can still drift at the edge between UI state and CLI-visible state.

Reusable knowledge:

- The latest document version had no unresolved design blockers by the final pass.
- The commit boundary the user wants is “design baseline first, implementation later,” with the doc committed alone before Phase 0.

References:

- [1] `docs/plugin-system.md` final sections around `§10`, `§10.1`, `§12`, and `§14` contain the runtime publication, contract, consent, and verification details.
- [2] `services/Colours.qml` shows `light` is `showPreview ? previewLight : currentLight`, so `currentLight` is the stable signal for contract publication.
- [3] The assistant’s final proposed plan was to stage and commit only `docs/plugin-system.md` as the baseline before any code changes.
