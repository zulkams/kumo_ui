import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:kumo_ui/src/models/text_style_model.dart';

void main() {
  group('TextStyleModel', () {
    test('can be constructed with all fields', () {
      final model = TextStyleModel(
        inherit: false,
        color: Colors.red,
        backgroundColor: Colors.blue,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 1.2,
        wordSpacing: 2.3,
        textBaseline: TextBaseline.alphabetic,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        locale: const Locale('en', 'US'),
        shadows: [const Shadow(offset: Offset(1, 2), blurRadius: 1, color: Colors.black)],
        fontFeatures: [FontFeature.enable('smcp')],
        fontVariations: [FontVariation('wght', 700)],
        decoration: TextDecoration.underline,
        decorationColor: Colors.green,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 2.0,
        debugLabel: 'debug',
        fontFamily: 'Roboto',
        fontFamilyFallback: ['Arial'],
        package: 'test_package',
        overflow: TextOverflow.ellipsis,
      );
      expect(model.inherit, false);
      expect(model.color, Colors.red);
      expect(model.fontWeight, FontWeight.bold);
      expect(model.fontStyle, FontStyle.italic);
      expect(model.fontFamily, 'Roboto');
      expect(model.overflow, TextOverflow.ellipsis);
    });

    test('fromJson with minimal fields', () {
      final model = TextStyleModel.fromJson({});
      expect(model.inherit, isNull);
      expect(model.color, isNull);
      expect(model.fontSize, isNull);
    });

    test('fromJson with color and fontWeight', () {
      final model = TextStyleModel.fromJson({'color': '#FF0000', 'fontWeight': 'bold', 'fontStyle': 'italic', 'fontSize': 20});
      expect(model.color, isA<Color>());
      expect(model.color?.value, equals(0xFFFF0000));
      expect(model.fontWeight, FontWeight.bold);
      expect(model.fontStyle, FontStyle.italic);
      expect(model.fontSize, 20.0);
    });

    test('fromJson with fontFamilyFallback as list', () {
      final model = TextStyleModel.fromJson({
        'fontFamilyFallback': ['Arial', 'Helvetica'],
      });
      expect(model.fontFamilyFallback, isA<List<String>>());
      expect(model.fontFamilyFallback, contains('Arial'));
    });

    test('fromJson handles null and missing fields', () {
      final model = TextStyleModel.fromJson({'fontWeight': null, 'fontStyle': null});
      expect(model.fontWeight, isNull);
      expect(model.fontStyle, isNull);
    });
  });
}
