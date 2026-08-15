# Upstream rebases

- Rebase conflicts here are often migrations, not simple hunk choices: inspect
  upstream API replacements and file moves before preserving fork code.
- Pay particular attention to `ScreenState` changes and the customized
  `custom_modules/smcmixer` tree.
- A shell-only CMake configuration validates the QML install surface, but it
  does not compile native conflict resolutions. After rebases that touch
  `plugin/` or `extras/`, also build `extras;plugin;shell`; this caught an old
  `toJsonObject()` call that current upstream replaced with
  `toJson().toObject()`.
- Inspect `git remote -v` and branch relationships before recommending a
  force-push; use `--force-with-lease` for the rewritten fork branch.
- Keep each remote's fetch namespace distinct: `origin` fetches to
  `refs/remotes/origin/*`, while canonical `upstream` fetches to
  `refs/remotes/upstream/*`. If `git pull upstream main` unexpectedly moves
  `origin/main`, repair `remote.upstream.fetch`, fetch both remotes again, and
  confirm the rebase target is `upstream/main`.
- For the intended defaults, configure `main` to pull/track `upstream/main`
  while `branch.main.pushRemote` remains `origin`. A rewritten fork still
  needs an explicit `git push --force-with-lease origin main`.
