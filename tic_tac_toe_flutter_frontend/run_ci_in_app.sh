#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
cd "$APP_DIR"
echo "App dir: $APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Done."
