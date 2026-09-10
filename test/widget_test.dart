import 'package:flutter_test/flutter_test.dart';
import 'package:sonchafa/app/app.dart';

void main() {
  testWidgets('shows the dashboard', (tester) async {
    await tester.pumpWidget(const SonchafaApp());
    expect(find.text('Sonchafa'), findsOneWidget);
    expect(find.text('Items in stock'), findsOneWidget);
  });
}
