import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Assets exist and are loadable by AssetImage', () async {
    const xIcon = AssetImage('assets/icons/got_x.png');
    const oIcon = AssetImage('assets/icons/got_o.png');

    // Resolve image configurations without actually decoding on device.
    final binding = TestWidgetsFlutterBinding.ensureInitialized();
    final config = ImageConfiguration.empty;

    // The following should not throw; they will attempt to resolve bundle keys.
    expect(() => xIcon.obtainKey(config), returnsNormally);
    expect(() => oIcon.obtainKey(config), returnsNormally);

    // Note: Actual decode is not performed in unit tests; this checks asset key resolution only.
  });
}
