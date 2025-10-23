#!/usr/bin/env bash
set -euo pipefail
NAME=$(grep -E '^name:' pubspec.yaml | awk '{print $2}')
echo "Package name: ${NAME}"
test -f pubspec.yaml || (echo "pubspec.yaml not found" >&2; exit 1)
exit 0
