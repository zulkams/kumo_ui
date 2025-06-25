import 'package:flutter/widgets.dart';
import 'package:kumo_ui/src/widgets/kumo_text.dart';

typedef KumoWidgetBuilder = Widget Function(Map<String, dynamic> json);

/// KumoRegistry: Registry for Kumo UI
class KumoRegistry {
  static final KumoRegistry instance = KumoRegistry._internal();
  final Map<String, KumoWidgetBuilder> _builders = {};

  KumoRegistry._internal();

  /// Register a widget builder for a specific type
  void registerBuilder(String type, KumoWidgetBuilder builder) {
    _builders[type] = builder;
  }

  /// Get a widget builder for a specific type
  KumoWidgetBuilder? getBuilder(String type) {
    return _builders[type];
  }

  /// Register default widget builders
  void registerDefaultBuilders() {
    registerBuilder('Text', buildKumoText);
  }

  /// Clear all registered widget builders
  void clear() {
    _builders.clear();
  }
}
