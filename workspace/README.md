# Caelestia workspace

- `shell/`: current customized shell repository (`yfernandes/caelestia-shell`).
- `cli/`: current customized CLI repository (`yfernandes/caelestia-cli`).
- `dots/`: separate desktop configuration repository.
- `nvim/`: editor setup.
- `zen/`: Zen Browser theme integration.
- `reports/`: earlier analysis reports and build log.
- `backups/`: installation rollback snapshots.
- `.archive/2026-10-11/`: older upstream checkout, build trees, Quickshell source/build, and verification files. The upstream checkout's untracked documentation is preserved.

`./reinstall.sh` uses the canonical shell and CLI folders. The active install lives under `~/.local` and `~/.config/quickshell/caelestia`.

Archived CMake build directories retain their original absolute paths; configure a fresh build before reusing relocated sources. The archive preserves data but does not reclaim disk space.
