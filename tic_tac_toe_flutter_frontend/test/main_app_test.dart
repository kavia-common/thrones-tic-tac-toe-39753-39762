import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'test_utils.dart';
import 'package:tic_tac_toe_flutter_frontend/constants.dart';

void main() {
  testWidgets('renders AppBar with title', (tester) async {
    await tester.pumpWidget(buildTestApp());
    await tester.pumpAndSettle();
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text(AppConstants.appTitle), findsOneWidget);
  });
}
