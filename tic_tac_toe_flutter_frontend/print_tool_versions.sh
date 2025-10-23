#!/usr/bin/env bash
# Prints Flutter and Dart versions from within the app directory for CI diagnostics.
set -euo pipefail
cd "$(dirname "$0")"
echo "Flutter version:"
flutter --version || true
echo
echo "Dart version:"
dart --version || true
