// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ivschat_logging_configuration`.
const Set<String> _awsIvschatLoggingConfigurationSensitive = <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_ivschat_logging_configuration` (derived from provider schema).
@immutable
final class IvschatLoggingConfigurationDestinationConfiguration {
  const IvschatLoggingConfigurationDestinationConfiguration({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  final IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogs?
  cloudwatchLogs;

  final IvschatLoggingConfigurationDestinationConfigurationFirehose? firehose;

  final IvschatLoggingConfigurationDestinationConfigurationS3? s3;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (firehose != null) 'firehose': firehose!.encode(),
    if (s3 != null) 's3': s3!.encode(),
  };
}

/// Typed helper for the `destination_configuration.cloudwatch_logs` block of
/// `aws_ivschat_logging_configuration` (derived from provider schema).
@immutable
final class IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogs {
  const IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogs({
    required this.logGroupName,
  });

  final TfArg<String> logGroupName;

  Map<String, Object?> encode() => {'log_group_name': logGroupName.toTfJson()};
}

/// Typed helper for the `destination_configuration.firehose` block of
/// `aws_ivschat_logging_configuration` (derived from provider schema).
@immutable
final class IvschatLoggingConfigurationDestinationConfigurationFirehose {
  const IvschatLoggingConfigurationDestinationConfigurationFirehose({
    required this.deliveryStreamName,
  });

  final TfArg<String> deliveryStreamName;

  Map<String, Object?> encode() => {
    'delivery_stream_name': deliveryStreamName.toTfJson(),
  };
}

/// Typed helper for the `destination_configuration.s3` block of
/// `aws_ivschat_logging_configuration` (derived from provider schema).
@immutable
final class IvschatLoggingConfigurationDestinationConfigurationS3 {
  const IvschatLoggingConfigurationDestinationConfigurationS3({
    required this.bucketName,
  });

  final TfArg<String> bucketName;

  Map<String, Object?> encode() => {'bucket_name': bucketName.toTfJson()};
}

/// Factory wrapper for `aws_ivschat_logging_configuration`.
final class AwsIvschatLoggingConfiguration extends Resource {
  static const String tfType = 'aws_ivschat_logging_configuration';

  AwsIvschatLoggingConfiguration({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    IvschatLoggingConfigurationDestinationConfiguration?
    destinationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (destinationConfiguration != null)
             'destination_configuration': TfArg.literal(
               destinationConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvschatLoggingConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
