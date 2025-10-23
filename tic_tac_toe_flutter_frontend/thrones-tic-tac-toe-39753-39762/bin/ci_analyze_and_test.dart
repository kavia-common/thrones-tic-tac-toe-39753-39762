import 'dart:io';

Future<void> main(List<String> args) async {
  final appDir = Directory('tic_tac_toe_flutter_frontend');
  if (!appDir.existsSync()) {
    stderr.writeln('ERROR: Flutter app dir not found: ${appDir.path}');
    exit(1);
  }
  Future<int> run(List<String> command) async {
    final p = await Process.start(command.first, command.sublist(1),
        workingDirectory: appDir.path, runInShell: true);
    await stdout.addStream(p.stdout);
    await stderr.addStream(p.stderr);
    return await p.exitCode;
  }

  // Get packages, analyze, and test
  if (await run(['flutter', 'pub', 'get']) != 0) exit(1);
  if (await run(['flutter', 'analyze']) != 0) exit(1);
  if (await run(['flutter', 'test', '-r', 'expanded']) != 0) exit(1);
}
