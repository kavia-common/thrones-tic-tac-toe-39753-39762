# Android Run/Build

Run Android from the Flutter app directory:
- cd ../
- flutter pub get
- flutter run -d emulator-5554

Build Android APK (release):
- cd ../
- flutter build apk --release

Alternate (using Gradle wrapper directly):
- ./gradlew :app:assembleDebug
- ./gradlew :app:assembleRelease

Notes
- Ensure ANDROID_HOME (Android SDK) and JAVA are configured.
- If running from the workspace root, use the helper scripts:
  - ../../flutter_ci.sh build apk --release
  - ../../run_flutter_app.sh run
