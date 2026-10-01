// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_synthetics_canary`.
const Set<String> _awsSyntheticsCanarySensitive = <String>{};

/// Typed helper for the `artifact_config` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryArtifactConfig {
  const SyntheticsCanaryArtifactConfig({this.s3Encryption});

  final SyntheticsCanaryS3Encryption? s3Encryption;

  Map<String, Object?> encode() => {'s3_encryption': ?s3Encryption?.encode()};
}

/// Typed helper for the `artifact_config.s3_encryption` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryS3Encryption {
  const SyntheticsCanaryS3Encryption({this.encryptionMode, this.kmsKeyArn});

  final TfArg<SyntheticsCanaryEncryptionMode>? encryptionMode;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'encryption_mode': ?encryptionMode?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_mode` — derived from the provider schema description.
enum SyntheticsCanaryEncryptionMode implements TerraformEnum {
  sseS3('SSE_S3'),
  sseKms('SSE_KMS');

  const SyntheticsCanaryEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `run_config` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryRunConfig {
  const SyntheticsCanaryRunConfig({
    this.activeTracing,
    this.environmentVariables,
    this.ephemeralStorage,
    this.memoryInMb,
    this.timeoutInSeconds,
  });

  final TfArg<bool>? activeTracing;

  final TfArg<Map<String, String>>? environmentVariables;

  final TfArg<num>? ephemeralStorage;

  final TfArg<num>? memoryInMb;

  final TfArg<num>? timeoutInSeconds;

  Map<String, Object?> encode() => {
    'active_tracing': ?activeTracing?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'ephemeral_storage': ?ephemeralStorage?.toTfJson(),
    'memory_in_mb': ?memoryInMb?.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanarySchedule {
  const SyntheticsCanarySchedule({
    this.durationInSeconds,
    required this.expression,
    this.retryConfig,
  });

  final TfArg<num>? durationInSeconds;

  final TfArg<String> expression;

  final SyntheticsCanaryRetryConfig? retryConfig;

  Map<String, Object?> encode() => {
    'duration_in_seconds': ?durationInSeconds?.toTfJson(),
    'expression': expression.toTfJson(),
    'retry_config': ?retryConfig?.encode(),
  };
}

/// Typed helper for the `schedule.retry_config` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryRetryConfig {
  const SyntheticsCanaryRetryConfig({required this.maxRetries});

  final TfArg<num> maxRetries;

  Map<String, Object?> encode() => {'max_retries': maxRetries.toTfJson()};
}

/// Typed helper for the `vpc_config` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryVpcConfig {
  const SyntheticsCanaryVpcConfig({
    this.ipv6AllowedForDualStack,
    this.securityGroupIds,
    this.subnetIds,
  });

  final TfArg<bool>? ipv6AllowedForDualStack;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  Map<String, Object?> encode() => {
    'ipv6_allowed_for_dual_stack': ?ipv6AllowedForDualStack?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_synthetics_canary`.
final class AwsSyntheticsCanary extends Resource {
  static const String tfType = 'aws_synthetics_canary';

  AwsSyntheticsCanary({
    required super.localName,
    required TfArg<String> artifactS3Location,
    TfArg<bool>? deleteLambda,
    required RefTo<AwsIamRole> executionRoleArn,
    TfArg<num>? failureRetentionPeriod,
    required TfArg<String> handler,
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> runtimeVersion,
    RefTo<AwsS3Bucket>? s3Bucket,
    TfArg<String>? s3Key,
    TfArg<String>? s3Version,
    TfArg<bool>? startCanary,
    TfArg<num>? successRetentionPeriod,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? zipFile,
    SyntheticsCanaryArtifactConfig? artifactConfig,
    SyntheticsCanaryRunConfig? runConfig,
    required SyntheticsCanarySchedule schedule,
    SyntheticsCanaryVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'artifact_s3_location': artifactS3Location,
           'delete_lambda': ?deleteLambda,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'failure_retention_period': ?failureRetentionPeriod,
           'handler': handler,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'runtime_version': runtimeVersion,
           's3_bucket': ?s3Bucket?.encodeAs('id'),
           's3_key': ?s3Key,
           's3_version': ?s3Version,
           'start_canary': ?startCanary,
           'success_retention_period': ?successRetentionPeriod,
           'tags': ?tags,
           'zip_file': ?zipFile,
           if (artifactConfig != null)
             'artifact_config': TfArg.literal(artifactConfig.encode()),
           if (runConfig != null)
             'run_config': TfArg.literal(runConfig.encode()),
           'schedule': TfArg.literal(schedule.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSyntheticsCanarySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSyntheticsCanary>`.
  RefTo<AwsSyntheticsCanary> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `engine_arn` attribute.
  TfRef<String> get engineArn => TfRef.attribute<String>(this, 'engine_arn');

  /// Reference to `source_location_arn` attribute.
  TfRef<String> get sourceLocationArn =>
      TfRef.attribute<String>(this, 'source_location_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `timeline` attribute.
  TfRef<List<Map<String, Object?>>> get timeline =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'timeline');

  /// Reference to `artifact_s3_location` attribute.
  TfRef<String> get artifactS3LocationRef =>
      TfRef.attribute<String>(this, 'artifact_s3_location');

  /// Reference to `delete_lambda` attribute.
  TfRef<bool> get deleteLambdaRef =>
      TfRef.attribute<bool>(this, 'delete_lambda');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArnRef =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `failure_retention_period` attribute.
  TfRef<num> get failureRetentionPeriodRef =>
      TfRef.attribute<num>(this, 'failure_retention_period');

  /// Reference to `handler` attribute.
  TfRef<String> get handlerRef => TfRef.attribute<String>(this, 'handler');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArnRef =>
      TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `runtime_version` attribute.
  TfRef<String> get runtimeVersionRef =>
      TfRef.attribute<String>(this, 'runtime_version');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3BucketRef => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `s3_key` attribute.
  TfRef<String> get s3KeyRef => TfRef.attribute<String>(this, 's3_key');

  /// Reference to `s3_version` attribute.
  TfRef<String> get s3VersionRef => TfRef.attribute<String>(this, 's3_version');

  /// Reference to `start_canary` attribute.
  TfRef<bool> get startCanaryRef => TfRef.attribute<bool>(this, 'start_canary');

  /// Reference to `success_retention_period` attribute.
  TfRef<num> get successRetentionPeriodRef =>
      TfRef.attribute<num>(this, 'success_retention_period');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zip_file` attribute.
  TfRef<String> get zipFileRef => TfRef.attribute<String>(this, 'zip_file');
}
