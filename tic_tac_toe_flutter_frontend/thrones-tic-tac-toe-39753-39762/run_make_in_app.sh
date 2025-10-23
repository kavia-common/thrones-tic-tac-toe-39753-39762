#!/usr/bin/env bash
# Proxy make targets from workspace root into the Flutter app directory.
# Usage examples:
#   ./run_make_in_app.sh analyze
#   ./run_make_in_app.sh test
#   ./run_make_in_app.sh get
#   ./run_make_in_app.sh run
set -euo pipefail

APP_DIR="tic_tac_toe_flutter_frontend"

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <make-target> [additional args...]" >&2
  exit 1
fi

TARGET="$1"
shift || true

if [ ! -d "$APP_DIR" ]; then
  echo "Error: App directory '$APP_DIR' not found." >&2
  exit 2
fi

make -C "$APP_DIR" "$TARGET" "$@"
