#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$ROOT/tic_tac_toe_flutter_frontend"
if [[ -d "$APP_DIR" && -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "OK: Flutter app found at $APP_DIR"
  echo "Run: cd tic_tac_toe_flutter_frontend && flutter pub get && flutter analyze && flutter test"
  exit 0
fi

echo "ERROR: Flutter app directory not found at: $APP_DIR" >&2
echo "Use one of:" >&2
echo "  ./flutter_ci_entrypoint.sh" >&2
echo "  ./run_ci_make.sh" >&2
echo "  make analyze && make test" >&2
exit 2
