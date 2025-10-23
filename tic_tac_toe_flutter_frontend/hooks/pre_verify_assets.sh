#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
dart tool/verify_assets.dart
echo "[pre_verify_assets] Asset check passed."
