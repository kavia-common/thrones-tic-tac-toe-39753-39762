#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
# Ensure dependencies and then build a debug APK
"${DIR}/flutterw" pub get
"${DIR}/flutterw" build apk --debug
echo "Android debug APK built successfully."
