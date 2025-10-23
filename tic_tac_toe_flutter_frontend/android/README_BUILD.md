# Android build notes

This Flutter app uses the standard Gradle wrapper and Flutter tooling.

From app root:
- flutter pub get
- flutter build apk --debug

From repository root:
- ./ci_build_android.sh
- ./flutterw build apk --debug

Ensure ANDROID_HOME/ANDROID_SDK_ROOT is set and Java 17+ is available.
