#!/usr/bin/env bash
# Some CI systems attempt Android gradle tasks before Flutter; this script aids detection.
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_ANDROID_DIR="$ROOT_DIR/tic_tac_toe_flutter_frontend/android"

if [[ -d "$APP_ANDROID_DIR" ]]; then
  echo "Invoking Gradle in $APP_ANDROID_DIR (assembleDebug dry-run)"
  (cd "$APP_ANDROID_DIR" && ./gradlew tasks >/dev/null 2>&1 || true)
else
  echo "Android directory not found at $APP_ANDROID_DIR (skipping Gradle warmup)"
fi

echo "Running Flutter analysis/tests in app directory..."
"$ROOT_DIR/run_flutter_with_pubspec.sh"
echo "Android gradle warmup + Flutter analyze/tests completed."
