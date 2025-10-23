# Analyst Guide

Flutter app root:
- This directory (tic_tac_toe_flutter_frontend)

Entrypoints
- lib/main.dart (delegates to lib/app.dart)
- lib/app.dart (MaterialApp, routes, pages)

Run (from this directory)
- flutter pub get
- flutter analyze
- flutter test
- flutter run

Notes
- Assets are listed in pubspec.yaml under `assets:`
- Android project is in android/
- Integration tests are under integration_test/
- Lints configured via analysis_options.yaml
