# Execute Flutter Commands

Flutter project root:
- tic_tac_toe_flutter_frontend/

Run from the workspace root (recommended for automation):
- ./analyze_and_test.sh
- ./flutter_ci.sh analyze
- ./flutter_ci.sh test

Run directly from the app directory:
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

If you encounter “Could not determine project root directory for Flutter project”:
- Ensure you are in tic_tac_toe_flutter_frontend before running flutter commands, or use the helper scripts above.
