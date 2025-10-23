#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
"${DIR}/flutterw" pub get
"${DIR}/flutterw" analyze
CI=true "${DIR}/flutterw" test -r expanded
