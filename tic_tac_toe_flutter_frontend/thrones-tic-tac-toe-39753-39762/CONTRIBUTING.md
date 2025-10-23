# Contributing

The Flutter application lives under:
- tic_tac_toe_flutter_frontend/

Local development:
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

CI usage (from repository root):
- ./flutter_ci_entrypoint.sh
- ./run_flutter_from_root.sh
- make analyze && make test

Notes:
- This repository contains a number of helper scripts and markers that point CI to the app directory.
- Do not run flutter commands at the repository root unless you are using one of the provided scripts, which cd into the app directory.
