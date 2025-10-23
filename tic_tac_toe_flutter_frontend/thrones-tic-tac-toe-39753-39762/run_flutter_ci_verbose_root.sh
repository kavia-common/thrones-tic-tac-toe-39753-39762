#!/usr/bin/env bash
set -euo pipefail
ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"
echo "[root] Repository root: $ROOT"
echo "[root] Expected app dir: $APP_DIR"
if [ ! -d "$APP_DIR" ]; then
  echo "[root][ERROR] App directory missing: $APP_DIR" >&2
  ls -la "$ROOT" >&2 || true
  exit 2
fi
(
  set -x
  cd "$APP_DIR"
  flutter --version
  dart --version
  flutter doctor -v
  flutter pub get
  flutter analyze
  CI=true flutter test -r expanded
)
echo "[root] CI flow completed successfully."
