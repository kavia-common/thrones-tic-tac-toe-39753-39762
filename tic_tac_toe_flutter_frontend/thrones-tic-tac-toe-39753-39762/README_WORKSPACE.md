# Thrones Tic Tac Toe Workspace

Flutter app location:
- tic_tac_toe_flutter_frontend/

From the repository root, use these scripts:
- ./ci_analyze_and_test.sh  # robust: resolves Flutter from environment/PATH and targets the app dir explicitly
- ./flutterw analyze
- ./flutterw test
- ./ci.sh                   # pub get + analyze + test (wrapper-based)
- ./ci_all.sh               # pub get + analyze + test (wrapper-based)
- ./ci_build_android.sh
- ./doctor.sh

Or from the app directory:
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run
