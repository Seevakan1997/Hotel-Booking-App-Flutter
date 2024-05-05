import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:room_booking/main.dart';

void main() {
  testWidgets('Initial tab selection test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TravelApp());

    // Verify that the 'Home' tab is initially selected.
    expect(find.byIcon(Icons.home),
        findsOneWidget); // Assuming 'Home' tab has the Icons.home icon
    expect(find.byIcon(Icons.bookmark),
        findsNothing); // Assuming other tabs are not initially selected
    expect(find.byIcon(Icons.location_on), findsNothing);
    expect(find.byIcon(Icons.notifications), findsNothing);
  });
}
