import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Ensures a basic widget tree exists so precacheImage can work in tests.
Future<void> pumpBootstrap(WidgetTester tester) async {
  await tester.pumpWidget(const MaterialApp(home: SizedBox.shrink()));
  await tester.pumpAndSettle();
}

/// PUBLIC_INTERFACE
/// Precache commonly used assets for stable tests.
Future<void> precacheTestAssets(WidgetTester tester) async {
  await pumpBootstrap(tester);
  final context = tester.element(find.byType(SizedBox));
  await precacheImage(const AssetImage('assets/icons/got_x.png'), context);
  await precacheImage(const AssetImage('assets/icons/got_o.png'), context);
}
