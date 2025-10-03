import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:customer_mobile_app/main.dart';

void main() {
  testWidgets('App launches and displays welcome message', (WidgetTester tester) async {
    await tester.pumpWidget(const MyGetWellApp());

    expect(find.text('Welcome to MyGetWell'), findsOneWidget);
    expect(find.text('Customer Mobile App'), findsOneWidget);
    expect(find.text('MyGetWell'), findsWidgets);
  });
}
