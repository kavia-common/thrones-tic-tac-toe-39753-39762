# Flutter CI Entrypoint

Flutter app resides in:
- tic_tac_toe_flutter_frontend/

From repository root, run:
- ./flutter_ci_entrypoint.sh

This script changes into the app directory and runs:
- flutter pub get
- flutter analyze
- flutter test -r expanded
