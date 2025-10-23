#!/usr/bin/env bash
set -euo pipefail

# Ensure we are at the Flutter app root (the directory containing pubspec.yaml)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [ ! -f "pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found. Not at Flutter project root."
  exit 1
fi

flutter --version
flutter pub get
flutter analyze
flutter test -r expanded
