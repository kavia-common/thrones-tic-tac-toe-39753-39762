# Quick Start (Flutter)

Flutter app lives here:
- tic_tac_toe_flutter_frontend/

Run locally from app dir:
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

From repo root (CI helpers):
- ./flutter_ci_entrypoint.sh
- ./run_ci_make.sh
- make analyze && make test

Note: Running `flutter` at repo root will not work; use a helper or cd into the app directory.
