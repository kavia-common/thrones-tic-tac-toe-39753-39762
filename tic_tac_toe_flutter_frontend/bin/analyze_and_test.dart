import 'dart:io';

Future<void> main() async {
  Future<int> run(List<String> args) async {
    final p = await Process.start(args.first, args.sublist(1), runInShell: true);
    await stdout.addStream(p.stdout);
    await stderr.addStream(p.stderr);
    return p.exitCode;
  }

  if (await run(['flutter', 'pub', 'get']) != 0) exit(1);
  if (await run(['flutter', 'analyze']) != 0) exit(1);
  if (await run(['flutter', 'test', '-r', 'expanded']) != 0) exit(1);
}
