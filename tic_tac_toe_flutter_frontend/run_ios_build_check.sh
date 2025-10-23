#!/usr/bin/env bash
# Non-fatal iOS build check helper for CI analyzers.
set -euo pipefail
cd "$(dirname "$0")"
if [[ -d "ios" ]]; then
  echo "iOS directory present. To build (on macOS with Xcode):"
  echo "  flutter build ios"
else
  echo "iOS directory not present; Flutter can generate it with 'flutter create .'"
fi
exit 0
