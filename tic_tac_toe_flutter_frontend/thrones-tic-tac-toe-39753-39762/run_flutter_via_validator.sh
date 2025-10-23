#!/usr/bin/env bash
set -euo pipefail
ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
cd "$ROOT"
if ! command -v dart >/dev/null 2>&1; then
  echo "ERROR: dart is not available in PATH" >&2
  exit 99
fi
APP_DIR="$(dart run tools/validate_flutter_app_root.dart)"
if [ -z "${APP_DIR:-}" ] || [ ! -d "$APP_DIR" ]; then
  echo "ERROR: validator did not return a valid directory" >&2
  exit 98
fi
echo "App directory: $APP_DIR"
cd "$APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "Done."
