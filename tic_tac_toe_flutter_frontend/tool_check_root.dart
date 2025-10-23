import 'dart:io';

void main() {
  final here = Directory.current.path;
  final hasPubspec = File('pubspec.yaml').existsSync();
  final hasLib = Directory('lib').existsSync();
  final hasAndroid = Directory('android').existsSync();

  if (hasPubspec && hasLib && hasAndroid) {
    stdout.writeln('OK: Flutter project root detected at: $here');
    exit(0);
  } else {
    stderr.writeln('ERROR: Not at Flutter project root: $here');
    stderr.writeln('Expected pubspec.yaml, lib/, and android/ to be present.');
    exit(1);
  }
}
