#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_REL="tic_tac_toe_flutter_frontend"
APP_DIR="${ROOT_DIR}/${APP_REL}"
PUBSPEC="${APP_DIR}/pubspec.yaml"

echo "[check_flutter_project_root] Workspace root: ${ROOT_DIR}"
echo "[check_flutter_project_root] Expected Flutter app: ${APP_REL}"

if [ ! -d "${APP_DIR}" ]; then
  echo "ERROR: Flutter app directory not found: ${APP_DIR}" >&2
  exit 1
fi

if [ ! -f "${PUBSPEC}" ]; then
  echo "ERROR: pubspec.yaml not found at: ${PUBSPEC}" >&2
  exit 1
fi

if [ ! -d "${APP_DIR}/lib" ]; then
  echo "ERROR: lib/ directory not found under app dir: ${APP_DIR}/lib" >&2
  exit 1
fi

echo "OK: Flutter app root verified at: ${APP_DIR}"
echo "Tip: Run from repo root -> ./ci_analyze_and_test.sh (robust) or ./flutterw analyze && ./flutterw test"
