#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if [[ -f "pubspec.yaml" && -d "lib" && -d "android" && -d "test" ]]; then
  echo "OK: Flutter app root detected at $(pwd)"
  exit 0
fi
echo "ERROR: Not a Flutter app root" >&2
exit 1
