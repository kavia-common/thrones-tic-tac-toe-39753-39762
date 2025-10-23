#!/usr/bin/env bash
# Detects and prints the Flutter project root directory (relative path) for CI tooling.
set -euo pipefail
APP_DIR="tic_tac_toe_flutter_frontend"
if [[ -f "$APP_DIR/pubspec.yaml" && -d "$APP_DIR/lib" && -d "$APP_DIR/android" ]]; then
  echo "$APP_DIR"
  exit 0
fi
echo "ERROR: Could not determine Flutter project root. Expected $APP_DIR with pubspec.yaml, lib/, android/." >&2
exit 1
