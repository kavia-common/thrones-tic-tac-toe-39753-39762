#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"
if [[ ! -d "$APP_DIR" ]]; then
  echo "Flutter app directory not found at: $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
echo "Running Flutter in: $APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Flutter analyze + test succeeded."
