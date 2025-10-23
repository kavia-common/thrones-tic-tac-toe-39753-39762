import 'dart:io';

void main() {
  final required = [
    'assets/icons/got_x.png',
    'assets/icons/got_o.png',
  ];
  var ok = true;
  for (final path in required) {
    final f = File(path);
    if (!f.existsSync()) {
      stderr.writeln('Missing asset: $path');
      ok = false;
    }
  }
  if (!ok) {
    exit(1);
  }
  stdout.writeln('Assets verified: ${required.join(', ')}');
}
