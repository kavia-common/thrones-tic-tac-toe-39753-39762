import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter_frontend/main.dart';
import 'package:tic_tac_toe_flutter_frontend/models/game_state.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App launches and shows title', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => GameState(),
        child: const MyApp(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Thrones Tic Tac Toe'), findsOneWidget);
  });
}
