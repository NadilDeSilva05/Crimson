import 'package:flutter_test/flutter_test.dart'
    show WidgetTester, expect, find, findsOneWidget, testWidgets;
import 'package:crimson/main.dart';

void main() {
  testWidgets('WelcomePage contains the correct elements',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the welcome text is displayed.
    expect(find.text('Welcome to Crimson PVT.'), findsOneWidget);
    expect(find.text('CRIMSON +\nBlood Bank'), findsOneWidget);

    // Verify that the button is displayed.
    expect(find.text('GET STARTED'), findsOneWidget);
  });
}
