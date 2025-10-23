#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"
echo "Repository root: $SCRIPT_DIR"
echo "Running Makefile targets for Flutter app..."
make ci
