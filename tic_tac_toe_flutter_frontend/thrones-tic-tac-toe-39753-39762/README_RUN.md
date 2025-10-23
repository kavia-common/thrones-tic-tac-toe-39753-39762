# How to run CI for this Flutter workspace

The Flutter app is in tic_tac_toe_flutter_frontend/

From repository root:
- ./ci_all.sh     # pub get, analyze, and test
- ./ci_analyze.sh # analyze only
- ./ci_test.sh    # tests only

Or enter the app directory:
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run
