#!/usr/bin/env bash
# Delegates analyze/test/run to the actual Flutter app one level up.
set -euo pipefail
WRAPPER_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$WRAPPER_DIR/../tic_tac_toe_flutter_frontend"
if [ ! -d "$APP_DIR" ]; then
  echo "Error: App directory not found at $APP_DIR" >&2
  exit 1
fi
( cd "$APP_DIR" && flutter pub get && flutter analyze && flutter test )
echo "To run the app: (cd \"$APP_DIR\" && flutter run)"
