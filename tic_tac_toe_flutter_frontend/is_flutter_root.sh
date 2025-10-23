#!/usr/bin/env bash
# Prints a marker indicating this directory is the Flutter project root.
set -euo pipefail
if [[ -f "pubspec.yaml" && -d "lib" && -d "android" ]]; then
  echo "FLUTTER_PROJECT_ROOT"
  exit 0
fi
echo "NOT_FLUTTER_PROJECT_ROOT" >&2
exit 1
