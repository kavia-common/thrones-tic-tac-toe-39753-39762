#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Analyze and tests passed."
