import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/main.dart';
import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';
import 'test_utils.dart';

/**
 PUBLIC_INTERFACE
 Validates a quick winning sequence shows the result banner.
*/
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Result banner appears with winner after a quick win', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const MyApp(),
      ),
    );
    await tester.pumpAndSettle();
    await precacheTestIcons(tester);

    // Wait for the board to be built
    expect(find.byKey(const ValueKey('board_grid')), findsOneWidget);

    // X: 0, O: 3, X: 1, O: 4, X: 2 -> X wins on top row
    final findTile = (int i) => find.bySemanticsLabel('Tile ${i + 1}');

    await tester.tap(findTile(0));
    await tester.pumpAndSettle();

    await tester.tap(findTile(3));
    await tester.pumpAndSettle();

    await tester.tap(findTile(1));
    await tester.pumpAndSettle();

    await tester.tap(findTile(4));
    await tester.pumpAndSettle();

    await tester.tap(findTile(2));
    await tester.pumpAndSettle();

    // Expect winner text present
    expect(find.textContaining('Victory to X'), findsOneWidget);
  });
}
