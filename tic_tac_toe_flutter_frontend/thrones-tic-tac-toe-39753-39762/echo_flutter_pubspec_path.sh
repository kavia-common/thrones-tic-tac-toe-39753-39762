#!/usr/bin/env bash
# Prints the relative path to the Flutter project's pubspec.yaml from repo root.
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOCATOR_FILE="$ROOT_DIR/FLUTTER_PROJECT_LOCATOR"

if [[ ! -f "$LOCATOR_FILE" ]]; then
  echo "Error: FLUTTER_PROJECT_LOCATOR not found at repo root." >&2
  exit 1
fi

PUBSPEC_RELATIVE="$(grep -v '^\s*#' "$LOCATOR_FILE" | head -n1 | tr -d '[:space:]')"
if [[ -z "${PUBSPEC_RELATIVE:-}" ]]; then
  echo "Error: No path specified in FLUTTER_PROJECT_LOCATOR." >&2
  exit 2
fi

echo "$PUBSPEC_RELATIVE"
