#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="${ROOT_DIR}/tic_tac_toe_flutter_frontend"
if [ ! -f "${APP_DIR}/pubspec.yaml" ]; then
  echo "ERROR: pubspec.yaml not found at ${APP_DIR}" >&2
  exit 1
fi
if [ ! -d "${APP_DIR}/lib" ]; then
  echo "ERROR: lib directory not found at ${APP_DIR}" >&2
  exit 1
fi
echo "${APP_DIR}"
