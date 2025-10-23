Android build notes

- Ensure JAVA_HOME and ANDROID_HOME are set in your environment.
- From the Flutter app root (this directory), run:
  - flutter pub get
  - flutter build apk        # debug build: flutter run builds and installs
  - flutter build apk --release

Troubleshooting:
- If Gradle fails, try: flutter clean && flutter pub get
- Verify Java/Android SDK paths in android/local.properties if building locally.
