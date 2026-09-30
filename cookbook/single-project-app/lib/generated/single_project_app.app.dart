// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: SingleProjectAppStack
// dart format off
// ignore_for_file: type=lint

import 'dart:convert';

/// The constants of the stack, known when synth ran.
abstract final class SingleProjectAppStackConstants {
  SingleProjectAppStackConstants._();

  /// Cloud Run v2 service name. Matches the Terraform resource name.
  static const String serviceName = r'coffee-shop';

  /// GCP region this recipe deploys into.
  static const String region = r'asia-northeast1';
}

/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class SingleProjectAppStackOutputs {
  SingleProjectAppStackOutputs._(this._read);

  /// Reads the outputs of `terraform output -json`:
  /// `SingleProjectAppStackOutputs.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  factory SingleProjectAppStackOutputs.fromTerraformJson(Map<String, Object?> outputs) =>
      SingleProjectAppStackOutputs._((output, variable, json) {
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
  factory SingleProjectAppStackOutputs.fromEnvironment(Map<String, String> environment) =>
      SingleProjectAppStackOutputs._((output, variable, json) {
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

  /// Cloud SQL connection name (project:region:instance).
  String get dbInstance {
    final value = _read(r'db_instance', 'DB_INSTANCE', false);
    return _as<String>(value, r'db_instance');
  }

  /// Cloud SQL database the service connects to.
  String get dbName {
    final value = _read(r'db_name', 'DB_NAME', false);
    return _as<String>(value, r'db_name');
  }

  /// URL of the Cloud Run v2 service. Populated after terraform apply.
  String get coffeeServiceUri {
    final value = _read(r'coffee_service_uri', 'COFFEE_SERVICE_URI', false);
    return _as<String>(value, r'coffee_service_uri');
  }

  static T _as<T>(Object? value, String output) {
    if (value is T) return value;
    throw StateError(
      'Terraform output "$output" is ${value.runtimeType} $value, not $T.',
    );
  }
}
