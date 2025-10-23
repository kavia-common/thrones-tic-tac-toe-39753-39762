#!/usr/bin/env bash
# Simple test wrapper to run inside the Flutter app root.
# Usage: ./test.sh
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

flutter pub get
CI=true flutter test -r expanded
echo "Tests finished successfully."
