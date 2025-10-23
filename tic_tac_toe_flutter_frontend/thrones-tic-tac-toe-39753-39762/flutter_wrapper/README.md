# flutter_wrapper

This is a lightweight wrapper to help CI and analysis tools recognize a Flutter
project at the workspace root. It delegates to the actual app at:

- ../tic_tac_toe_flutter_frontend

Usage from workspace root:
- cd flutter_wrapper
- flutter pub get
- (cd ../tic_tac_toe_flutter_frontend && flutter analyze && flutter test && flutter run)
