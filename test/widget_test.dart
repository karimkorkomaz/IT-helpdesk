import 'package:flutter_test/flutter_test.dart';

import 'package:it_helpdesk/main.dart';

void main() {
  testWidgets('Network flow creates a ticket', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text("What's the problem?"), findsOneWidget);

    await tester.tap(find.text('Network'));
    await tester.pump();
    expect(find.text('Is Wi-Fi turned on?'), findsOneWidget);

    await tester.tap(find.text('Yes'));
    await tester.pump();
    await tester.tap(find.text('Yes'));
    await tester.pump();
    expect(find.text('Try this fix'), findsOneWidget);

    await tester.tap(find.text('Still not solved?'));
    await tester.pump();
    expect(find.text('Ticket summary'), findsOneWidget);
    expect(find.textContaining('3. Router restarted → No'), findsOneWidget);

    await tester.ensureVisible(find.text('Start new issue'));
    await tester.tap(find.text('Start new issue'));
    await tester.pump();
    expect(find.text("What's the problem?"), findsOneWidget);
  });
}
