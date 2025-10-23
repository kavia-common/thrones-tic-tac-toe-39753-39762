#!/usr/bin/env bash
set -euo pipefail
# Delegate to the robust marker-driven runner.
"$(cd "$(dirname "$0")" && pwd)"/run_flutter_via_marker.sh
