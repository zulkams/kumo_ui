import 'package:flutter/material.dart';
import '../models/text_style_model.dart';

/// Builds a [TextStyle] from a [TextStyleModel].
TextStyle buildTextStyleFromJson(TextStyleModel? style) {
  return TextStyle(
    inherit: style?.inherit ?? true,
    color: style?.color,
    backgroundColor: style?.backgroundColor,
    fontSize: style?.fontSize,
    fontWeight: style?.fontWeight,
    fontStyle: style?.fontStyle,
    letterSpacing: style?.letterSpacing,
    wordSpacing: style?.wordSpacing,
    textBaseline: style?.textBaseline,
    height: style?.height,
    leadingDistribution: style?.leadingDistribution,
    locale: style?.locale,
    foreground: null,
    background: null,
    shadows: style?.shadows,
    fontFeatures: style?.fontFeatures,
    fontVariations: style?.fontVariations,
    decoration: style?.decoration,
    decorationColor: style?.decorationColor,
    decorationStyle: style?.decorationStyle,
    decorationThickness: style?.decorationThickness,
    debugLabel: style?.debugLabel,
    fontFamily: style?.fontFamily,
    fontFamilyFallback: style?.fontFamilyFallback,
    package: style?.package,
    overflow: style?.overflow,
  );
}

TextAlign? parseTextAlign(dynamic value) {
  if (value is String) {
    switch (value) {
      case 'left':
        return TextAlign.left;
      case 'right':
        return TextAlign.right;
      case 'center':
        return TextAlign.center;
      case 'justify':
        return TextAlign.justify;
      case 'start':
        return TextAlign.start;
      case 'end':
        return TextAlign.end;
    }
  }
  return null;
}

/// Parses a color from a JSON value.
Color? parseColor(dynamic value) {
  if (value is String) {
    final hex = value.replaceAll('#', '');
    if (hex.length == 6) return Color(int.parse('0xFF$hex'));
    if (hex.length == 8) return Color(int.parse('0x$hex'));
    if (value.startsWith('0x')) return Color(int.parse(value));
  }
  return null;
}

/// Parses a font weight from a JSON value.
FontWeight? parseFontWeight(String? value) {
  switch (value) {
    case 'w100':
      return FontWeight.w100;
    case 'w200':
      return FontWeight.w200;
    case 'w300':
      return FontWeight.w300;
    case 'w400':
      return FontWeight.w400;
    case 'w500':
      return FontWeight.w500;
    case 'w600':
      return FontWeight.w600;
    case 'w700':
      return FontWeight.w700;
    case 'w800':
      return FontWeight.w800;
    case 'w900':
      return FontWeight.w900;
    case 'bold':
      return FontWeight.bold;
  }
  return null;
}

/// Parses a font style from a JSON value.
FontStyle? parseFontStyle(String? value) {
  switch (value) {
    case 'italic':
      return FontStyle.italic;
    case 'normal':
      return FontStyle.normal;
  }
  return null;
}

/// Parses a text baseline from a JSON value.
TextBaseline? parseTextBaseline(String? value) {
  switch (value) {
    case 'alphabetic':
      return TextBaseline.alphabetic;
    case 'ideographic':
      return TextBaseline.ideographic;
  }
  return null;
}

/// Parses a text leading distribution from a JSON value.
TextLeadingDistribution? parseLeadingDistribution(String? value) {
  switch (value) {
    case 'even':
      return TextLeadingDistribution.even;
    case 'proportional':
      return TextLeadingDistribution.proportional;
  }
  return null;
}

/// Parses a locale from a JSON value.
Locale? parseLocale(dynamic value) {
  if (value is String) {
    final parts = value.split('_');
    if (parts.length == 2) return Locale(parts[0], parts[1]);
    return Locale(value);
  }
  return null;
}

/// Parses a list of shadows from a JSON value.
List<Shadow>? parseShadows(dynamic value) {
  if (value is List) {
    return value.map((e) {
      final map = e as Map<String, dynamic>;
      return Shadow(
        offset: Offset((map['x'] ?? 0).toDouble(), (map['y'] ?? 0).toDouble()),
        blurRadius: (map['blurRadius'] ?? 0).toDouble(),
        color: parseColor(map['color']) ?? const Color(0xFF000000),
      );
    }).toList();
  }
  return null;
}

/// Parses a list of font features from a JSON value.
List<FontFeature>? parseFontFeatures(dynamic value) {
  if (value is List) {
    return value.map((e) {
      final map = e as Map<String, dynamic>;
      return FontFeature(map['feature'], map['value']);
    }).toList();
  }
  return null;
}

/// Parses a list of font variations from a JSON value.
List<FontVariation>? parseFontVariations(dynamic value) {
  if (value is List) {
    return value.map((e) {
      final map = e as Map<String, dynamic>;
      return FontVariation(map['axis'], (map['value'] as num).toDouble());
    }).toList();
  }
  return null;
}

/// Parses a text decoration from a JSON value.
TextDecoration? parseTextDecoration(String? value) {
  switch (value) {
    case 'underline':
      return TextDecoration.underline;
    case 'overline':
      return TextDecoration.overline;
    case 'lineThrough':
      return TextDecoration.lineThrough;
    case 'none':
      return TextDecoration.none;
  }
  return null;
}

/// Parses a text decoration style from a JSON value.
TextDecorationStyle? parseTextDecorationStyle(String? value) {
  switch (value) {
    case 'solid':
      return TextDecorationStyle.solid;
    case 'double':
      return TextDecorationStyle.double;
    case 'dotted':
      return TextDecorationStyle.dotted;
    case 'dashed':
      return TextDecorationStyle.dashed;
    case 'wavy':
      return TextDecorationStyle.wavy;
  }
  return null;
}

/// Parses a text overflow from a JSON value.
TextOverflow? parseTextOverflow(String? value) {
  switch (value) {
    case 'ellipsis':
      return TextOverflow.ellipsis;
    case 'fade':
      return TextOverflow.fade;
    case 'clip':
      return TextOverflow.clip;
    case 'visible':
      return TextOverflow.visible;
  }
  return null;
}
