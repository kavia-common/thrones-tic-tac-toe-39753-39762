import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/main.dart';
import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';
import 'test_utils.dart';

/**
 PUBLIC_INTERFACE
 Ensures Help page opens from the menu and shows basic content.
*/
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Help page can be opened from menu and shows content', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const MyApp(),
      ),
    );
    await tester.pumpAndSettle();
    await precacheTestIcons(tester);

    // Open menu
    final menuButton = find.byType(PopupMenuButton<String>);
    expect(menuButton, findsOneWidget);
    await tester.tap(menuButton);
    // Allow the menu to animate open
    await tester.pump(const Duration(milliseconds: 200));
    await tester.pumpAndSettle();

    // Tap Help
    await tester.tap(find.text('Help'));
    await tester.pumpAndSettle();

    // Verify Help page content
    expect(find.text('Help'), findsOneWidget);
    expect(find.textContaining('How to play'), findsOneWidget);
    expect(find.textContaining('Reset Board'), findsOneWidget);
  });
}
