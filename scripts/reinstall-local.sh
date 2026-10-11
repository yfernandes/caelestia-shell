#!/usr/bin/env bash
set -euo pipefail

readonly source_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
readonly project_dir="$(dirname -- "$source_dir")"
readonly build_dir="$source_dir/build-user"
readonly config_dir="$HOME/.config/quickshell/caelestia"
readonly cli_dir="${CAELESTIA_CLI_SOURCE:-$project_dir/cli-update}"
if [[ ! -f "$cli_dir/src/caelestia/__init__.py" ]]; then
    echo "Set CAELESTIA_CLI_SOURCE to your CLI checkout." >&2
    exit 1
fi
readonly local_lib_dir="$HOME/.local/lib/caelestia"
readonly local_qml_dir="$HOME/.local/lib/qt6/qml"
readonly local_bin_dir="$HOME/.local/bin"
readonly unit_override_dir="$HOME/.config/systemd/user/caelestia-shell.service.d"

cmake -S "$source_dir" -B "$build_dir" -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DVERSION="$(git -C "$source_dir" describe --tags --abbrev=0 upstream/main)" \
    -DGIT_REVISION="$(git -C "$source_dir" rev-parse --short upstream/main)+local" \
    -DENABLE_MODULES="extras;plugin;shell" \
    -DINSTALL_LIBDIR="$local_lib_dir" \
    -DCMAKE_INSTALL_PREFIX="$HOME/.local" \
    -DINSTALL_QMLDIR="lib/qt6/qml" \
    -DINSTALL_QSCONFDIR="$config_dir"
cmake --build "$build_dir" --parallel 2
cmake --install "$build_dir"

install -d "$local_bin_dir"
cat > "$local_bin_dir/caelestia" <<EOF
#!/usr/bin/env bash
readonly cli_source="$cli_dir/src"
if [[ ! -f "\$cli_source/caelestia/__init__.py" ]]; then
    echo 'Local Caelestia source is missing. Rerun reinstall.sh from the current project location.' >&2
    exit 1
fi
export PATH="\$HOME/.local/bin:\$PATH"
export PYTHONPATH="\$cli_source\${PYTHONPATH:+:\$PYTHONPATH}"
export CAELESTIA_LIB_DIR="\${CAELESTIA_LIB_DIR:-\$HOME/.local/lib/caelestia}"
export QML_IMPORT_PATH="\$HOME/.local/lib/qt6/qml\${QML_IMPORT_PATH:+:\$QML_IMPORT_PATH}"
exec "$(command -v python)" -m caelestia "\$@"
EOF
chmod +x "$local_bin_dir/caelestia"

mkdir -p "$unit_override_dir"
printf '[Service]\nExecStart=\nExecStart=%s shell\nEnvironment="CAELESTIA_CLI=%s"\nEnvironment="CAELESTIA_LIB_DIR=%s"\nEnvironment="QML_IMPORT_PATH=%s"\n' \
    "$HOME/.local/bin/caelestia" "$HOME/.local/bin/caelestia" "$local_lib_dir" "$local_qml_dir" \
    > "$unit_override_dir/local-development.conf"

python "$source_dir/scripts/migrate-local-config.py" "$HOME/.config/caelestia/shell.json"

systemctl --user daemon-reload
systemctl --user restart caelestia-shell.service
