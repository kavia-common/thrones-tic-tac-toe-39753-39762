import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_flutter_frontend/assets/asset_manifest_sanity.dart';

void main() {
  testWidgets('AssetManifest contains expected icon paths', (tester) async {
    final ok = await hasExpectedIconsInManifest();
    expect(ok, isTrue);
  });
}
