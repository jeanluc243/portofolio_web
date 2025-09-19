import 'package:flutter_test/flutter_test.dart';

import 'package:portofolio_web/app.dart';

void main() {
  testWidgets('renders portfolio home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pump();

    expect(find.text('Portfolio Home'), findsOneWidget);
  });
}
