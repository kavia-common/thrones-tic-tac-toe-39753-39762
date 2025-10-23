#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT_DIR/tic_tac_toe_flutter_frontend"

if [ ! -d "$APP_DIR" ]; then
  echo "Error: Flutter app directory not found at $APP_DIR" >&2
  exit 1
fi

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found in $APP_DIR" >&2
  exit 1
fi

if [ ! -d "$APP_DIR/lib" ]; then
  echo "Error: lib/ directory not found in $APP_DIR" >&2
  exit 1
fi

echo "Using Flutter project at: $APP_DIR"
cd "$APP_DIR"

echo "[run_flutter_ci] flutter pub get"
flutter pub get

echo "[run_flutter_ci] flutter analyze"
flutter analyze

echo "[run_flutter_ci] flutter test"
CI=true flutter test -r expanded
