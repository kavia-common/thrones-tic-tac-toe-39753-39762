Thrones Tic Tac Toe - Flutter App

Run locally:
1) flutter --version   # Flutter >= 3.29, Dart >= 3.7
2) flutter pub get
3) flutter analyze
4) flutter test
5) flutter run

App root:
- This directory contains the app's pubspec.yaml and lib/main.dart.

Assets:
- Icons are at assets/icons/got_x.png and assets/icons/got_o.png (declared in pubspec.yaml).

Notes:
- Scores persist via shared_preferences.
- State management uses provider.
- Subtle animations via AnimatedSwitcher and scale/fade transitions.
- Accessibility semantics added to tiles, status, and app bar title.
