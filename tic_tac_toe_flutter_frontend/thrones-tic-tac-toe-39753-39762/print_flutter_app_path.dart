import 'dart:io';

void main() {
  // Known app relative path
  const appRel = 'tic_tac_toe_flutter_frontend';
  final appDir = Directory(appRel);

  if (!appDir.existsSync()) {
    stderr.writeln('ERROR: Flutter app directory not found at $appRel');
    exit(2);
  }

  // Verify pubspec.yaml exists under app folder.
  final pubspec = File('$appRel/pubspec.yaml');
  if (!pubspec.existsSync()) {
    stderr.writeln('ERROR: pubspec.yaml not found in $appRel');
    exit(3);
  }

  // Print absolute path so CI can cd into it.
  final abs = appDir.absolute.path;
  stdout.writeln(abs);
}
