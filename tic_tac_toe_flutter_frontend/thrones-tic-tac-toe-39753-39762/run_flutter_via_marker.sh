#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
if [[ ! -f "$ROOT_DIR/FLUTTER_PROJECT_PATH" ]]; then
  echo "FLUTTER_PROJECT_PATH not found at repo root." >&2
  exit 1
fi
APP_REL_PATH="$(cat "$ROOT_DIR/FLUTTER_PROJECT_PATH")"
APP_DIR="$ROOT_DIR/$APP_REL_PATH"
if [[ ! -d "$APP_DIR" ]]; then
  echo "Flutter app directory not found: $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
echo "Detected Flutter project at: $APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
