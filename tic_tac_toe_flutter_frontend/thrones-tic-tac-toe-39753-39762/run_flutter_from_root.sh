#!/usr/bin/env sh
set -eu
# Resolve repo root
ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
APP_REL="tic_tac_toe_flutter_frontend"
APP_DIR="$ROOT_DIR/$APP_REL"

if [ ! -d "$APP_DIR" ]; then
  echo "Error: Flutter app directory not found at $APP_REL" >&2
  exit 1
fi

echo "Changing directory to Flutter app: $APP_DIR"
cd "$APP_DIR"

echo "flutter pub get"
flutter pub get

echo "flutter analyze"
flutter analyze

echo "flutter test -r expanded"
CI=true flutter test -r expanded

echo "Completed successfully."
