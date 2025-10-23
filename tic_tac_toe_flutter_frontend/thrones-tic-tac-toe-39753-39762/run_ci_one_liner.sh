#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(./echo_flutter_app_abs_path.sh)"
if [[ -z "${APP_DIR:-}" || ! -d "$APP_DIR" ]]; then
  echo "Error: Could not resolve Flutter app directory." >&2
  exit 1
fi
cd "$APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "OK"
