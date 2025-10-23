#!/usr/bin/env bash
set -euo pipefail
cat <<'EOF'
This repository contains a Flutter app inside:
  tic_tac_toe_flutter_frontend/

Run Flutter commands using one of the scripts that cd into the app:
  ./flutter_ci_entrypoint.sh
  ./run_flutter_from_root.sh
  make analyze && make test

Or run directly:
  cd tic_tac_toe_flutter_frontend
  flutter pub get
  flutter analyze
  flutter test -r expanded
EOF
exit 3
