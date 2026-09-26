// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_realtime_log_config`.
const Set<String> _awsCloudfrontRealtimeLogConfigSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_realtime_log_config`.
final class DataAwsCloudfrontRealtimeLogConfig extends Data {
  static const String tfType = 'aws_cloudfront_realtime_log_config';

  DataAwsCloudfrontRealtimeLogConfig({
    required super.localName,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _awsCloudfrontRealtimeLogConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get endpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoint');

  /// Reference to `fields` attribute.
  TfRef<List<String>> get fields =>
      TfRef.attribute<List<String>>(this, 'fields');

  /// Reference to `sampling_rate` attribute.
  TfRef<num> get samplingRate => TfRef.attribute<num>(this, 'sampling_rate');
}
