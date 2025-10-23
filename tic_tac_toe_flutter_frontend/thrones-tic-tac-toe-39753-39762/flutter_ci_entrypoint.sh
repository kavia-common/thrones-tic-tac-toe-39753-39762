#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"

if [[ ! -d "$APP_DIR" ]]; then
  echo "ERROR: Flutter app directory not found at $APP_DIR" >&2
  exit 1
fi

echo "Entering Flutter app directory: $APP_DIR"
cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "ERROR: Flutter SDK not found on PATH." >&2
  exit 127
fi

flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded

echo "Flutter analyze and tests completed successfully."
