#!/usr/bin/env bash
set -euo pipefail
APP_DIR="tic_tac_toe_flutter_frontend"
cd "$(dirname "$0")/${APP_DIR}"

echo "[CI] flutter pub get"
flutter pub get

echo "[CI] flutter analyze"
flutter analyze

echo "[CI] flutter test"
CI=true flutter test -r expanded
