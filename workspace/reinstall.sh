#!/usr/bin/env bash
set -euo pipefail
readonly shell_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
exec "$shell_dir/scripts/reinstall-local.sh" "$@"
