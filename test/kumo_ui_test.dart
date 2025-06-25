import 'package:flutter_test/flutter_test.dart';
import 'package:kumo_ui/kumo_ui.dart';

void main() {
  setUp(() {
    KumoRegistry.instance.registerDefaultBuilders();
  });

  test('Parses simple Text widget', () {
    final widget = KumoParser.fromJson({"type": "Text", "value": "Test"});
    expect(widget, isNotNull);
  });
}
