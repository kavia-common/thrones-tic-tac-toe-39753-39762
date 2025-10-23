# Usage

This is the Flutter app root for Thrones Tic Tac Toe.

Local development
- flutter pub get
- flutter analyze
- flutter test
- flutter run

From the workspace root:
- ./run_flutter_app.sh pub get
- ./flutter_ci.sh analyze
- ./flutter_ci.sh test
- make -C tic_tac_toe_flutter_frontend analyze
- make -C tic_tac_toe_flutter_frontend test

Common issues
- Error: Could not determine project root directory for Flutter project
  - Cause: Running flutter commands from the workspace root instead of the app directory.
  - Fix: cd tic_tac_toe_flutter_frontend, or use the helper scripts shown above.
