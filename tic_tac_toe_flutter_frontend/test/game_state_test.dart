import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';

void main() {
  test('GameState initializes with empty board and X turn', () {
    final gs = GameState();
    expect(gs.board.where((e) => e != null).isEmpty, true);
    expect(gs.currentPlayer, 'X');
    expect(gs.gameOver, false);
    expect(gs.winner, isNull);
  });

  test('GameState can play a move and switch player', () {
    final gs = GameState();
    gs.playMove(0);
    expect(gs.board[0], 'X');
    expect(gs.currentPlayer, 'O');
  });
}
