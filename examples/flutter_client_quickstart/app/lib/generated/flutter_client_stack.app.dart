// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: FlutterClientStack
// dart format off
// ignore_for_file: type=lint

import 'dart:convert';

/// The constants of the stack, known when synth ran.
abstract final class FlutterClientStackConstants {
  FlutterClientStackConstants._();
}

/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class FlutterClientStackOutputs {
  /// Reads the outputs of `terraform output -json`:
  /// `FlutterClientStackOutputs.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  ///
  /// That JSON holds the sensitive outputs in plain text, so never bundle
  /// it into a client app; build a client with [FlutterClientStackOutputs.fromDartDefine].
  const FlutterClientStackOutputs.fromTerraformJson(Map<String, Object?> outputs)
    : _source = _Source.terraform,
      _terraform = outputs,
      _environment = const {};

  /// Reads environment variables named after the outputs in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID` for `orders_topic_id`), such as
  /// `Platform.environment`. A `String` output is the variable's value; any
  /// other type is JSON.
  const FlutterClientStackOutputs.fromEnvironment(Map<String, String> environment)
    : _source = _Source.environment,
      _terraform = const {},
      _environment = environment;

  /// Reads the same variables as [FlutterClientStackOutputs.fromEnvironment] from the values
  /// compiled into the app: `--dart-define-from-file` with the JSON of the
  /// Stack's `addDartDefineOutput` (`terraform output -json dart_defines`),
  /// or `--dart-define=ORDERS_TOPIC_ID=...`.
  const FlutterClientStackOutputs.fromDartDefine()
    : _source = _Source.dartDefine,
      _terraform = const {},
      _environment = _dartDefines;

  final _Source _source;
  final Map<String, Object?> _terraform;
  final Map<String, String> _environment;

  static const Map<String, String> _dartDefines = {
    if (bool.hasEnvironment('API_URL')) 'API_URL': String.fromEnvironment('API_URL'),
    if (bool.hasEnvironment('API_URLS')) 'API_URLS': String.fromEnvironment('API_URLS'),
    if (bool.hasEnvironment('UPLOADS_BUCKET')) 'UPLOADS_BUCKET': String.fromEnvironment('UPLOADS_BUCKET'),
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

  /// Base URL of the API.
  String get apiUrl {
    final value = _read(r'api_url', 'API_URL', false, r'dart_defines');
    return _as<String>(value, r'api_url');
  }

  List<String> get apiUrls {
    final value = _read(r'api_urls', 'API_URLS', true, r'dart_defines');
    return [for (final e0 in _as<List<Object?>>(value, r'api_urls')) _as<String>(e0, r'api_urls')];
  }

  String get uploadsBucket {
    final value = _read(r'uploads_bucket', 'UPLOADS_BUCKET', false, r'dart_defines');
    return _as<String>(value, r'uploads_bucket');
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
