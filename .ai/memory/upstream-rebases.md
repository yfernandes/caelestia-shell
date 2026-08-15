# Upstream rebases

- Rebase conflicts here are often migrations, not simple hunk choices: inspect
  upstream API replacements and file moves before preserving fork code.
- Pay particular attention to `ScreenState` changes and the customized
  `custom_modules/smcmixer` tree.
- Verify the shell-only CMake build after resolving conflicts.
- Inspect `git remote -v` and branch relationships before recommending a
  force-push; use `--force-with-lease` for the rewritten fork branch.
