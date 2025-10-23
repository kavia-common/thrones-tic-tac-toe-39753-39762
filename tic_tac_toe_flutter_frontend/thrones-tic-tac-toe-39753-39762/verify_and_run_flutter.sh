#!/usr/bin/env bash
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "ERROR: flutter not found on PATH. Set FLUTTER_HOME/FLUTTER_SDK and add to PATH." >&2
  exit 127
fi

if ! command -v dart >/dev/null 2>&1; then
  echo "ERROR: dart not found on PATH. Ensure Flutter SDK is properly installed." >&2
  exit 127
fi

APP_DIR="$(cd "$(dirname "$0")/tic_tac_toe_flutter_frontend" && pwd)"
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "ERROR: Could not find app pubspec at $APP_DIR/pubspec.yaml" >&2
  exit 2
fi

echo "Verified environment. Running inside: $APP_DIR"
cd "$APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "All checks passed."
