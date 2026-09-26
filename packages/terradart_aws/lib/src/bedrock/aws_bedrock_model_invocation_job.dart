// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_model_invocation_job`.
const Set<String> _awsBedrockModelInvocationJobSensitive = <String>{};

/// Typed helper for the `input_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobInputDataConfig {
  const BedrockModelInvocationJobInputDataConfig({this.s3InputDataConfig});

  final List<BedrockModelInvocationJobInputDataConfigS3InputDataConfig>?
  s3InputDataConfig;

  Map<String, Object?> encode() => {
    if (s3InputDataConfig != null)
      's3_input_data_config': [for (final e in s3InputDataConfig!) e.encode()],
  };
}

/// Typed helper for the `input_data_config.s3_input_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobInputDataConfigS3InputDataConfig {
  const BedrockModelInvocationJobInputDataConfigS3InputDataConfig({
    this.s3BucketOwner,
    this.s3InputFormat,
    required this.s3Uri,
  });

  final TfArg<String>? s3BucketOwner;

  final TfArg<String>? s3InputFormat;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (s3BucketOwner != null) 's3_bucket_owner': s3BucketOwner!.toTfJson(),
    if (s3InputFormat != null) 's3_input_format': s3InputFormat!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `output_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobOutputDataConfig {
  const BedrockModelInvocationJobOutputDataConfig({this.s3OutputDataConfig});

  final List<BedrockModelInvocationJobOutputDataConfigS3OutputDataConfig>?
  s3OutputDataConfig;

  Map<String, Object?> encode() => {
    if (s3OutputDataConfig != null)
      's3_output_data_config': [
        for (final e in s3OutputDataConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `output_data_config.s3_output_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobOutputDataConfigS3OutputDataConfig {
  const BedrockModelInvocationJobOutputDataConfigS3OutputDataConfig({
    this.s3BucketOwner,
    this.s3EncryptionKeyId,
    required this.s3Uri,
  });

  final TfArg<String>? s3BucketOwner;

  final TfArg<String>? s3EncryptionKeyId;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (s3BucketOwner != null) 's3_bucket_owner': s3BucketOwner!.toTfJson(),
    if (s3EncryptionKeyId != null)
      's3_encryption_key_id': s3EncryptionKeyId!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobVpcConfig {
  const BedrockModelInvocationJobVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_model_invocation_job`.
final class AwsBedrockModelInvocationJob extends Resource {
  static const String tfType = 'aws_bedrock_model_invocation_job';

  AwsBedrockModelInvocationJob({
    required super.localName,
    required TfArg<String> jobName,
    required TfArg<String> modelId,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<bool>? skipDestroy,
    TfArg<num>? timeoutDurationInHours,
    List<BedrockModelInvocationJobInputDataConfig>? inputDataConfig,
    List<BedrockModelInvocationJobOutputDataConfig>? outputDataConfig,
    List<BedrockModelInvocationJobVpcConfig>? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_name': jobName,
           'model_id': modelId,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (timeoutDurationInHours != null)
             'timeout_duration_in_hours': timeoutDurationInHours,
           if (inputDataConfig != null)
             'input_data_config': TfArg.literal([
               for (final e in inputDataConfig) e.encode(),
             ]),
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal([
               for (final e in outputDataConfig) e.encode(),
             ]),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal([
               for (final e in vpcConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockModelInvocationJobSensitive;

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `error_record_count` attribute.
  TfRef<num> get errorRecordCount =>
      TfRef.attribute<num>(this, 'error_record_count');

  /// Reference to `job_arn` attribute.
  TfRef<String> get jobArn => TfRef.attribute<String>(this, 'job_arn');

  /// Reference to `job_expiration_time` attribute.
  TfRef<String> get jobExpirationTime =>
      TfRef.attribute<String>(this, 'job_expiration_time');

  /// Reference to `model_invocation_type` attribute.
  TfRef<String> get modelInvocationType =>
      TfRef.attribute<String>(this, 'model_invocation_type');

  /// Reference to `processed_record_count` attribute.
  TfRef<num> get processedRecordCount =>
      TfRef.attribute<num>(this, 'processed_record_count');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `submit_time` attribute.
  TfRef<String> get submitTime => TfRef.attribute<String>(this, 'submit_time');

  /// Reference to `success_record_count` attribute.
  TfRef<num> get successRecordCount =>
      TfRef.attribute<num>(this, 'success_record_count');

  /// Reference to `total_record_count` attribute.
  TfRef<num> get totalRecordCount =>
      TfRef.attribute<num>(this, 'total_record_count');
}
