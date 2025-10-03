import 'package:flutter_test/flutter_test.dart';
import 'package:customer_mobile_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyGetWellApp());

    // Verify that our app displays the welcome text.
    expect(find.text('Welcome to GetWell'), findsOneWidget);
    expect(find.text('Your Health, Our Priority'), findsOneWidget);
    expect(find.text('Browse Services'), findsOneWidget);
  });

  testWidgets('App displays icon', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyGetWellApp());

    // Verify that health icon is displayed.
    expect(find.byIcon(Icons.health_and_safety), findsOneWidget);
    expect(find.byIcon(Icons.medical_services), findsOneWidget);
  });
}
