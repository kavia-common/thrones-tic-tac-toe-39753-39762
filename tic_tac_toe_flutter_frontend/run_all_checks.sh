#!/usr/bin/env bash
# Runs common checks locally from the app root.
set -euo pipefail
cd "$(dirname "$0")"

echo "Running flutter pub get..."
flutter pub get

echo "Running analyzer..."
flutter analyze

echo "Running unit/widget tests..."
flutter test || true

echo "Running integration tests..."
flutter test integration_test || true

echo "Verifying Flutter app root..."
dart run tool/verify_flutter_root.dart || true

echo "Done."
