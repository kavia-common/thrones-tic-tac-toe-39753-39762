# Troubleshooting

Common issues and fixes when working with this Flutter app.

1) Flutter commands fail at repository root
- Cause: The real Flutter project lives in this directory (tic_tac_toe_flutter_frontend).
- Fix: Run from here:
  - flutter pub get
  - flutter analyze
  - flutter test
  - flutter run
- From repo root use helpers that cd into the app:
  - ../flutter_ci_entrypoint.sh
  - ../run_ci_make.sh
  - make analyze && make test (root Makefile delegates into this folder)

2) Assets not found
- Ensure pubspec.yaml lists:
  assets:
    - assets/
    - assets/icons/
    - assets/icons/got_x.png
    - assets/icons/got_o.png

3) Android missing SDK/Java errors
- Ensure ANDROID_HOME/ANDROID_SDK_ROOT and Java 11+ are available.
- Re-run: flutter doctor -v

4) Tests flaking on images
- Assets are pre-cached at app start (see bootstrap.dart) and test bootstrap (test/test_bootstrap.dart).
- If issues persist, run: flutter clean && flutter pub get

5) Accessibility screen reader announcements
- Status/result banners use live regions; ensure your screen reader is enabled and focus is on the app window.

If issues persist, open an issue with the exact command and output used.
