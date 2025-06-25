import 'package:flutter_test/flutter_test.dart';
import 'package:kumo_ui/src/parser/kumo_parser.dart';
import 'package:kumo_ui/src/registry/kumo_registry.dart';
import 'package:flutter/widgets.dart';

void main() {
  setUp(() {
    KumoRegistry.instance.clear();
    KumoRegistry.instance.registerDefaultBuilders();
  });

  test('returns SizedBox for unknown type', () {
    final widget = KumoParser.fromJson({'type': 'Unknown'});
    expect(widget, isA<SizedBox>());
  });

  test('returns SizedBox for missing type', () {
    final widget = KumoParser.fromJson({});
    expect(widget, isA<SizedBox>());
  });
}
