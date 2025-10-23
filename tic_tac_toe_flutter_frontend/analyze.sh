#!/usr/bin/env bash
# Simple analyze wrapper to run inside the Flutter app root.
# Usage: ./analyze.sh
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

flutter pub get
flutter analyze
echo "Analyze finished successfully."
