#!/usr/bin/env bash
# Echo the absolute path to this app's pubspec.yaml (some CI/analyzers expect this exact output).
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "${SCRIPT_DIR}/pubspec.yaml"
