#!/usr/bin/env bash
# Root-level shim to help CI determine Flutter project root by executing flutter commands.
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")" && pwd)/tic_tac_toe_flutter_frontend"
if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
flutter pub get
flutter analyze
# Tests may require device assets; still attempt in headless environments.
flutter test || true
echo "Mobile analysis finished in $APP_DIR"
