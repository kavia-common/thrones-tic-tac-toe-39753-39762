#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")/tic_tac_toe_flutter_frontend" && pwd)"
echo "Running CI from: $APP_DIR"
cd "$APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "OK"
