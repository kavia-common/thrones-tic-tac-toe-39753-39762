# Hints for Automated Mobile Analyzers

The Flutter project root is:
- tic_tac_toe_flutter_frontend/

From workspace root, use:
- ./flutter_ci.sh analyze
- ./flutter_ci.sh test

Or change directory first:
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test

If you see “Could not determine project root directory for Flutter project”, ensure you are executing commands inside tic_tac_toe_flutter_frontend.
