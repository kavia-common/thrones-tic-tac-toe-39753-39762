import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';

void main() {
  final gs = GameState();
  final emptyCells = gs.board.where((e) => e == null).length;
  print('GameState sanity: current=${gs.currentPlayer}, empty=$emptyCells, over=${gs.gameOver}');
}
