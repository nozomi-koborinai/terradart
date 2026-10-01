// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_bedrock_model_invocation_job`.
const Set<String> _awsBedrockModelInvocationJobSensitive = <String>{};

/// Typed helper for the `input_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobInputDataConfig {
  const BedrockModelInvocationJobInputDataConfig({this.s3InputDataConfig});

  final List<BedrockModelInvocationJobS3InputDataConfig>? s3InputDataConfig;

  @internal
  Map<String, Object?> encode() => {
    if (s3InputDataConfig != null)
      's3_input_data_config': [for (final e in s3InputDataConfig!) e.encode()],
  };
}

/// Typed helper for the `input_data_config.s3_input_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobS3InputDataConfig {
  const BedrockModelInvocationJobS3InputDataConfig({
    this.s3BucketOwner,
    this.s3InputFormat,
    required this.s3Uri,
  });

  final TfArg<String>? s3BucketOwner;

  final BedrockModelInvocationJobS3InputFormat? s3InputFormat;

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {
    's3_bucket_owner': ?s3BucketOwner?.toTfJson(),
    's3_input_format': ?s3InputFormat?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// `s3_input_format` — derived from the provider schema description.
extension type const BedrockModelInvocationJobS3InputFormat._(TfArg<String> _)
    implements TfArg<String> {
  BedrockModelInvocationJobS3InputFormat.variable(String name)
    : this._(TfArg.variable(name));
  BedrockModelInvocationJobS3InputFormat.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockModelInvocationJobS3InputFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const jsonl = BedrockModelInvocationJobS3InputFormat._(
    TfArgLiteral('JSONL'),
  );

  static const List<BedrockModelInvocationJobS3InputFormat> values = [jsonl];
}

/// Typed helper for the `output_data_config` block of
/// `aws_bedrock_model_invocation_job` (derived from provider schema).
@immutable
final class BedrockModelInvocationJobOutputDataConfig {
  const BedrockModelInvocationJobOutputDataConfig({this.s3OutputDataConfig});

  final List<BedrockModelInvocationJobS3OutputDataConfig>? s3OutputDataConfig;

  @internal
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
final class BedrockModelInvocationJobS3OutputDataConfig {
  const BedrockModelInvocationJobS3OutputDataConfig({
    this.s3BucketOwner,
    this.s3EncryptionKeyId,
    required this.s3Uri,
  });

  final TfArg<String>? s3BucketOwner;

  final TfArg<String>? s3EncryptionKeyId;

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {
    's3_bucket_owner': ?s3BucketOwner?.toTfJson(),
    's3_encryption_key_id': ?s3EncryptionKeyId?.toTfJson(),
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

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_model_invocation_job`.
final class AwsBedrockModelInvocationJob extends Resource {
  static const String tfType = 'aws_bedrock_model_invocation_job';

  AwsBedrockModelInvocationJob(
    super.localName, {
    required TfArg<String> jobName,
    required TfArg<String> modelId,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'skip_destroy': ?skipDestroy,
           'timeout_duration_in_hours': ?timeoutDurationInHours,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockModelInvocationJob>`.
  RefTo<AwsBedrockModelInvocationJob> get ref => RefTo.of(this);

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

  /// Reference to `job_name` attribute.
  TfRef<String> get jobName => TfRef.attribute<String>(this, 'job_name');

  /// Reference to `model_id` attribute.
  TfRef<String> get modelId => TfRef.attribute<String>(this, 'model_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `timeout_duration_in_hours` attribute.
  TfRef<num> get timeoutDurationInHours =>
      TfRef.attribute<num>(this, 'timeout_duration_in_hours');
}
