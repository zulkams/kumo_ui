import 'package:flutter/material.dart';
import '../utils/text_style_parser.dart';

class TextStyleModel {
  final bool? inherit;
  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final TextLeadingDistribution? leadingDistribution;
  final Locale? locale;
  final List<Shadow>? shadows;
  final List<FontFeature>? fontFeatures;
  final List<FontVariation>? fontVariations;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debugLabel;
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final String? package;
  final TextOverflow? overflow;

  TextStyleModel({
    this.inherit,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.locale,
    this.shadows,
    this.fontFeatures,
    this.fontVariations,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  });

  /// Creates a [TextStyleModel] from a JSON map structure.
  factory TextStyleModel.fromJson(Map<String, dynamic> json) {
    return TextStyleModel(
      inherit: json['inherit'] as bool?,
      color: parseColor(json['color']),
      backgroundColor: parseColor(json['backgroundColor']),
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontWeight: parseFontWeight(json['fontWeight'] as String?),
      fontStyle: parseFontStyle(json['fontStyle'] as String?),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
      wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
      textBaseline: parseTextBaseline(json['textBaseline'] as String?),
      height: (json['height'] as num?)?.toDouble(),
      leadingDistribution: parseLeadingDistribution(json['leadingDistribution'] as String?),
      locale: parseLocale(json['locale']),
      shadows: parseShadows(json['shadows']),
      fontFeatures: parseFontFeatures(json['fontFeatures']),
      fontVariations: parseFontVariations(json['fontVariations']),
      decoration: parseTextDecoration(json['decoration'] as String?),
      decorationColor: parseColor(json['decorationColor']),
      decorationStyle: parseTextDecorationStyle(json['decorationStyle'] as String?),
      decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
      debugLabel: json['debugLabel'] as String?,
      fontFamily: json['fontFamily'] as String?,
      fontFamilyFallback: (json['fontFamilyFallback'] as List?)?.map((e) => e.toString()).toList(),
      package: json['package'] as String?,
      overflow: parseTextOverflow(json['overflow'] as String?),
    );
  }
}
