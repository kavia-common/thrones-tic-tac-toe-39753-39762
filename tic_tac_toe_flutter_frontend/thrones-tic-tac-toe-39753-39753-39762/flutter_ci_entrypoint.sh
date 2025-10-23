#!/usr/bin/env bash
set -euo pipefail
REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_DIR_RELATIVE="tic_tac_toe_flutter_frontend"
APP_DIR="$REPO_ROOT/$APP_DIR_RELATIVE"
if [ ! -d "$APP_DIR" ]; then
  echo "Error: Flutter app directory not found at $APP_DIR_RELATIVE" >&2
  exit 1
fi
cd "$APP_DIR"
echo "Running Flutter CI from: $APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Success: analyze + tests completed."
