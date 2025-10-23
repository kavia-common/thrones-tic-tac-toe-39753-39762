This repository hosts a Flutter app under:
- tic_tac_toe_flutter_frontend/

Workspace meta pubspec:
- pubspec.yaml at repository root is a meta package to help CI/analyzers discover the Flutter project.
- Use the runner to analyze and test the app from the repository root:

Commands:
- dart run bin/ci_analyze_and_test.dart
- or: cd tic_tac_toe_flutter_frontend && flutter pub get && flutter analyze && flutter test
