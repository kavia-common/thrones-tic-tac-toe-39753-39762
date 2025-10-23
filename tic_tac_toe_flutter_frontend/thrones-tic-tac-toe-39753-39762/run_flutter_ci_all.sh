#!/usr/bin/env bash
set -euo pipefail
# Optional: export Flutter SDK from common env vars for CI
if [[ -n "${FLUTTER_HOME:-}" ]]; then
  export PATH="$FLUTTER_HOME/bin:$PATH"
elif [[ -n "${FLUTTER_SDK:-}" ]]; then
  export PATH="$FLUTTER_SDK/bin:$PATH"
fi
APP_DIR="$(cd "$(dirname "$0")/tic_tac_toe_flutter_frontend" && pwd)"
echo "Using Flutter app dir: $APP_DIR"
cd "$APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
echo "OK"
