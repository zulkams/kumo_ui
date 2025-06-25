import 'package:flutter_test/flutter_test.dart';
import 'package:kumo_ui/src/utils/text_style_parser.dart';
import 'package:flutter/material.dart';

void main() {
  group('Style parsing', () {
    test('parseColor supports hex and 0x', () {
      expect(parseColor('#FF0000'), equals(const Color(0xFFFF0000)));
      expect(parseColor('FF0000FF'), equals(const Color(0xFF0000FF)));
      expect(parseColor('0xFF00FF00'), equals(const Color(0xFF00FF00)));
      expect(parseColor('invalid'), isNull);
    });
    test('parseFontWeight', () {
      expect(parseFontWeight('bold'), FontWeight.bold);
      expect(parseFontWeight('w400'), FontWeight.w400);
      expect(parseFontWeight('unknown'), isNull);
    });
    test('parseFontStyle', () {
      expect(parseFontStyle('italic'), FontStyle.italic);
      expect(parseFontStyle('normal'), FontStyle.normal);
      expect(parseFontStyle('foo'), isNull);
    });
    test('parseTextAlign', () {
      expect(parseTextAlign('center'), TextAlign.center);
      expect(parseTextAlign('end'), TextAlign.end);
      expect(parseTextAlign('none'), isNull);
    });
    test('parseTextOverflow', () {
      expect(parseTextOverflow('ellipsis'), TextOverflow.ellipsis);
      expect(parseTextOverflow('clip'), TextOverflow.clip);
      expect(parseTextOverflow('foo'), isNull);
    });
    test('parseTextDecoration', () {
      expect(parseTextDecoration('underline'), TextDecoration.underline);
      expect(parseTextDecoration('none'), TextDecoration.none);
      expect(parseTextDecoration('foo'), isNull);
    });
    test('parseTextDecorationStyle', () {
      expect(parseTextDecorationStyle('dotted'), TextDecorationStyle.dotted);
      expect(parseTextDecorationStyle('foo'), isNull);
    });
    test('parseLocale', () {
      expect(parseLocale('en_US'), Locale('en', 'US'));
      expect(parseLocale('fr'), Locale('fr'));
      expect(parseLocale(null), isNull);
    });
    test('parseShadows', () {
      expect(
        parseShadows([
          {'x': 1, 'y': 2, 'color': '#000000', 'blurRadius': 1},
        ])?.first,
        isA<Shadow>(),
      );
      expect(parseShadows(null), isNull);
    });
    test('parseFontFeatures', () {
      expect(
        parseFontFeatures([
          {'feature': 'liga', 'value': 1},
        ])?.first,
        isA<FontFeature>(),
      );
      expect(parseFontFeatures(null), isNull);
    });
    test('parseFontVariations', () {
      expect(
        parseFontVariations([
          {'axis': 'wght', 'value': 400},
        ])?.first,
        isA<FontVariation>(),
      );
      expect(parseFontVariations(null), isNull);
    });
  });
}
