# Thrones Tic Tac Toe — Flutter Project Root

This directory is the Flutter project root (contains pubspec.yaml, lib/, android/, test/).

Quick start
- flutter --version
- flutter pub get
- flutter analyze
- flutter test
- flutter run

CI script hints
- Project root: tic_tac_toe_flutter_frontend/
- Pubspec path: tic_tac_toe_flutter_frontend/pubspec.yaml

Notes
- Assets are in assets/icons/ (got_x.png, got_o.png) and are declared in pubspec.yaml.
- Scores persist using shared_preferences.
- Subtle animations via AnimatedContainer and AnimatedSwitcher.
- Accessibility semantics are added to tiles, status, and result banners.
