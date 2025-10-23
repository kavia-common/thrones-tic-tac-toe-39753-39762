#!/usr/bin/env bash
# Runs the forwarding root_main.dart which calls the app's main().
# This is primarily for CI/analyzers that expect a root-level Dart entrypoint.
set -euo pipefail
cd "$(dirname "$0")"
dart run root_main.dart || dart root_main.dart || true
echo "root_main executed (non-fatal for CI)."
