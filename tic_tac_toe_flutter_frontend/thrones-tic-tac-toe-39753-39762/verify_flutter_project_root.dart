import 'dart:io';

void main() {
  final root = Directory.current.path;
  final pubspec = File('$root/tic_tac_toe_flutter_frontend/pubspec.yaml');
  if (pubspec.existsSync()) {
    stdout.writeln('OK: ${pubspec.path}');
    exit(0);
  }
  stderr.writeln('ERROR: pubspec not found at ${pubspec.path}');
  exit(2);
}
