#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")" && pwd)/tic_tac_toe_flutter_frontend"
echo "CI Flutter: using app dir: $APP_DIR"
if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "ERROR: pubspec.yaml not found at $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
