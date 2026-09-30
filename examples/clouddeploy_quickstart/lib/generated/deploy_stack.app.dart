// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: DeployStack
// dart format off
// ignore_for_file: type=lint

import 'dart:convert';

/// The constants of the stack, known when synth ran.
abstract final class DeployStackConstants {
  DeployStackConstants._();

  static const String pipelineName = r'terradart-pipeline';
}

/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class DeployStackOutputs {
  DeployStackOutputs._(this._read);

  /// Reads the outputs of `terraform output -json`:
  /// `DeployStackOutputs.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  factory DeployStackOutputs.fromTerraformJson(Map<String, Object?> outputs) =>
      DeployStackOutputs._((output, variable, json) {
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
  factory DeployStackOutputs.fromEnvironment(Map<String, String> environment) =>
      DeployStackOutputs._((output, variable, json) {
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

  String get runTargetId {
    final value = _read(r'run_target_id', 'RUN_TARGET_ID', false);
    return _as<String>(value, r'run_target_id');
  }

  static T _as<T>(Object? value, String output) {
    if (value is T) return value;
    throw StateError(
      'Terraform output "$output" is ${value.runtimeType} $value, not $T.',
    );
  }
}
