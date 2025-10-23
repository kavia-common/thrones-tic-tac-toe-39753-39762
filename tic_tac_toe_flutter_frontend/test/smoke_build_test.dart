import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/app.dart';
import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';

void main() {
  testWidgets('App builds and shows app title', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Thrones Tic Tac Toe'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
  });
}
