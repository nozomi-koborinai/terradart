// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_realtime_log_config`.
const Set<String> _awsCloudfrontRealtimeLogConfigSensitive = <String>{};

/// Typed helper for the `endpoint` block of
/// `aws_cloudfront_realtime_log_config` (derived from provider schema).
@immutable
final class CloudfrontRealtimeLogConfigEndpoint {
  const CloudfrontRealtimeLogConfigEndpoint({
    required this.streamType,
    required this.kinesisStreamConfig,
  });

  final TfArg<String> streamType;

  final CloudfrontRealtimeLogConfigEndpointKinesisStreamConfig
  kinesisStreamConfig;

  Map<String, Object?> encode() => {
    'stream_type': streamType.toTfJson(),
    'kinesis_stream_config': kinesisStreamConfig.encode(),
  };
}

/// Typed helper for the `endpoint.kinesis_stream_config` block of
/// `aws_cloudfront_realtime_log_config` (derived from provider schema).
@immutable
final class CloudfrontRealtimeLogConfigEndpointKinesisStreamConfig {
  const CloudfrontRealtimeLogConfigEndpointKinesisStreamConfig({
    required this.roleArn,
    required this.streamArn,
  });

  final TfArg<String> roleArn;

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_realtime_log_config`.
final class AwsCloudfrontRealtimeLogConfig extends Resource {
  static const String tfType = 'aws_cloudfront_realtime_log_config';

  AwsCloudfrontRealtimeLogConfig({
    required super.localName,
    required TfArg<List<String>> fields,
    required TfArg<String> name,
    required TfArg<num> samplingRate,
    required CloudfrontRealtimeLogConfigEndpoint endpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fields': fields,
           'name': name,
           'sampling_rate': samplingRate,
           'endpoint': TfArg.literal(endpoint.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontRealtimeLogConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
