import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/tic_tac_toe_flutter_frontend.dart';

void main() {
  testWidgets('Accessibility: App bar title and reset controls semantics exist', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => GameState(),
          child: const App(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // App bar title by key
    expect(find.byKey(const ValueKey('app_title')), findsOneWidget);

    // Reset controls by semantics label
    final resetSemantics = find.bySemanticsLabel('Reset controls');
    expect(resetSemantics, findsOneWidget);
  });
}
