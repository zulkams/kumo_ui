import 'package:flutter_test/flutter_test.dart';
import 'package:kumo_ui/src/widgets/kumo_text.dart';
import 'package:flutter/material.dart';

void main() {
  test('buildKumoText returns Text widget with value', () {
    final widget = buildKumoText({'value': 'hello'});
    expect(widget, isA<Text>());
    expect((widget as Text).data, 'hello');
  });

  test('buildKumoText with style', () {
    final widget = buildKumoText({
      'value': 'styled',
      'style': {'color': '#00FF00', 'fontWeight': 'bold', 'fontSize': 18},
    });
    expect(widget, isA<Text>());
    final text = widget as Text;
    expect(text.style?.color, equals(const Color(0xFF00FF00)));
    expect(text.style?.fontWeight, equals(FontWeight.bold));
    expect(text.style?.fontSize, equals(18.0));
  });
}
