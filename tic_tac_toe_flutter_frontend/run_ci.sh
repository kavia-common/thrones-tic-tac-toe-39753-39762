#!/usr/bin/env bash
set -euo pipefail
flutter pub get
flutter analyze
CI=true flutter test -r expanded
