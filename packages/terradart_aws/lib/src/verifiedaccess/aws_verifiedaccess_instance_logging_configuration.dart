// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_instance_logging_configuration`.
const Set<String> _awsVerifiedaccessInstanceLoggingConfigurationSensitive =
    <String>{};

/// Typed helper for the `access_logs` block of
/// `aws_verifiedaccess_instance_logging_configuration` (derived from provider schema).
@immutable
final class VerifiedaccessInstanceLoggingConfigurationAccessLogs {
  const VerifiedaccessInstanceLoggingConfigurationAccessLogs({
    this.includeTrustContext,
    this.logVersion,
    this.cloudwatchLogs,
    this.kinesisDataFirehose,
    this.s3,
  });

  final TfArg<bool>? includeTrustContext;

  final TfArg<String>? logVersion;

  final VerifiedaccessInstanceLoggingConfigurationAccessLogsCloudwatchLogs?
  cloudwatchLogs;

  final VerifiedaccessInstanceLoggingConfigurationAccessLogsKinesisDataFirehose?
  kinesisDataFirehose;

  final VerifiedaccessInstanceLoggingConfigurationAccessLogsS3? s3;

  Map<String, Object?> encode() => {
    if (includeTrustContext != null)
      'include_trust_context': includeTrustContext!.toTfJson(),
    if (logVersion != null) 'log_version': logVersion!.toTfJson(),
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (kinesisDataFirehose != null)
      'kinesis_data_firehose': kinesisDataFirehose!.encode(),
    if (s3 != null) 's3': s3!.encode(),
  };
}

/// Typed helper for the `access_logs.cloudwatch_logs` block of
/// `aws_verifiedaccess_instance_logging_configuration` (derived from provider schema).
@immutable
final class VerifiedaccessInstanceLoggingConfigurationAccessLogsCloudwatchLogs {
  const VerifiedaccessInstanceLoggingConfigurationAccessLogsCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? logGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
  };
}

/// Typed helper for the `access_logs.kinesis_data_firehose` block of
/// `aws_verifiedaccess_instance_logging_configuration` (derived from provider schema).
@immutable
final class VerifiedaccessInstanceLoggingConfigurationAccessLogsKinesisDataFirehose {
  const VerifiedaccessInstanceLoggingConfigurationAccessLogsKinesisDataFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  final TfArg<String>? deliveryStream;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    if (deliveryStream != null) 'delivery_stream': deliveryStream!.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `access_logs.s3` block of
/// `aws_verifiedaccess_instance_logging_configuration` (derived from provider schema).
@immutable
final class VerifiedaccessInstanceLoggingConfigurationAccessLogsS3 {
  const VerifiedaccessInstanceLoggingConfigurationAccessLogsS3({
    this.bucketName,
    this.bucketOwner,
    required this.enabled,
    this.prefix,
  });

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketOwner;

  final TfArg<bool> enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketOwner != null) 'bucket_owner': bucketOwner!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedaccess_instance_logging_configuration`.
final class AwsVerifiedaccessInstanceLoggingConfiguration extends Resource {
  static const String tfType =
      'aws_verifiedaccess_instance_logging_configuration';

  AwsVerifiedaccessInstanceLoggingConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> verifiedaccessInstanceId,
    required VerifiedaccessInstanceLoggingConfigurationAccessLogs accessLogs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'verifiedaccess_instance_id': verifiedaccessInstanceId,
           'access_logs': TfArg.literal(accessLogs.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedaccessInstanceLoggingConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
