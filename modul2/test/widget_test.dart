import 'package:flutter_test/flutter_test.dart';
import 'package:modul2/main.dart';

void main() {
  testWidgets('AplikasiNavigasi smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const AplikasiNavigasi());

    expect(find.text('Beranda'), findsWidgets);
  });
}
