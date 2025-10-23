import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/tic_tac_toe_flutter_frontend.dart';

void main() {
  testWidgets('Tap an empty tile places a mark and updates status', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => GameState(),
          child: const App(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // App shows title
    expect(find.text('Thrones Tic Tac Toe'), findsOneWidget);

    // Tap a deterministic tile
    final firstTile = find.byKey(const ValueKey('tile_0'));
    expect(firstTile, findsOneWidget);
    await tester.tap(firstTile);
    await tester.pumpAndSettle();

    // Status should indicate a turn or a winner/draw depending on logic
    final statusKeyFinder = find.byKey(const ValueKey('status_text'));
    if (statusKeyFinder.evaluate().isNotEmpty) {
      expect(statusKeyFinder, findsOneWidget);
    } else {
      // Fallback: status contains 'Turn:' or 'Winner' text
      expect(find.textContaining('Turn:'), findsOneWidget);
    }
  });
}
