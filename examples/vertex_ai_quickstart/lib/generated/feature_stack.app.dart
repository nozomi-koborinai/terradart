// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: FeatureStack
// dart format off
// ignore_for_file: type=lint

import 'dart:convert';

/// The constants of the stack, known when synth ran.
abstract final class FeatureStackConstants {
  FeatureStackConstants._();

  static const String featureGroupName = r'terradart_customer_features';
}

/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class FeatureStackOutputs {
  FeatureStackOutputs._(this._read);

  /// Reads the outputs of `terraform output -json`:
  /// `FeatureStackOutputs.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  factory FeatureStackOutputs.fromTerraformJson(Map<String, Object?> outputs) =>
      FeatureStackOutputs._((output, variable, json) {
        final entry = outputs[output];
        if (entry is Map && entry.containsKey('value')) return entry['value'];
        throw StateError(
          'Terraform output "$output" is missing; apply the stack first.',
        );
      });

  /// Reads environment variables named after the outputs in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID` for `orders_topic_id`), such as
  /// `Platform.environment`. A `String` output is the variable's value; any
  /// other type is JSON.
  factory FeatureStackOutputs.fromEnvironment(Map<String, String> environment) =>
      FeatureStackOutputs._((output, variable, json) {
        final raw = environment[variable];
        if (raw == null) {
          throw StateError(
            'Environment variable $variable (Terraform output "$output") '
            'is not set.',
          );
        }
        if (!json) return raw;
        try {
          return jsonDecode(raw);
        } on FormatException catch (e) {
          throw StateError(
            'Environment variable $variable (Terraform output "$output") '
            'is not JSON: ${e.message}',
          );
        }
      });

  final Object? Function(String output, String variable, bool json) _read;

  String get featureGroupId {
    final value = _read(r'feature_group_id', 'FEATURE_GROUP_ID', false);
    return _as<String>(value, r'feature_group_id');
  }

  static T _as<T>(Object? value, String output) {
    if (value is T) return value;
    throw StateError(
      'Terraform output "$output" is ${value.runtimeType} $value, not $T.',
    );
  }
}
