#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$APP_DIR"
echo "Cleaning Flutter build artifacts..."
flutter clean
echo "Fetching packages..."
flutter pub get
echo "Analyzing..."
flutter analyze
echo "Running tests..."
CI=true flutter test -r expanded
echo "Completed clean -> analyze -> test successfully."
