import 'package:flutter/material.dart';
import 'package:kumo_ui/src/models/kumo_text_model.dart';

/// KumoText: Widget for Kumo [Text].
///
/// Builds a [Text] widget from a JSON map structure using [KumoTextModel].
Widget buildKumoText(Map<String, dynamic> json) {
  final model = KumoTextModelMapper.fromMap(json);
  return model.toWidget();
}
