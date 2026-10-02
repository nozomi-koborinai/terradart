// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: ObservabilityStack
// dart format off
// ignore_for_file: type=lint

import 'dart:convert';

/// The constants of the stack, known when synth ran.
abstract final class ObservabilityStackConstants {
  ObservabilityStackConstants._();

  static const String traceScopeId = r'terradart-traces';
}

/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class ObservabilityStackOutputs {
  /// Reads the outputs of `terraform output -json`:
  /// `ObservabilityStackOutputs.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  ///
  /// That JSON holds the sensitive outputs in plain text, so never bundle
  /// it into a client app; build a client with [ObservabilityStackOutputs.fromDartDefine].
  const ObservabilityStackOutputs.fromTerraformJson(Map<String, Object?> outputs)
    : _source = _Source.terraform,
      _terraform = outputs,
      _environment = const {};

  /// Reads environment variables named after the outputs in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID` for `orders_topic_id`), such as
  /// `Platform.environment`. A `String` output is the variable's value; any
  /// other type is JSON.
  const ObservabilityStackOutputs.fromEnvironment(Map<String, String> environment)
    : _source = _Source.environment,
      _terraform = const {},
      _environment = environment;

  /// Reads the same variables as [ObservabilityStackOutputs.fromEnvironment] from the values
  /// compiled into the app: `--dart-define-from-file` with the JSON of the
  /// Stack's `addDartDefineOutput` (`terraform output -json dart_defines`),
  /// or `--dart-define=ORDERS_TOPIC_ID=...`.
  const ObservabilityStackOutputs.fromDartDefine()
    : _source = _Source.dartDefine,
      _terraform = const {},
      _environment = _dartDefines;

  final _Source _source;
  final Map<String, Object?> _terraform;
  final Map<String, String> _environment;

  static const Map<String, String> _dartDefines = {
    if (bool.hasEnvironment('TRACE_SCOPE_NAME')) 'TRACE_SCOPE_NAME': String.fromEnvironment('TRACE_SCOPE_NAME'),
  };

  Object? _read(String output, String variable, bool json) {
    if (_source == _Source.terraform) {
      final entry = _terraform[output];
      if (entry is Map && entry.containsKey('value')) return entry['value'];
      throw StateError(
        'Terraform output "$output" is missing; apply the stack first.',
      );
    }
    final what = _source == _Source.dartDefine
        ? 'Dart define'
        : 'Environment variable';
    final raw = _environment[variable];
    if (raw == null) {
      throw StateError(
        '$what $variable (Terraform output "$output") is not set.',
      );
    }
    if (!json) return raw;
    try {
      return jsonDecode(raw);
    } on FormatException catch (e) {
      throw StateError(
        '$what $variable (Terraform output "$output") is not JSON: '
        '${e.message}',
      );
    }
  }

  String get traceScopeName {
    final value = _read(r'trace_scope_name', 'TRACE_SCOPE_NAME', false);
    return _as<String>(value, r'trace_scope_name');
  }

  static T _as<T>(Object? value, String output) {
    if (value is T) return value;
    throw StateError(
      'Terraform output "$output" is ${value.runtimeType} $value, not $T.',
    );
  }
}

enum _Source { terraform, environment, dartDefine }
