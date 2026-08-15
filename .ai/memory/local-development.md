# Local development

- `caelestia-shell.service.d/local-development.conf` launches
  `~/.local/bin/caelestia` and selects local native/QML artifacts with
  `CAELESTIA_LIB_DIR=~/.local/lib/caelestia` and
  `QML_IMPORT_PATH=~/.local/lib/qt6/qml`.
- When Quickshell reports a nested QML type failure, follow the chain to the
  final loader error. Check the selected plugin and backing library with
  `ldd` and `readelf -d`; a missing SONAME is an installed-artifact problem,
  not necessarily a QML source error.
- A `libcava` SONAME upgrade can leave old Caelestia service libraries linked
  to `libcava.so.0` while the host provides `libcava.so.1`. Rebuild and
  reinstall the native plugin, then verify the installed library resolves the
  current SONAME before restarting the service.
- `../reinstall.sh` derives destinations from `$HOME`. Isolated runners can
  poison `build-user/CMakeCache.txt` with `/root` destinations or create
  generated files owned by a sandbox identity. Inspect the cache, installed
  timestamps, and ownership when a successful-looking reinstall changes
  nothing; use a clean build directory and explicit `/home/yago/.local` paths
  rather than trusting that cache.
- After installation, verify both layers: `ldd` should have no missing
  libraries, and `systemctl --user status caelestia-shell.service` should stay
  `active (running)` with the CLI and `qs` processes present. The launcher can
  report configuration failure but exit zero, and the unit's
  `RestartPreventExitStatus=0` then leaves it inactive without retrying.
