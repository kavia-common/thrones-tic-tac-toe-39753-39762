#!/usr/bin/env bash
set -euo pipefail
# CI entry point: analyze the Flutter project from workspace root.
APP_DIR="tic_tac_toe_flutter_frontend"
cd "$(dirname "$0")/${APP_DIR}"
flutter pub get
flutter analyze
