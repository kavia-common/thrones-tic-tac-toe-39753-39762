import 'dart:io';

void main(List<String> args) async {
  // Resolve the Flutter app directory relative to repository root.
  final appDir = Directory('tic_tac_toe_flutter_frontend');
  if (!await appDir.exists()) {
    stderr.writeln('ERROR: Flutter app directory not found: ${appDir.path}');
    exit(1);
  }
  // If invoked without args, print help.
  if (args.isEmpty) {
    stdout.writeln('Usage: dart run bin/run_flutter_app.dart <flutter-args>');
    stdout.writeln('Examples:');
    stdout.writeln('  dart run bin/run_flutter_app.dart pub get');
    stdout.writeln('  dart run bin/run_flutter_app.dart analyze');
    stdout.writeln('  dart run bin/run_flutter_app.dart test');
    stdout.writeln('  dart run bin/run_flutter_app.dart run');
    exit(0);
  }
  final result = await Process.start(
    'flutter',
    args,
    workingDirectory: appDir.path,
    runInShell: true,
  );
  // Pipe output to this process.
  await stdout.addStream(result.stdout);
  await stderr.addStream(result.stderr);
  final exitCode = await result.exitCode;
  exit(exitCode);
}
