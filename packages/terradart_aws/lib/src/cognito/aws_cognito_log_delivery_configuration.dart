// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cognito_log_delivery_configuration`.
const Set<String> _awsCognitoLogDeliveryConfigurationSensitive = <String>{};

/// Typed helper for the `log_configurations` block of
/// `aws_cognito_log_delivery_configuration` (derived from provider schema).
@immutable
final class CognitoLogDeliveryConfigurationLogConfigurations {
  const CognitoLogDeliveryConfigurationLogConfigurations({
    required this.eventSource,
    required this.logLevel,
    this.cloudWatchLogsConfiguration,
    this.firehoseConfiguration,
    this.s3Configuration,
  });

  final TfArg<CognitoLogDeliveryConfigurationEventSource> eventSource;

  final TfArg<CognitoLogDeliveryConfigurationLogLevel> logLevel;

  final List<CognitoLogDeliveryConfigurationCloudWatchLogsConfiguration>?
  cloudWatchLogsConfiguration;

  final List<CognitoLogDeliveryConfigurationFirehoseConfiguration>?
  firehoseConfiguration;

  final List<CognitoLogDeliveryConfigurationS3Configuration>? s3Configuration;

  Map<String, Object?> encode() => {
    'event_source': eventSource.toTfJson(),
    'log_level': logLevel.toTfJson(),
    if (cloudWatchLogsConfiguration != null)
      'cloud_watch_logs_configuration': [
        for (final e in cloudWatchLogsConfiguration!) e.encode(),
      ],
    if (firehoseConfiguration != null)
      'firehose_configuration': [
        for (final e in firehoseConfiguration!) e.encode(),
      ],
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// `event_source` — derived from the provider schema description.
enum CognitoLogDeliveryConfigurationEventSource implements TerraformEnum {
  usernotification('userNotification'),
  userauthevents('userAuthEvents');

  const CognitoLogDeliveryConfigurationEventSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_level` — derived from the provider schema description.
enum CognitoLogDeliveryConfigurationLogLevel implements TerraformEnum {
  error('ERROR'),
  info('INFO');

  const CognitoLogDeliveryConfigurationLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `log_configurations.cloud_watch_logs_configuration` block of
/// `aws_cognito_log_delivery_configuration` (derived from provider schema).
@immutable
final class CognitoLogDeliveryConfigurationCloudWatchLogsConfiguration {
  const CognitoLogDeliveryConfigurationCloudWatchLogsConfiguration({
    this.logGroupArn,
  });

  final RefTo<AwsCloudwatchLogGroup>? logGroupArn;

  Map<String, Object?> encode() => {
    'log_group_arn': ?logGroupArn?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `log_configurations.firehose_configuration` block of
/// `aws_cognito_log_delivery_configuration` (derived from provider schema).
@immutable
final class CognitoLogDeliveryConfigurationFirehoseConfiguration {
  const CognitoLogDeliveryConfigurationFirehoseConfiguration({this.streamArn});

  final TfArg<String>? streamArn;

  Map<String, Object?> encode() => {'stream_arn': ?streamArn?.toTfJson()};
}

/// Typed helper for the `log_configurations.s3_configuration` block of
/// `aws_cognito_log_delivery_configuration` (derived from provider schema).
@immutable
final class CognitoLogDeliveryConfigurationS3Configuration {
  const CognitoLogDeliveryConfigurationS3Configuration({this.bucketArn});

  final RefTo<AwsS3Bucket>? bucketArn;

  Map<String, Object?> encode() => {
    'bucket_arn': ?bucketArn?.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_log_delivery_configuration`.
final class AwsCognitoLogDeliveryConfiguration extends Resource {
  static const String tfType = 'aws_cognito_log_delivery_configuration';

  AwsCognitoLogDeliveryConfiguration(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    List<CognitoLogDeliveryConfigurationLogConfigurations>? logConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'user_pool_id': userPoolId,
           if (logConfigurations != null)
             'log_configurations': TfArg.literal([
               for (final e in logConfigurations) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCognitoLogDeliveryConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoLogDeliveryConfiguration>`.
  RefTo<AwsCognitoLogDeliveryConfiguration> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
