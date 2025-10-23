#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/tic_tac_toe_flutter_frontend"
flutter pub get
flutter analyze
