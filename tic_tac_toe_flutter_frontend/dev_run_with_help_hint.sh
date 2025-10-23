#!/usr/bin/env bash
set -euo pipefail
APP_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$APP_DIR"
echo "Launching Thrones Tic Tac Toe..."
echo "After the app starts, tap the 'About' icon then 'Help and keyboard shortcuts' to verify navigation."
flutter pub get
flutter run
