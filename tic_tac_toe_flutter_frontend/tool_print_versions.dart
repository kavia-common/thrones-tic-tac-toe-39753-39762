import 'dart:io';

Future<void> main() async {
  // Basic root check
  if (!File('pubspec.yaml').existsSync()) {
    stderr.writeln('Not at Flutter project root (pubspec.yaml missing).');
    exit(1);
  }
  // Try to run `flutter --version` and `dart --version` to help CI logs
  try {
    final flutter = await Process.run('flutter', ['--version']);
    stdout.writeln(flutter.stdout);
    stderr.writeln(flutter.stderr);

    final dart = await Process.run('dart', ['--version']);
    stdout.writeln(dart.stdout);
    stderr.writeln(dart.stderr);
  } catch (e) {
    stderr.writeln('Failed to run flutter/dart binaries: $e');
    exit(2);
  }
}
