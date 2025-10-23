# CI Usage

The Flutter app lives in:
- tic_tac_toe_flutter_frontend/

Preferred invocations from repository root:
- ./run_ci_make.sh           # Uses app-local Makefile targets (analyze, test)
- ./run_flutter_from_root.sh # Runs flutter analyze/test inside the app directory
- make analyze && make test  # Root Makefile delegates into the app directory

Avoid running `flutter` commands directly at repo root; always run inside the app directory.
