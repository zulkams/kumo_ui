import 'package:flutter/material.dart';
import '../registry/kumo_registry.dart';

/// KumoParser: JSON Parser for Kumo UI
class KumoParser {
  /// Creates a [Widget] from a JSON map structure.
  static Widget fromJson(Map<String, dynamic> json) {
    final type = json['type'];

    if (type == null || type is! String) {
      debugPrint('[KumoParser] Missing or invalid type in JSON.');
      return const SizedBox.shrink();
    }

    final builder = KumoRegistry.instance.getBuilder(type);

    if (builder == null) {
      debugPrint('[KumoParser] Widget builder not found for type: $type');
      return const SizedBox.shrink();
    }

    return builder(json);
  }
}
