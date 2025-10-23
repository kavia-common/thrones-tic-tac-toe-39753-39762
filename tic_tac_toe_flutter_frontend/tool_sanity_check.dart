import 'dart:io';

void main() {
  final pubspec = File('pubspec.yaml');
  final libDir = Directory('lib');
  final androidDir = Directory('android');

  if (!pubspec.existsSync() || !libDir.existsSync() || !androidDir.existsSync()) {
    stderr.writeln('Not at Flutter project root. Expected pubspec.yaml, lib/, and android/ here.');
    exitCode = 2;
    return;
  }
  stdout.writeln('Flutter project root sanity check passed at: ${Directory.current.path}');
}
