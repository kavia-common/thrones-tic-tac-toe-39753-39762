#!/usr/bin/env bash
# CI-safe wrapper for Flutter analyze/test from workspace root.
# Usage:
#   ./flutter_ci.sh analyze
#   ./flutter_ci.sh test
#   ./flutter_ci.sh pub get
#   ./flutter_ci.sh build apk --release
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT_DIR/tic_tac_toe_flutter_frontend"

if [ ! -d "$APP_DIR" ]; then
  echo "Error: Flutter app directory not found at $APP_DIR" >&2
  exit 2
fi

cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

# Default to 'analyze' if no args
if [ "$#" -eq 0 ]; then
  set -- analyze
fi

flutter "$@"
