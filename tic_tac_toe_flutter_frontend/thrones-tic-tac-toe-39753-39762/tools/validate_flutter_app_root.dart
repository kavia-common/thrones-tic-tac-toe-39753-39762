import 'dart:io';

/// PUBLIC_INTERFACE
/// Validates that the Flutter app directory exists and contains a pubspec.yaml.
/// Prints the absolute path to stdout on success and exits(0).
/// On failure, prints diagnostics to stderr and exits with non-zero code.
void main(List<String> args) {
  final rel = args.isNotEmpty ? args.first : 'tic_tac_toe_flutter_frontend';
  final dir = Directory(rel);
  if (!dir.existsSync()) {
    stderr.writeln('ERROR: App directory not found: $rel');
    stderr.writeln('CWD: ${Directory.current.path}');
    exit(10);
  }
  final pubspec = File('${dir.path}/pubspec.yaml');
  if (!pubspec.existsSync()) {
    stderr.writeln('ERROR: pubspec.yaml missing under $rel');
    exit(11);
  }
  stdout.writeln(dir.absolute.path);
}
