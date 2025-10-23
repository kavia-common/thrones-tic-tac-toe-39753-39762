# tic_tac_toe_flutter_frontend

Thrones Tic Tac Toe: A Game of Thrones-styled Tic Tac Toe built with Flutter.

Features
- Ocean Professional theme (primary #2563EB, secondary/success #F59E0B, error #EF4444, background #F9FAFB, surface #FFFFFF, text #111827)
- Gradient background, rounded corners, subtle shadows
- 3x3 grid with GoT icons for X and O
- Win/draw detection with winning tile highlight
- Score display and persistence with shared_preferences
- Reset board and reset scores controls
- Provider for state management

Architecture
- lib/theme/ocean_theme.dart: Theme configuration
- lib/models/game_state.dart: Game logic, ChangeNotifier, persistence
- lib/widgets/score_bar.dart: Score and status banner
- lib/widgets/board_grid.dart: 3x3 grid with icons and highlights
- lib/widgets/reset_button.dart: Reset controls

Assets
- Please replace placeholder icons with final assets:
  - assets/icons/got_x.png
  - assets/icons/got_o.png

Run locally
- flutter pub get
- flutter run

Notes
- Scores are persisted using shared_preferences across sessions.
- The board resets keep scores; resetting scores also clears the board.
