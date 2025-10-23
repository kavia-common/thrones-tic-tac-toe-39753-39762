# Thrones Tic Tac Toe (Flutter)

This repository contains:
- A Flutter app at: tic_tac_toe_flutter_frontend/
- A minimal proxy at the repo root to help tools that assume a Flutter app at root.

To run locally (preferred):
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

CI helpers (from repo root):
- ./run_flutter_from_root.sh
- ./run_flutter_via_marker.sh
- make analyze && make test

Notes:
- The real app source, assets, and tests exist under tic_tac_toe_flutter_frontend/.
- The proxy root contains minimal files only to assist root-detection by some CI/analyzers.
