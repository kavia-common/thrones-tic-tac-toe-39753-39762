Tooling notes for Android

- If Gradle sync fails in CI, ensure JAVA_HOME and ANDROID_HOME are set and use Flutter-managed Gradle via `flutter build`.
- Always run from the Flutter project root: tic_tac_toe_flutter_frontend
- Use `flutter doctor -v` in CI to diagnose environment issues.
