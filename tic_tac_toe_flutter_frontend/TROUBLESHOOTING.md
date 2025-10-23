Flutter troubleshooting

Common issues:
1) Flutter SDK not found
   - Ensure FLUTTER_HOME or FLUTTER_SDK is set in CI (path to Flutter SDK)
   - flutter --version should work

2) Android SDK not found
   - Ensure ANDROID_HOME/ANDROID_SDK_ROOT points to a valid Android SDK
   - sdkmanager --list should work

3) Could not determine project root
   - Run from app directory:
     cd tic_tac_toe_flutter_frontend
     flutter pub get
     flutter analyze
     flutter test
   - Or from repo root:
     make -f Makefile.app all

4) Assets not found
   - Verify assets/icons/got_x.png and assets/icons/got_o.png exist
   - Ensure pubspec.yaml has the assets paths, then flutter pub get

5) Gradle/Android build issues
   - Delete android/.gradle and build/ folders, then flutter clean
   - Re-run: flutter pub get && flutter build apk

6) Tests fail due to environment
   - Ensure a recent stable Flutter: >= 3.29 and Dart >= 3.7
   - Run only widget tests: flutter test -r expanded
