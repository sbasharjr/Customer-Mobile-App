import 'package:flutter_test/flutter_test.dart';
import 'package:customer_mobile_app/main.dart';

void main() {
  testWidgets('MyGetwell app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyGetwellApp());

    // Verify that the app title appears.
    expect(find.text('Welcome to MyGetwell'), findsOneWidget);
    expect(find.text('Your health and wellness companion'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
  });
}
