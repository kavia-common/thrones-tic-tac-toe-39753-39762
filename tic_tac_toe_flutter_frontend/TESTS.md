# Tests

Widget tests:
- test/smoke_build_test.dart
- test/about_dialog_test.dart
- test/help_navigation_test.dart
- test/assets_sanity_test.dart
- test/asset_manifest_test.dart

Integration tests:
- integration_test/driver_test.dart
- integration_test/app_structure_test.dart

Run:
- flutter pub get
- flutter test -r expanded
- For integration tests locally: `flutter test integration_test`
