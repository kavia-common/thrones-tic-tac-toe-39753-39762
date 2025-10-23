#!/usr/bin/env bash
set -euo pipefail
# Run from app root
flutter pub get
flutter analyze
