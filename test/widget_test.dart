import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gapura_emas/main.dart';

void main() {
  testWidgets('Gapura Emas app loads correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(GapuraEmasApp());

    // Verify AppBar title
    expect(find.text('GAPURA'), findsOneWidget);
    expect(find.text('EMAS'), findsOneWidget);

    // Verify notification icon exists
    expect(find.byIcon(Icons.notifications), findsOneWidget);

    // Verify profile icon exists
    expect(find.byIcon(Icons.account_circle), findsOneWidget);

    // Verify main sections exist
    expect(find.text('Hero Section'), findsOneWidget);
    expect(find.text('Banner Section'), findsOneWidget);
    expect(find.text('App Section'), findsOneWidget);
  });
}
