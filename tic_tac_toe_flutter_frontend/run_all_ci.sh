#!/usr/bin/env bash
set -euo pipefail
flutter --version
flutter pub get
flutter analyze
CI=true flutter test -r expanded
flutter build apk
