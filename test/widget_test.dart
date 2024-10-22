import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oppo/Screens/widget_tree.dart';

void main() {
  testWidgets('Button Widget Test', (widgetTester) async {
  // Create widget tree
  await widgetTester.pumpWidget(const MaterialApp(
    home: TestExampleWidgetTree()));

  // Locate button with text 'Click Me'
  final buttonFinder = find.text('Click Me');

  // Expect exactly one widget with the text 'Click Me'
  expect(buttonFinder, findsOneWidget);

  // Simulate tap on button
  await widgetTester.tap(buttonFinder);

  // Rebuild the widget and update the UI
  await widgetTester.pump();
});

}