#!/usr/bin/env bash
set -euo pipefail
echo "[android/check_env] Checking Android SDK and Java..."
: "${ANDROID_HOME:=${ANDROID_SDK_ROOT:-}}"
if [ -z "${ANDROID_HOME}" ]; then
  echo "ERROR: ANDROID_HOME or ANDROID_SDK_ROOT is not set." >&2
  exit 1
fi
if ! command -v java >/dev/null 2>&1; then
  echo "ERROR: Java is not on PATH." >&2
  exit 1
fi
echo "OK: ANDROID_HOME=${ANDROID_HOME}"
java -version
echo "[android/check_env] Environment looks OK."
