/// PUBLIC_INTERFACE
/// Prints the relative path to the Flutter app directory and exits with code 0.
/// CI pipelines can run `dart run flutter_app_locator.dart` to discover the app.
void main() {
  // Keep output simple for easy parsing.
  // Output: tic_tac_toe_flutter_frontend
  // Note: The real Flutter app is under this subdirectory.
  // Runners should `cd` into this path before invoking `flutter` commands.
  // This project includes helper scripts at repository root as well.
  print('tic_tac_toe_flutter_frontend');
}
