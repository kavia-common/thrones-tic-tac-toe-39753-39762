#!/usr/bin/env bash
set -euo pipefail

if [ -n "${FLUTTER_HOME:-}" ] && [ -x "${FLUTTER_HOME}/bin/flutter" ]; then
  FLUTTER="${FLUTTER_HOME}/bin/flutter"
elif [ -n "${FLUTTER_ROOT:-}" ] && [ -x "${FLUTTER_ROOT}/bin/flutter" ]; then
  FLUTTER="${FLUTTER_ROOT}/bin/flutter"
else
  FLUTTER="$(command -v flutter || true)"
fi

if [ -z "${FLUTTER}" ] || [ ! -x "${FLUTTER}" ]; then
  echo "Error: Could not find Flutter binary. Set FLUTTER_HOME or FLUTTER_ROOT, or ensure 'flutter' is on PATH." >&2
  exit 1
fi

APP_DIR="$(cd "$(dirname "$0")" && pwd)/tic_tac_toe_flutter_frontend"
if [ ! -f "${APP_DIR}/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found at ${APP_DIR}" >&2
  exit 1
fi

echo "[test_with_flutter] Using Flutter: ${FLUTTER}"
echo "[test_with_flutter] App dir: ${APP_DIR}"

cd "${APP_DIR}"
"${FLUTTER}" pub get
CI=true "${FLUTTER}" test -r expanded
