import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/tic_tac_toe_flutter_frontend.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App launches and shows title', (tester) async {
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
