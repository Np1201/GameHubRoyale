import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gamehub_royale/main.dart';

void main() {
  testWidgets('GameHub Royale app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: GameHubRoyaleApp()));

    // Verify that the app starts.
    expect(find.text('GameHub Royale'), findsOneWidget);
  });
}
