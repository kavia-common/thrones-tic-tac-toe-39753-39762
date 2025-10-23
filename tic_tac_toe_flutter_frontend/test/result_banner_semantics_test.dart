import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/main.dart';
import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Result banner exposes proper semantics label/value', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const MyApp(),
      ),
    );

    await tester.pumpAndSettle();

    // Play a quick win for X (0,1,2)
    final tile = (int i) => find.bySemanticsLabel('Tile ${i + 1}');
    await tester.tap(tile(0));
    await tester.pumpAndSettle();
    await tester.tap(tile(3));
    await tester.pumpAndSettle();
    await tester.tap(tile(1));
    await tester.pumpAndSettle();
    await tester.tap(tile(4));
    await tester.pumpAndSettle();
    await tester.tap(tile(2));
    await tester.pumpAndSettle();

    // Result banner exists and contains the text
    expect(find.byKey(const ValueKey('result_banner')), findsOneWidget);
    expect(find.textContaining('Victory to X'), findsOneWidget);
  });
}
