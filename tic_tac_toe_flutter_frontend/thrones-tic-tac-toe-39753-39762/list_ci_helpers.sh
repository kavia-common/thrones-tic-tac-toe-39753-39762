#!/usr/bin/env bash
set -euo pipefail
cat <<'EOF'
Available CI helper scripts (run from repository root):

- ./flutter_ci_entrypoint.sh      # CD into app dir, flutter pub get, analyze, test
- ./run_ci_make.sh                # Use app-local Makefile (analyze, test)
- ./run_flutter_from_root.sh      # Verify flutter exists, cd into app, analyze/test
- ./run_flutter_via_marker.sh     # Resolve app dir from marker, cd, analyze/test
- ./ci_run_flutter_in_app.sh      # Directly cd into app and run analyze/test
- ./ci_entry.sh                   # Validates app dir then delegates to flutter_ci_entrypoint.sh

Flutter app directory:
- tic_tac_toe_flutter_frontend
EOF
