#!/usr/bin/env bash
# Simple helper to run Flutter commands from the app directory.
# Example:
#   ./run.sh pub get
#   ./run.sh analyze
#   ./run.sh test
#   ./run.sh run -d chrome
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found in PATH." >&2
  exit 127
fi

if [ "$#" -eq 0 ]; then
  set -- analyze
fi

flutter "$@"
