#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")/tic_tac_toe_flutter_frontend" && pwd)"
if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "ERROR: pubspec.yaml not found in $APP_DIR" >&2
  exit 1
fi
echo "$APP_DIR"
