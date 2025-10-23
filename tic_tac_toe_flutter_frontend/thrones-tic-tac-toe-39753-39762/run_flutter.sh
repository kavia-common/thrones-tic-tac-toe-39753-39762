#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "Flutter app not found at $APP_DIR" >&2
  exit 2
fi

cd "$APP_DIR"
echo "Running in Flutter app dir: $APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
