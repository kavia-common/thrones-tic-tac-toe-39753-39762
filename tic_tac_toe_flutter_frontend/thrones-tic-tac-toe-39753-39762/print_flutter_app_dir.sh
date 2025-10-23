#!/usr/bin/env bash
# Prints the absolute path to the Flutter app directory from the repo root.
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT_DIR/tic_tac_toe_flutter_frontend"
if [ ! -d "$APP_DIR" ]; then
  echo "Error: Flutter app directory not found at $APP_DIR" >&2
  exit 1
fi
echo "$APP_DIR"
