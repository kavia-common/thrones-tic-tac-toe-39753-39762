#!/usr/bin/env bash
set -euo pipefail
# Prints absolute path to this Flutter app's root (where pubspec.yaml resides)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "$SCRIPT_DIR"
