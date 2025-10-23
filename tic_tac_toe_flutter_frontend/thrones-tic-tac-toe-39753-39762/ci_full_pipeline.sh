#!/usr/bin/env bash
set -euo pipefail

# Resolve Flutter binary from environment or PATH
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

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="${ROOT_DIR}/tic_tac_toe_flutter_frontend"

if [ ! -f "${APP_DIR}/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found in ${APP_DIR}" >&2
  exit 1
fi

echo "[ci_full_pipeline] Flutter: ${FLUTTER}"
echo "[ci_full_pipeline] App dir: ${APP_DIR}"
cd "${APP_DIR}"

echo "[1/4] flutter pub get"
"${FLUTTER}" pub get

echo "[2/4] flutter analyze"
"${FLUTTER}" analyze

echo "[3/4] flutter test"
CI=true "${FLUTTER}" test -r expanded

if [ "${BUILD_ANDROID_DEBUG:-0}" = "1" ]; then
  echo "[4/4] flutter build apk --debug"
  "${FLUTTER}" build apk --debug
else
  echo "[4/4] Android build skipped (set BUILD_ANDROID_DEBUG=1 to enable)"
fi

echo "[ci_full_pipeline] All steps completed successfully."
