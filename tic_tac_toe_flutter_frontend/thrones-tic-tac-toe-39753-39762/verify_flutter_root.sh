#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
APP_REL="tic_tac_toe_flutter_frontend"
PUBSPEC_PATH="$ROOT_DIR/$APP_REL/pubspec.yaml"

echo "Verifying Flutter project root..."
echo "Expected app directory: $APP_REL"
if [[ ! -f "$PUBSPEC_PATH" ]]; then
  echo "ERROR: pubspec.yaml not found at $APP_REL/pubspec.yaml" >&2
  echo "Repo contents for debugging:" >&2
  ls -la "$ROOT_DIR" >&2
  exit 1
fi
echo "OK: Found pubspec at $PUBSPEC_PATH"
