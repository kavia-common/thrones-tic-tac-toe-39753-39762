#!/usr/bin/env bash
set -euo pipefail
# Prints absolute path to this Flutter project root (directory containing pubspec.yaml).
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "${SCRIPT_DIR}"
