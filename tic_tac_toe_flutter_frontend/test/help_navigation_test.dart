import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/tic_tac_toe_flutter_frontend.dart';

void main() {
  testWidgets('Navigate to Help page from About dialog', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();

    // Open About dialog
    final aboutButton = find.byTooltip('About');
    expect(aboutButton, findsOneWidget);
    await tester.tap(aboutButton);
    await tester.pumpAndSettle();

    // Tap "Help and keyboard shortcuts"
    final helpButton = find.text('Help and keyboard shortcuts');
    expect(helpButton, findsOneWidget);
    await tester.tap(helpButton);
    await tester.pumpAndSettle();

    // Help page should be visible
    expect(find.text('Help'), findsOneWidget);
    expect(find.textContaining('Keyboard'), findsOneWidget);
  });
}
