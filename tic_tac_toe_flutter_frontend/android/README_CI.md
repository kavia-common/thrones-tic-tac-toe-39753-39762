Android build notes:

- This Flutter app uses the Android namespace:
  com.example.tic_tac_toe_flutter_frontend
- The Flutter SDK is resolved from FLUTTER_HOME or FLUTTER_SDK if local.properties is absent (CI).
- Run:
  cd ../
  make get analyze test
