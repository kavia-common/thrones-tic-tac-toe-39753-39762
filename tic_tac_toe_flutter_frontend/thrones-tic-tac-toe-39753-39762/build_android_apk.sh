#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")/tic_tac_toe_flutter_frontend" && pwd)"
echo "Building Android APK in: $APP_DIR"
cd "$APP_DIR"
flutter pub get
flutter build apk
echo "APK built at: $APP_DIR/build/app/outputs/flutter-apk/app-release.apk"
