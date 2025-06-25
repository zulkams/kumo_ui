import 'package:flutter/material.dart';
import 'package:kumo_ui/src/models/text_style_model.dart';
import '../utils/text_style_parser.dart';

/// KumoText: Widget for Kumo [Text].
///
/// Builds a [Text] widget from a JSON map structure. The JSON may include:
/// - 'value': The text string to display.
/// - 'textAlign': The alignment of the text (as a string, e.g., 'center').
/// - 'style': A [TextStyleModel] describing the style for the text.
Widget buildKumoText(Map<String, dynamic> json) {
  final String value = json['value'] ?? '';
  final textAlign = parseTextAlign(json['textAlign']);
  final dynamic styleRaw = json['style'];
  TextStyleModel? styleModel;
  if (styleRaw is Map<String, dynamic>) {
    styleModel = TextStyleModel.fromJson(styleRaw);
  }
  final style = styleModel != null ? buildTextStyleFromJson(styleModel) : null;
  return Text(value, style: style, textAlign: textAlign);
}
