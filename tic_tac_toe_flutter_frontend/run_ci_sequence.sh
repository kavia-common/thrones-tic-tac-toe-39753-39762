#!/usr/bin/env bash
set -euo pipefail
bash ./check_flutter_root.sh
flutter pub get
flutter analyze
flutter test -r expanded
