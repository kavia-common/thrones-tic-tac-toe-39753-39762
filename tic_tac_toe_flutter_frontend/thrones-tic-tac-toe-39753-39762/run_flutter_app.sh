#!/usr/bin/env bash
# Non-interactive helper to run Flutter commands from the app directory.
# Usage examples:
#   ./run_flutter_app.sh pub get
#   ./run_flutter_app.sh analyze
#   ./run_flutter_app.sh test
#   ./run_flutter_app.sh run -d chrome
set -euo pipefail
APP_DIR="tic_tac_toe_flutter_frontend"

cd "$(dirname "$0")/$APP_DIR"

# Ensure flutter is available in PATH on CI
if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

# Pass all args to flutter
flutter "$@"
