#!/usr/bin/env bash
set -euo pipefail
if [ -f "pubspec.yaml" ]; then
  echo "OK: pubspec.yaml found in $(pwd)"
  exit 0
else
  echo "ERROR: pubspec.yaml not found in $(pwd)" >&2
  exit 1
fi
