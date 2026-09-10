import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonchafa/app/app.dart';

void main() {
  testWidgets('shows the dashboard', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: SonchafaApp()));
    expect(find.text('Sonchafa'), findsWidgets);
    expect(find.text('Items in stock'), findsOneWidget);
  });
}
