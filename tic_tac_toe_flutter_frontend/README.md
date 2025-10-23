# tic_tac_toe_flutter_frontend

Thrones Tic Tac Toe: A Game of Thrones-styled Tic Tac Toe built with Flutter.

Features
- Ocean Professional theme (primary #2563EB, secondary/success #F59E0B, error #EF4444, background #F9FAFB, surface #FFFFFF, text #111827)
- Gradient background, rounded corners, subtle shadows
- 3x3 grid with GoT icons for X and O
- Win/draw detection with animated winning tile highlight
- Subtle scale + fade animation when placing X/O
- Accessibility: semantics labels for tiles and controls
- Score display and persistence with shared_preferences
- Reset board and reset scores controls
- Provider for state management

Architecture
- lib/theme/ocean_theme.dart: Theme configuration
- lib/models/game_state.dart: Game logic, ChangeNotifier, persistence
- lib/widgets/score_bar.dart: Score and status banner
- lib/widgets/board_grid.dart: 3x3 grid with icons, animations and highlights
- lib/widgets/reset_button.dart: Reset controls

Assets
- Please replace placeholder icons with final assets:
  - assets/icons/got_x.png
  - assets/icons/got_o.png

Run locally (from app directory)
1) cd tic_tac_toe_flutter_frontend
2) flutter pub get
3) flutter run
   - To run on a specific device: flutter devices, then flutter run -d <device_id>

Tests quickstart (from app directory)
- flutter pub get
- flutter analyze
- flutter test -r expanded
- For integration tests: flutter test integration_test

Notes
- Scores are persisted using shared_preferences across sessions.
- The board resets keep scores; resetting scores also clears the board.
- Animations use AnimatedSwitcher and ScaleTransition for a polished experience.
- Accessibility: Tiles and controls include Semantics. Keyboard support (Space/Enter) is enabled on tiles via BoardShortcuts; status/result announcements use live regions.

CI note
- Ensure CI runs Flutter commands inside this directory (tic_tac_toe_flutter_frontend)
- From repository root, use one of the helper scripts:
  - ../flutter_ci_entrypoint.sh
  - ../run_ci_make.sh
  - make analyze && make test (root Makefile delegates into app directory)
