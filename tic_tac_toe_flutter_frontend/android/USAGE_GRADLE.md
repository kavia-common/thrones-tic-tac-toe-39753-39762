# Android Gradle Notes

A helper Gradle task is available to run Flutter analysis from CI:

From android/:
- ./gradlew :app:flutterAnalyze

This task loads `../flutterAnalyze.gradle` and invokes:
- `flutter pub get` and `flutter analyze` in the Flutter app root.

If Flutter is not on PATH in CI, set FLUTTER_ROOT so `flutter` is available.
