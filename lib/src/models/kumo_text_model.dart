import 'package:flutter/material.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'kumo_text_model.mapper.dart';

// ---------------- ENUMS ----------------
@MappableEnum()
enum KumoTextAlign { left, right, center, justify, start, end }

@MappableEnum()
enum KumoTextDirection { ltr, rtl }

@MappableEnum()
enum KumoTextOverflow { clip, ellipsis, fade, visible }

@MappableEnum()
enum KumoTextWidthBasis { parent, longestLine }

// ---------------- COLOR PARSER ----------------
Color? parseColor(String? hex) {
  if (hex == null) return null;
  final buffer = StringBuffer();
  if (hex.length == 6 || hex.length == 7) buffer.write('ff');
  buffer.write(hex.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

// ---------------- STYLE MODEL ----------------
@MappableClass()
class KumoTextStyleModel with KumoTextStyleModelMappable {
  final double? fontSize;
  final String? color;
  final String? backgroundColor;
  final String? fontWeight;
  final String? fontStyle;

  const KumoTextStyleModel({this.fontSize, this.color, this.backgroundColor, this.fontWeight, this.fontStyle});

  TextStyle toTextStyle() {
    return TextStyle(fontSize: fontSize, color: parseColor(color), backgroundColor: parseColor(backgroundColor), fontWeight: _mapFontWeight(fontWeight), fontStyle: _mapFontStyle(fontStyle));
  }

  FontWeight? _mapFontWeight(String? value) {
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
      default:
        return null;
    }
  }

  FontStyle? _mapFontStyle(String? value) {
    switch (value) {
      case 'italic':
        return FontStyle.italic;
      case 'normal':
        return FontStyle.normal;
      default:
        return null;
    }
  }
}

// ---------------- STRUT STYLE MODEL (minimal) ----------------
@MappableClass()
class KumoStrutStyleModel with KumoStrutStyleModelMappable {
  final double? fontSize;

  const KumoStrutStyleModel({this.fontSize});

  StrutStyle toStrutStyle() => StrutStyle(fontSize: fontSize);
}

// ---------------- BASE WIDGET MODEL ----------------
@MappableClass(discriminatorKey: 'type')
abstract class KumoWidgetModel with KumoWidgetModelMappable {
  const KumoWidgetModel();
  Widget toWidget();
}

// ---------------- TEXT MODEL ----------------
@MappableClass(discriminatorValue: 'Text')
class KumoTextModel extends KumoWidgetModel with KumoTextModelMappable {
  final String data;
  final KumoTextStyleModel? style;
  final KumoStrutStyleModel? strutStyle;
  final KumoTextAlign? textAlign;
  final KumoTextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final KumoTextOverflow? overflow;
  final double? textScaleFactor;
  final double? textScaler; // TextScaler can't be deserialized, using double
  final int? maxLines;
  final String? semanticsLabel;
  final String? semanticsIdentifier;
  final KumoTextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final String? selectionColor;

  const KumoTextModel({
    required this.data,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.semanticsIdentifier,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  @override
  Widget toWidget() {
    return Text(
      data,
      style: style?.toTextStyle(),
      strutStyle: strutStyle?.toStrutStyle(),
      textAlign: _mapTextAlign(textAlign),
      textDirection: _mapTextDirection(textDirection),
      locale: locale,
      softWrap: softWrap,
      overflow: _mapTextOverflow(overflow),
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      semanticsIdentifier: semanticsIdentifier,
      textWidthBasis: _mapTextWidthBasis(textWidthBasis),
      textHeightBehavior: textHeightBehavior,
      selectionColor: parseColor(selectionColor),
    );
  }

  TextAlign? _mapTextAlign(KumoTextAlign? align) {
    switch (align) {
      case KumoTextAlign.left:
        return TextAlign.left;
      case KumoTextAlign.right:
        return TextAlign.right;
      case KumoTextAlign.center:
        return TextAlign.center;
      case KumoTextAlign.justify:
        return TextAlign.justify;
      case KumoTextAlign.start:
        return TextAlign.start;
      case KumoTextAlign.end:
        return TextAlign.end;
      default:
        return null;
    }
  }

  TextDirection? _mapTextDirection(KumoTextDirection? dir) {
    switch (dir) {
      case KumoTextDirection.ltr:
        return TextDirection.ltr;
      case KumoTextDirection.rtl:
        return TextDirection.rtl;
      default:
        return null;
    }
  }

  TextOverflow? _mapTextOverflow(KumoTextOverflow? of) {
    switch (of) {
      case KumoTextOverflow.clip:
        return TextOverflow.clip;
      case KumoTextOverflow.ellipsis:
        return TextOverflow.ellipsis;
      case KumoTextOverflow.fade:
        return TextOverflow.fade;
      case KumoTextOverflow.visible:
        return TextOverflow.visible;
      default:
        return null;
    }
  }

  TextWidthBasis? _mapTextWidthBasis(KumoTextWidthBasis? basis) {
    switch (basis) {
      case KumoTextWidthBasis.parent:
        return TextWidthBasis.parent;
      case KumoTextWidthBasis.longestLine:
        return TextWidthBasis.longestLine;
      default:
        return null;
    }
  }
}
