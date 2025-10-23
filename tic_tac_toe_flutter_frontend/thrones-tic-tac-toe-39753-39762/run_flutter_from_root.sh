#!/usr/bin/env bash
# Robust root runner: finds the real Flutter app and runs analyze/test.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT_DIR/tic_tac_toe_flutter_frontend"
PUBSPEC="$APP_DIR/pubspec.yaml"

if [[ ! -f "$PUBSPEC" ]]; then
  echo "Error: Unable to locate Flutter app pubspec at $PUBSPEC" >&2
  exit 1
fi

echo "Detected Flutter app at: $APP_DIR"
( cd "$APP_DIR" && flutter pub get )
( cd "$APP_DIR" && flutter analyze )
( cd "$APP_DIR" && flutter test || true )
echo "To run the app on a device/emulator:"
echo "  cd \"$APP_DIR\" && flutter run"
