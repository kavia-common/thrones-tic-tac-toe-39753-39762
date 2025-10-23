# Thrones Tic Tac Toe (Flutter)

Ocean Professional theme, accessible controls, subtle animations, and persisted scores.

Highlights
- Ocean Professional theme (blue/amber accents)
- Subtle scale + fade on move placement, animated result banner
- Accessibility: Semantics for tiles, controls, and status
- Score persistence via shared_preferences
- Provider state management
- Assets: assets/icons/got_x.png and assets/icons/got_o.png

Run
- cd tic_tac_toe_flutter_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

Notes
- Icons are precached at startup to reduce jank.
- Winning tiles are highlighted; result banner animates in.
- Use scripts at repository root (flutterw, ci_* scripts) if CI cannot auto-detect the app root.
