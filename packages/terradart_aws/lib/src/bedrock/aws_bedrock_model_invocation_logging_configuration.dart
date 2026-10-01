// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_bedrock_model_invocation_logging_configuration`.
const Set<String> _awsBedrockModelInvocationLoggingConfigurationSensitive =
    <String>{};

/// Typed helper for the `logging_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationLoggingConfig {
  const BedrockModelInvocationLoggingConfigurationLoggingConfig({
    this.embeddingDataDeliveryEnabled,
    this.imageDataDeliveryEnabled,
    this.textDataDeliveryEnabled,
    this.videoDataDeliveryEnabled,
    this.cloudwatchConfig,
    this.s3Config,
  });

  final TfArg<bool>? embeddingDataDeliveryEnabled;

  final TfArg<bool>? imageDataDeliveryEnabled;

  final TfArg<bool>? textDataDeliveryEnabled;

  final TfArg<bool>? videoDataDeliveryEnabled;

  final List<BedrockModelInvocationLoggingConfigurationCloudwatchConfig>?
  cloudwatchConfig;

  final List<BedrockModelInvocationLoggingConfigurationS3Config>? s3Config;

  Map<String, Object?> encode() => {
    'embedding_data_delivery_enabled': ?embeddingDataDeliveryEnabled
        ?.toTfJson(),
    'image_data_delivery_enabled': ?imageDataDeliveryEnabled?.toTfJson(),
    'text_data_delivery_enabled': ?textDataDeliveryEnabled?.toTfJson(),
    'video_data_delivery_enabled': ?videoDataDeliveryEnabled?.toTfJson(),
    if (cloudwatchConfig != null)
      'cloudwatch_config': [for (final e in cloudwatchConfig!) e.encode()],
    if (s3Config != null) 's3_config': [for (final e in s3Config!) e.encode()],
  };
}

/// Typed helper for the `logging_config.cloudwatch_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationCloudwatchConfig {
  const BedrockModelInvocationLoggingConfigurationCloudwatchConfig({
    required this.logGroupName,
    required this.roleArn,
    this.largeDataDeliveryS3Config,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupName;

  final RefTo<AwsIamRole> roleArn;

  final List<
    BedrockModelInvocationLoggingConfigurationLargeDataDeliveryS3Config
  >?
  largeDataDeliveryS3Config;

  Map<String, Object?> encode() => {
    'log_group_name': logGroupName.encodeAs('name').toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    if (largeDataDeliveryS3Config != null)
      'large_data_delivery_s3_config': [
        for (final e in largeDataDeliveryS3Config!) e.encode(),
      ],
  };
}

/// Typed helper for the `logging_config.cloudwatch_config.large_data_delivery_s3_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationLargeDataDeliveryS3Config {
  const BedrockModelInvocationLoggingConfigurationLargeDataDeliveryS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
  };
}

/// Typed helper for the `logging_config.s3_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationS3Config {
  const BedrockModelInvocationLoggingConfigurationS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_model_invocation_logging_configuration`.
final class AwsBedrockModelInvocationLoggingConfiguration extends Resource {
  static const String tfType =
      'aws_bedrock_model_invocation_logging_configuration';

  AwsBedrockModelInvocationLoggingConfiguration(
    super.localName, {
    TfArg<String>? region,
    List<BedrockModelInvocationLoggingConfigurationLoggingConfig>?
    loggingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([
               for (final e in loggingConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockModelInvocationLoggingConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockModelInvocationLoggingConfiguration>`.
  RefTo<AwsBedrockModelInvocationLoggingConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
