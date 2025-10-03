import 'package:flutter_test/flutter_test.dart';
import 'package:customer_mobile_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyGetWellApp());

    expect(find.text('Welcome to MyGetWell'), findsOneWidget);
    expect(find.text('Your health and wellness companion'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
  });

  testWidgets('Get Started button shows snackbar', (WidgetTester tester) async {
    await tester.pumpWidget(const MyGetWellApp());

    await tester.tap(find.text('Get Started'));
    await tester.pump();

    expect(find.text('Welcome to MyGetWell App!'), findsOneWidget);
  });
}
