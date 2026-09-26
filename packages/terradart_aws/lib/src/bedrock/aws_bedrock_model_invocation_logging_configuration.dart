// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<
    BedrockModelInvocationLoggingConfigurationLoggingConfigCloudwatchConfig
  >?
  cloudwatchConfig;

  final List<BedrockModelInvocationLoggingConfigurationLoggingConfigS3Config>?
  s3Config;

  Map<String, Object?> encode() => {
    if (embeddingDataDeliveryEnabled != null)
      'embedding_data_delivery_enabled': embeddingDataDeliveryEnabled!
          .toTfJson(),
    if (imageDataDeliveryEnabled != null)
      'image_data_delivery_enabled': imageDataDeliveryEnabled!.toTfJson(),
    if (textDataDeliveryEnabled != null)
      'text_data_delivery_enabled': textDataDeliveryEnabled!.toTfJson(),
    if (videoDataDeliveryEnabled != null)
      'video_data_delivery_enabled': videoDataDeliveryEnabled!.toTfJson(),
    if (cloudwatchConfig != null)
      'cloudwatch_config': [for (final e in cloudwatchConfig!) e.encode()],
    if (s3Config != null) 's3_config': [for (final e in s3Config!) e.encode()],
  };
}

/// Typed helper for the `logging_config.cloudwatch_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationLoggingConfigCloudwatchConfig {
  const BedrockModelInvocationLoggingConfigurationLoggingConfigCloudwatchConfig({
    required this.logGroupName,
    required this.roleArn,
    this.largeDataDeliveryS3Config,
  });

  final TfArg<String> logGroupName;

  final TfArg<String> roleArn;

  final List<
    BedrockModelInvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config
  >?
  largeDataDeliveryS3Config;

  Map<String, Object?> encode() => {
    'log_group_name': logGroupName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (largeDataDeliveryS3Config != null)
      'large_data_delivery_s3_config': [
        for (final e in largeDataDeliveryS3Config!) e.encode(),
      ],
  };
}

/// Typed helper for the `logging_config.cloudwatch_config.large_data_delivery_s3_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config {
  const BedrockModelInvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
  };
}

/// Typed helper for the `logging_config.s3_config` block of
/// `aws_bedrock_model_invocation_logging_configuration` (derived from provider schema).
@immutable
final class BedrockModelInvocationLoggingConfigurationLoggingConfigS3Config {
  const BedrockModelInvocationLoggingConfigurationLoggingConfigS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_model_invocation_logging_configuration`.
final class AwsBedrockModelInvocationLoggingConfiguration extends Resource {
  static const String tfType =
      'aws_bedrock_model_invocation_logging_configuration';

  AwsBedrockModelInvocationLoggingConfiguration({
    required super.localName,
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
           if (region != null) 'region': region,
           if (loggingConfig != null)
             'logging_config': TfArg.literal([
               for (final e in loggingConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockModelInvocationLoggingConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
