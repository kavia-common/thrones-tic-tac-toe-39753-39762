Building Android from the Flutter app root

From tic_tac_toe_flutter_frontend directory:
- flutter pub get
- flutter build apk

CI:
- Ensure FLUTTER_HOME or FLUTTER_SDK is set in environment
- ANDROID_HOME/ANDROID_SDK_ROOT must point to your Android SDK
- Java 11 toolchain is configured via Gradle (android/app/build.gradle.kts)
