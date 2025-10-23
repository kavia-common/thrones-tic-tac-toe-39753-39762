import 'dart:io';

/// PUBLIC_INTERFACE
/// Validates that the Flutter app exists at tic_tac_toe_flutter_frontend and key files are present.
void main(List<String> args) {
  final root = Directory.current.path;
  final appDir = Directory('$root/tic_tac_toe_flutter_frontend');
  final missing = <String>[];

  if (!appDir.existsSync()) {
    stderr.writeln('Flutter app directory not found: ${appDir.path}');
    exit(2);
  }

  final expected = [
    'pubspec.yaml',
    'lib/main.dart',
    'lib/models/game_state.dart',
    'lib/widgets/board_grid.dart',
  ];

  for (final rel in expected) {
    final f = File('${appDir.path}/$rel');
    if (!f.existsSync()) {
      missing.add(rel);
    }
  }

  if (missing.isNotEmpty) {
    stderr.writeln('Missing expected files in Flutter app directory:');
    for (final m in missing) {
      stderr.writeln(' - $m');
    }
    exit(3);
  }

  stdout.writeln('Flutter project structure OK at: ${appDir.path}');
  exit(0);
}
