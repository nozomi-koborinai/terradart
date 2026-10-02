// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: DocAiStack
// dart format off
// ignore_for_file: type=lint

import 'dart:convert';

/// The constants of the stack, known when synth ran.
abstract final class DocAiStackConstants {
  DocAiStackConstants._();

  static const String ocrProcessorDisplayName = r'terradart-ocr';
}

/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class DocAiStackOutputs {
  /// Reads the outputs of `terraform output -json`:
  /// `DocAiStackOutputs.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  ///
  /// That JSON holds the sensitive outputs in plain text, so never bundle
  /// it into a client app; build a client with [DocAiStackOutputs.fromDartDefine].
  const DocAiStackOutputs.fromTerraformJson(Map<String, Object?> outputs)
    : _source = _Source.terraform,
      _terraform = outputs,
      _environment = const {};

  /// Reads environment variables named after the outputs in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID` for `orders_topic_id`), such as
  /// `Platform.environment`. A `String` output is the variable's value; any
  /// other type is JSON.
  const DocAiStackOutputs.fromEnvironment(Map<String, String> environment)
    : _source = _Source.environment,
      _terraform = const {},
      _environment = environment;

  /// Reads the same variables as [DocAiStackOutputs.fromEnvironment] from the values
  /// compiled into the app: `--dart-define-from-file` with the JSON of the
  /// Stack's `addDartDefineOutput` (`terraform output -json dart_defines`),
  /// or `--dart-define=ORDERS_TOPIC_ID=...`.
  const DocAiStackOutputs.fromDartDefine()
    : _source = _Source.dartDefine,
      _terraform = const {},
      _environment = _dartDefines;

  final _Source _source;
  final Map<String, Object?> _terraform;
  final Map<String, String> _environment;

  static const Map<String, String> _dartDefines = {
    if (bool.hasEnvironment('OCR_PROCESSOR_ID')) 'OCR_PROCESSOR_ID': String.fromEnvironment('OCR_PROCESSOR_ID'),
  };

  Object? _read(String output, String variable, bool json, String? define) {
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
        '$what $variable (Terraform output "$output") is not set.'
        '${_source == _Source.dartDefine ? _defineHint(variable, define) : ''}',
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

  String get ocrProcessorId {
    final value = _read(r'ocr_processor_id', 'OCR_PROCESSOR_ID', false, null);
    return _as<String>(value, r'ocr_processor_id');
  }

  static String _defineHint(String variable, String? define) =>
      define == null
      ? ' No addDartDefineOutput of the stack carries it; pass '
            '--dart-define=$variable=<value>.'
      : ' Build the app with --dart-define-from-file=.terradart/$define.json, '
            'which `terradart apply` and `terradart outputs` write (with '
            '--env <name>: .terradart/$define.<name>.json).';

  static T _as<T>(Object? value, String output) {
    if (value is T) return value;
    throw StateError(
      'Terraform output "$output" is ${value.runtimeType} $value, not $T.',
    );
  }
}

enum _Source { terraform, environment, dartDefine }
