#!/usr/bin/env bash
# One-command local run for developers from the app root.
set -euo pipefail
cd "$(dirname "$0")"

echo "Fetching packages..."
flutter pub get

echo "Analyzing..."
flutter analyze

echo "Starting app..."
flutter run
