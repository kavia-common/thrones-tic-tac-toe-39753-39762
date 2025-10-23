import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/tic_tac_toe_flutter_frontend.dart';

void main() {
  testWidgets('Board renders 9 tiles', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => GameState(),
          child: const App(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // There should be 9 tile keys (tile_0 .. tile_8)
    for (var i = 0; i < 9; i++) {
      expect(find.byKey(ValueKey('tile_$i')), findsOneWidget);
    }
  });
}
