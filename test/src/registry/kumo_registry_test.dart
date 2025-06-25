import 'package:flutter_test/flutter_test.dart';
import 'package:kumo_ui/src/registry/kumo_registry.dart';
import 'package:flutter/widgets.dart';

void main() {
  group('KumoRegistry', () {
    setUp(() => KumoRegistry.instance.clear());

    test('register and get builder', () {
      Widget builder(Map<String, dynamic> _) => const Placeholder();
      KumoRegistry.instance.registerBuilder('Placeholder', builder);
      final got = KumoRegistry.instance.getBuilder('Placeholder');
      expect(got, equals(builder));
    });

    test('clear removes all builders', () {
      Widget builder(Map<String, dynamic> _) => const Placeholder();
      KumoRegistry.instance.registerBuilder('Placeholder', builder);
      KumoRegistry.instance.clear();
      final got = KumoRegistry.instance.getBuilder('Placeholder');
      expect(got, isNull);
    });
  });
}
