import 'package:tic_tac_toe_flutter_frontend/main.dart' as app;

// Simple import check to ensure package resolution works without running the app.
// Intended for tooling sanity checks.
void main() {
  // Reference something simple to ensure tree-shaking doesn't remove imports.
  // ignore: unused_local_variable
  var type = app.MyApp;
  print('Import check OK: MyApp is available.');
}
