/// This file helps some analyzers/CI tools detect a Flutter entrypoint at the workspace root.
/// It simply forwards to the real Flutter app in tic_tac_toe_flutter_frontend.
import 'tic_tac_toe_flutter_frontend/lib/main.dart' as app;

void main() {
  app.main();
}
