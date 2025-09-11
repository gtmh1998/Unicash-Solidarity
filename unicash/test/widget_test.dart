import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unicash/main.dart';

void main() {
  // Initialisation mockée de Supabase pour les tests
  setUpAll(() async {
    await Supabase.initialize(
      url: 'https://gljfdduzkyuognlzppek.supabase.co',
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdsamZkZHV6a3l1b2dubHpwcGVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTYyMjkwMTcsImV4cCI6MjA3MTgwNTAxN30.b78HGygM78ulh7byWugODBytvhrldhTiYV1shmJbMtA",
    );
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}