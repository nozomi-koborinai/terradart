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
    required this.cloudwatchLogsOrFirehoseOrS3,
  });

  final IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3
  cloudwatchLogsOrFirehoseOrS3;

  Map<String, Object?> encode() => {...cloudwatchLogsOrFirehoseOrS3.encode()};
}

/// Exactly one of `cloudwatch_logs`, `firehose`, `s3` on the `destination_configuration` block of `aws_ivschat_logging_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3 {
  const IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `cloudwatch_logs` (one of the [IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3] choices).
final class IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOption
    extends
        IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3 {
  const IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOption({
    required this.cloudwatchLogs,
  });

  final IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogs
  cloudwatchLogs;

  @override
  String get blockKey => 'cloudwatch_logs';

  @override
  Map<String, Object?> encode() => {'cloudwatch_logs': cloudwatchLogs.encode()};
}

/// Sets `firehose` (one of the [IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3] choices).
final class IvschatLoggingConfigurationDestinationConfigurationFirehoseOption
    extends
        IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3 {
  const IvschatLoggingConfigurationDestinationConfigurationFirehoseOption({
    required this.firehose,
  });

  final IvschatLoggingConfigurationDestinationConfigurationFirehose firehose;

  @override
  String get blockKey => 'firehose';

  @override
  Map<String, Object?> encode() => {'firehose': firehose.encode()};
}

/// Sets `s3` (one of the [IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3] choices).
final class IvschatLoggingConfigurationDestinationConfigurationS3Option
    extends
        IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogsOrFirehoseOrS3 {
  const IvschatLoggingConfigurationDestinationConfigurationS3Option({
    required this.s3,
  });

  final IvschatLoggingConfigurationDestinationConfigurationS3 s3;

  @override
  String get blockKey => 's3';

  @override
  Map<String, Object?> encode() => {'s3': s3.encode()};
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
