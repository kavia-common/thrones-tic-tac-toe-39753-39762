import 'dart:io';

void main() async {
  final repoRoot = Directory.current.path;
  final appDir = Directory('${repoRoot}/tic_tac_toe_flutter_frontend');
  if (!appDir.existsSync()) {
    stderr.writeln('App directory not found: ${appDir.path}');
    exit(1);
  }
  final flutterw = File('${repoRoot}/flutterw');
  if (!flutterw.existsSync()) {
    stderr.writeln('flutterw wrapper not found at ${flutterw.path}');
    exit(1);
  }
  // Run flutter pub get
  final pub = await Process.start(flutterw.path, ['pub', 'get'], workingDirectory: appDir.path);
  await stdout.addStream(pub.stdout);
  await stderr.addStream(pub.stderr);
  final pubCode = await pub.exitCode;
  if (pubCode != 0) exit(pubCode);

  // Run flutter analyze
  final analyze = await Process.start(flutterw.path, ['analyze'], workingDirectory: appDir.path);
  await stdout.addStream(analyze.stdout);
  await stderr.addStream(analyze.stderr);
  final analyzeCode = await analyze.exitCode;
  exit(analyzeCode);
}
