# Flutter Root Pointer

The Flutter application is located at:
- tic_tac_toe_flutter_frontend/

Helper scripts:
- echo_flutter_pubspec_path.sh — prints path to app pubspec.yaml
- print_flutter_app_dir.sh — prints absolute path to app directory
- run_flutter_checks.sh — runs analysis and tests from workspace root

CI usage examples:
- PUBSPEC_PATH="$(./echo_flutter_pubspec_path.sh)"
- APP_DIR="$(./print_flutter_app_dir.sh)"
- (cd "$APP_DIR" && flutter pub get && flutter analyze && flutter test)
