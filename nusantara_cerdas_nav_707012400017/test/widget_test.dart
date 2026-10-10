import 'package:flutter_test/flutter_test.dart';
import 'package:nusantara_cerdas_nav_707012400017/main.dart';

void main() {
  testWidgets('NusantaraCerdasApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const NusantaraCerdasApp());

    expect(find.text('Nusantara Cerdas'), findsWidgets);
  });
}
