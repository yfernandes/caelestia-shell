thread_id: 019f5ebd-6610-7b30-a354-07b1d4b5f725
updated_at: 2026-07-14T04:02:59+00:00
rollout_path: /home/yago/.codex/sessions/2026/07/14/rollout-2026-07-14T00-48-18-019f5ebd-6610-7b30-a354-07b1d4b5f725.jsonl
cwd: /home/yago/projects/active/caelestia/shell
git_branch: main

# Documentation consistency work on `docs/plugin-system.md`, followed by a commit attempt and a second, broader spec reconciliation pass

Rollout context: work happened in `/home/yago/projects/active/caelestia/shell` on `docs/plugin-system.md`. The first user request asked to fix the Claude Fable review of internal inconsistencies and then commit the changes. A later user request asked to fix eight additional internal consistency issues in the same plugin design doc, without consulting external resources.

## Task 1: Reconcile the original Claude Fable review and commit it

Outcome: success

Preference signals:

- The user supplied a detailed internal-consistency review and asked to “fix this inconsistencies found by Claude Fable,” indicating they wanted the document brought into self-consistent shape rather than defended or lightly edited.
- After the edit, the user said “Ok, commit your changes,” indicating they want documentation fixes committed as a single focused change when asked.

Key steps:

- Searched `docs/plugin-system.md` for the specific sections mentioned in the review and inspected the relevant ranges around the plugin grammar, page phases, patching rules, and contract file.
- Edited the doc to align the phase/file inventories, command grammar, anchor fallback language, IPC naming wording, launcher-provider naming, dashboard tab persistence wording, and contract/state-file naming.
- Verified with `git diff --check` before commit.
- The first commit attempt failed because `.git/index.lock` could not be created on the read-only filesystem; reran with escalated sandbox permissions and committed successfully as `a2c37def docs: reconcile plugin system specification`.

Failures and how to do differently:

- A plain `git add && git commit` failed under the default filesystem constraints with `fatal: Unable to create .../.git/index.lock: Read-only file system`. For this repo/workflow, commit operations may require escalated sandbox permissions.

Reusable knowledge:

- `git diff --check` was used as the final pre-commit validation and passed.
- The doc’s own roadmap/contract terminology was harmonized in-place instead of adding external assumptions.

References:

- `a2c37def docs: reconcile plugin system specification`
- `git diff --check`
- Failure snippet: `fatal: Unable to create '/home/yago/projects/active/caelestia/shell/.git/index.lock': Read-only file system`

## Task 2: Fix the eight additional internal consistency issues in the plugin design doc

Outcome: partial

Preference signals:

- The user explicitly said, “I found eight internal consistency issues. No codebase or external resources were consulted,” which is a strong cue to stay strictly inside the document and not pull in outside justification.
- The issues were framed as internal inconsistencies, not feature requests, so the repair strategy should preserve the doc’s current model while making it self-consistent.

Key steps:

- Re-read the targeted ranges in `docs/plugin-system.md` around consent/classification, launcher providers, schema binding, patch ops, dependency resolution, contract publication, the appendix, and the verification plan.
- Applied multiple rounds of edits to align the spec around:
  - conflict resolution using snapshot-based simultaneous demotions,
  - approval/consent using immutable content-addressed snapshots to close the lazy-load TOCTOU gap,
  - explicit `builtins` publication in the contract file,
  - synthesized launcher-provider actions,
  - a clearer cross-operation conflict matrix for schema patch operations,
  - a clean split between neutral base schema and material-specific patch content,
  - consistent per-plugin config path naming,
  - a patch-file structure that is an object with `page` + `operations` rather than “a list of operations,”
  - and a narrower appendix claim for GIF/video wallpaper support.
- Verified with `git diff --check` and repeated `rg -n` checks for the revised phrases.

Failures and how to do differently:

- The original consent/digest fix was not sufficient for the review’s lazy-load concern, so the doc was strengthened to require approved executable-class plugins to resolve from a verified content-addressed snapshot rather than the mutable install directory.
- The conflict-resolution wording needed more than a local wording tweak; overlapping conflict chains were made deterministic via immutable status snapshots and simultaneous demotions.
- The contract-file fix needed an explicit builtins structure, not just “fallback plus providers,” to satisfy the reviewer’s completeness complaint.
- The appendix’s GIF/video wallpaper row had to be downgraded rather than defended, because the design does not define a wallpaper-renderer component slot.

Reusable knowledge:

- The doc now states that approved executable-class plugins are exposed only from an immutable content-addressed snapshot under `$XDG_CACHE_HOME/caelestia/plugin-snapshots/<digest>/`, and that component handles, service URLs, daemon commands, and published executable paths resolve against that snapshot.
- `Launcher.launcherActions` now includes synthesized `["autocomplete", action]` entries for providers, not just explicitly declared actions.
- The contract file now has a `builtins` map alongside `fallback` and `providers`; consumers derive valid values from `builtins` plus providers, with no separate built-in table on the consumer side.
- `plugin:<name>:<key>` settings are now described as living at `~/.config/caelestia/plugin-config/<name>.json`.
- The patch format is now explicitly `{"page": ..., "operations": [...]}`.

References:

- `docs/plugin-system.md`
- `git diff --check`
- Current uncommitted state remained after this pass (`git status` still showed `M docs/plugin-system.md` at the end of the rollout)
- High-signal revised phrases:
  - “immutable content-addressed snapshot”
  - “builtins” in the contract file
  - “synthesized action” for launcher providers
  - “Cross-operation conflicts” matrix
  - “A `nexusPatches` file is an object naming one target page and containing an `operations` list”
