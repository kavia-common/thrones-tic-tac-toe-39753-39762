#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"

if [[ ! -d "$APP_DIR" || ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "ERROR: Flutter app directory not found: $APP_DIR" >&2
  exit 2
fi

exec "$ROOT/flutter_ci_entrypoint.sh"
