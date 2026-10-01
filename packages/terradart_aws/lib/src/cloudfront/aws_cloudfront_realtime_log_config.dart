// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final CloudfrontRealtimeLogConfigStreamType streamType;

  final CloudfrontRealtimeLogConfigKinesisStreamConfig kinesisStreamConfig;

  Map<String, Object?> encode() => {
    'stream_type': streamType.toTfJson(),
    'kinesis_stream_config': kinesisStreamConfig.encode(),
  };
}

/// `stream_type` — derived from the provider schema description.
extension type const CloudfrontRealtimeLogConfigStreamType._(TfArg<String> _)
    implements TfArg<String> {
  CloudfrontRealtimeLogConfigStreamType.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontRealtimeLogConfigStreamType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontRealtimeLogConfigStreamType.arg(TfArg<String> arg)
    : this._(arg);

  static const kinesis = CloudfrontRealtimeLogConfigStreamType._(
    TfArgLiteral('Kinesis'),
  );

  static const List<CloudfrontRealtimeLogConfigStreamType> values = [kinesis];
}

/// Typed helper for the `endpoint.kinesis_stream_config` block of
/// `aws_cloudfront_realtime_log_config` (derived from provider schema).
@immutable
final class CloudfrontRealtimeLogConfigKinesisStreamConfig {
  const CloudfrontRealtimeLogConfigKinesisStreamConfig({
    required this.roleArn,
    required this.streamArn,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_realtime_log_config`.
final class AwsCloudfrontRealtimeLogConfig extends Resource {
  static const String tfType = 'aws_cloudfront_realtime_log_config';

  AwsCloudfrontRealtimeLogConfig(
    super.localName, {
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontRealtimeLogConfig>`.
  RefTo<AwsCloudfrontRealtimeLogConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `fields` attribute.
  TfRef<List<String>> get fields =>
      TfRef.attribute<List<String>>(this, 'fields');

  /// Reference to `sampling_rate` attribute.
  TfRef<num> get samplingRate => TfRef.attribute<num>(this, 'sampling_rate');
}
