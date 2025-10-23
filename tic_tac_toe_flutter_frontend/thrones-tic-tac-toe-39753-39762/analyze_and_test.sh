#!/usr/bin/env bash
# CI-friendly script to analyze and test the Flutter app from the workspace root.
# Usage:
#   ./analyze_and_test.sh
set -euo pipefail

APP_DIR="tic_tac_toe_flutter_frontend"

cd "$(dirname "$0")"

if [ ! -d "$APP_DIR" ]; then
  echo "Error: Flutter app directory not found at $APP_DIR" >&2
  exit 2
fi

cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

flutter pub get
flutter analyze
# Use headless, non-interactive tests (suitable for CI)
flutter test
echo "Analyze and test completed successfully."
