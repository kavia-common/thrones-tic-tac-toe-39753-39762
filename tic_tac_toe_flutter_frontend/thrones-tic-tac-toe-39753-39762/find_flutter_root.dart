import 'dart:io';

void main(List<String> args) {
  // Candidate paths relative to this script's directory.
  final candidates = <String>[
    'tic_tac_toe_flutter_frontend',
  ];

  for (final rel in candidates) {
    final dir = Directory(rel);
    final pubspec = File('$rel/pubspec.yaml');
    final lib = Directory('$rel/lib');
    if (dir.existsSync() && pubspec.existsSync() && lib.existsSync()) {
      // Basic android presence is optional for web/desktop, but we check if exists for mobile projects.
      final android = Directory('$rel/android');
      if (!android.existsSync()) {
        // Still acceptable; output path.
        stdout.writeln(rel);
        exit(0);
      } else {
        stdout.writeln(rel);
        exit(0);
      }
    }
  }

  stderr.writeln('Could not determine project root directory for Flutter project');
  exit(1);
}
