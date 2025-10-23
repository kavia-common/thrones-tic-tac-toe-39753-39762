#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$APP_DIR"
echo "Flutter app directory: $APP_DIR"
echo "Flutter doctor output:"
flutter doctor -v || true
echo "Dart version:"
dart --version || true
echo "Pub get:"
flutter pub get
echo "Analyze:"
flutter analyze
echo "Run tests (expanded):"
CI=true flutter test -r expanded
echo "DONE"
