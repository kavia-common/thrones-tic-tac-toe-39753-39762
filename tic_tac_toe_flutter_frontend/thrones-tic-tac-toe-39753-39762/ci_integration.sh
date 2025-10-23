#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
"${DIR}/flutterw" pub get
# Ensure integration_test binding is available and run tests
CI=true "${DIR}/flutterw" test integration_test -r expanded
