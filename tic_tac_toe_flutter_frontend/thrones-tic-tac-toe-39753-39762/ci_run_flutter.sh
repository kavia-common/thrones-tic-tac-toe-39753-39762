#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_REL="tic_tac_toe_flutter_frontend"
APP_DIR="$ROOT/$APP_REL"
if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory missing: $APP_DIR" >&2
  exit 2
fi
echo "Using Flutter app dir: $APP_DIR"
cd "$APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "CI run succeeded."
