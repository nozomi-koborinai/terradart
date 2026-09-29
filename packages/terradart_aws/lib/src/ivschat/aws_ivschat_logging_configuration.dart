// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_ivschat_logging_configuration`.
const Set<String> _awsIvschatLoggingConfigurationSensitive = <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_ivschat_logging_configuration` (derived from provider schema).
@immutable
final class IvschatLoggingConfigurationDestinationConfiguration {
  const IvschatLoggingConfigurationDestinationConfiguration({
    required this.destinationConfiguration,
  });

  final IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration
  destinationConfiguration;

  Map<String, Object?> encode() => {...destinationConfiguration.encode()};
}

/// Exactly one of `cloudwatch_logs`, `firehose`, `s3` on the `destination_configuration` block of `aws_ivschat_logging_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudwatchLogs(...)`.
sealed class IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration {
  const IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration();

  /// Sets `cloudwatch_logs`.
  const factory IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration.cloudwatchLogs(
    IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogs
    cloudwatchLogs,
  ) = IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationCloudwatchLogs;

  /// Sets `firehose`.
  const factory IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration.firehose(
    IvschatLoggingConfigurationDestinationConfigurationFirehose firehose,
  ) = IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationFirehose;

  /// Sets `s3`.
  const factory IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration.s3(
    IvschatLoggingConfigurationDestinationConfigurationS3 s3,
  ) = IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationS3;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration.cloudwatchLogs] choice: sets `cloudwatch_logs`.
final class IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationCloudwatchLogs
    extends
        IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration {
  const IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationCloudwatchLogs(
    this.cloudwatchLogs,
  );

  final IvschatLoggingConfigurationDestinationConfigurationCloudwatchLogs
  cloudwatchLogs;

  @override
  String get blockKey => 'cloudwatch_logs';

  @override
  Map<String, Object?> encode() => {'cloudwatch_logs': cloudwatchLogs.encode()};
}

/// The [IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration.firehose] choice: sets `firehose`.
final class IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationFirehose
    extends
        IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration {
  const IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationFirehose(
    this.firehose,
  );

  final IvschatLoggingConfigurationDestinationConfigurationFirehose firehose;

  @override
  String get blockKey => 'firehose';

  @override
  Map<String, Object?> encode() => {'firehose': firehose.encode()};
}

/// The [IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration.s3] choice: sets `s3`.
final class IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationS3
    extends
        IvschatLoggingConfigurationDestinationConfigurationDestinationConfiguration {
  const IvschatLoggingConfigurationDestinationConfigurationDestinationConfigurationS3(
    this.s3,
  );

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

  final RefTo<AwsCloudwatchLogGroup> logGroupName;

  Map<String, Object?> encode() => {
    'log_group_name': logGroupName.encodeAs('name').toTfJson(),
  };
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

  final RefTo<AwsS3Bucket> bucketName;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
  };
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIvschatLoggingConfiguration>`.
  RefTo<AwsIvschatLoggingConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
