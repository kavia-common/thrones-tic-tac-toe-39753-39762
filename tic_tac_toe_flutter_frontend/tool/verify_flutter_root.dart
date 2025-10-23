import 'dart:io';

/// PUBLIC_INTERFACE
/// Verifies this directory is a Flutter app root by checking for expected files.
/// Exits 0 on success; >0 on failure.
void main() {
  final here = Directory.current;
  final pubspec = File('${here.path}/pubspec.yaml');
  final libDir = Directory('${here.path}/lib');
  final androidDir = Directory('${here.path}/android');

  var ok = true;
  if (!pubspec.existsSync()) {
    stderr.writeln('Missing pubspec.yaml');
    ok = false;
  }
  if (!libDir.existsSync()) {
    stderr.writeln('Missing lib/ directory');
    ok = false;
  }
  if (!androidDir.existsSync()) {
    stderr.writeln('Missing android/ directory');
    ok = false;
  }

  if (ok) {
    stdout.writeln('Flutter app root verified at: ${here.path}');
    exit(0);
  } else {
    exit(2);
  }
}
