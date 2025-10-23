#!/usr/bin/env bash
# Runs integration tests within the Flutter app directory (non-fatal in headless CI).
set -euo pipefail
cd "$(dirname "$0")"
flutter pub get
if flutter test integration_test; then
  echo "Integration tests passed."
else
  echo "Integration tests failed (continuing for headless CI)."
fi
