#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
APP_DIR="$(dart run print_flutter_app_path.dart || true)"
if [[ -z "${APP_DIR:-}" ]]; then
  echo "Falling back to known relative path..."
  APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"
fi
if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Determined app dir does not exist: $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
echo "Running Flutter in: $APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Done."
