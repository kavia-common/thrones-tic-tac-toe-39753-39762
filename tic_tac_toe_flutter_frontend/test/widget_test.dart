import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/public_api.dart';

void main() {
  testWidgets('App renders title and app bar', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Thrones Tic Tac Toe'), findsOneWidget);
  });
}
