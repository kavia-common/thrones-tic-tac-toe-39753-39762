import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';
import 'package:tic_tac_toe_flutter_frontend/widgets/current_turn_banner.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('CurrentTurnBanner reflects current player and updates after a move', (tester) async {
    final game = GameState();
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: game,
        child: const MaterialApp(
          home: Scaffold(
            body: CurrentTurnBanner(),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('current_turn_banner')), findsOneWidget);
    expect(find.textContaining('Turn: X'), findsOneWidget);

    game.playMove(0); // X plays -> next turn should be O
    await tester.pumpAndSettle();

    expect(find.textContaining('Turn: O'), findsOneWidget);
  });
}
