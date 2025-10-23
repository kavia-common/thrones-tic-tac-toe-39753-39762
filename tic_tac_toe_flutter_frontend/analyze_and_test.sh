#!/usr/bin/env bash
# Run analyzer and tests from the Flutter app root.
# Usage: ./analyze_and_test.sh
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Analyze and test completed successfully."
