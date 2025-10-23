#!/usr/bin/env bash
set -euo pipefail
cat <<'EOF'
This is not the Flutter app directory.
The Flutter app lives in:
  tic_tac_toe_flutter_frontend/

Run one of these from repository root:
  ./flutter_ci_entrypoint.sh
  ./run_ci_make.sh
  make analyze && make test

Or change to the app directory:
  cd tic_tac_toe_flutter_frontend
  flutter pub get
  flutter analyze
  flutter test
  flutter run
EOF
exit 3
