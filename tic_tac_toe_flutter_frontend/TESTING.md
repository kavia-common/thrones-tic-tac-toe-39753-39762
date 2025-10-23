# Testing

Run tests from the Flutter app directory:
- flutter pub get
- flutter test

From the workspace root:
- ./flutter_ci.sh test
- ./run_flutter_app.sh test

Notes
- Tests use Provider to bootstrap GameState.
- Assets (X/O icons) are precached in tests to avoid rendering flakiness.
- If you see a project root error, ensure you are in tic_tac_toe_flutter_frontend before invoking Flutter commands.
