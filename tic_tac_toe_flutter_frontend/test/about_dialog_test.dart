import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/tic_tac_toe_flutter_frontend.dart';

void main() {
  testWidgets('About dialog opens from AppBar action', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();

    // Tap About action
    final aboutButton = find.byTooltip('About');
    expect(aboutButton, findsOneWidget);
    await tester.tap(aboutButton);
    await tester.pumpAndSettle();

    // AboutDialog should appear
    expect(find.byType(AboutDialog), findsOneWidget);
    expect(find.text('Thrones Tic Tac Toe'), findsWidgets);
  });
}
