CI pointers to Flutter app:

- App path: tic_tac_toe_flutter_frontend
- Pubspec: tic_tac_toe_flutter_frontend/pubspec.yaml
- Entry: tic_tac_toe_flutter_frontend/lib/main.dart

Run from repo root:
- make -f Makefile.app get analyze test
- or: dart run bin/ci_analyze_and_test.dart
- or: ./print_flutter_app_root.sh && cd $(./print_flutter_app_root.sh) && flutter pub get && flutter analyze && flutter test
