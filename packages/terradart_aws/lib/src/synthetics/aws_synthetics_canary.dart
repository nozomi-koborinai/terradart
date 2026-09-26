// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_synthetics_canary`.
const Set<String> _awsSyntheticsCanarySensitive = <String>{};

/// Typed helper for the `artifact_config` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryArtifactConfig {
  const SyntheticsCanaryArtifactConfig({this.s3Encryption});

  final SyntheticsCanaryArtifactConfigS3Encryption? s3Encryption;

  Map<String, Object?> encode() => {
    if (s3Encryption != null) 's3_encryption': s3Encryption!.encode(),
  };
}

/// Typed helper for the `artifact_config.s3_encryption` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryArtifactConfigS3Encryption {
  const SyntheticsCanaryArtifactConfigS3Encryption({
    this.encryptionMode,
    this.kmsKeyArn,
  });

  final TfArg<String>? encryptionMode;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (encryptionMode != null) 'encryption_mode': encryptionMode!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
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
    if (activeTracing != null) 'active_tracing': activeTracing!.toTfJson(),
    if (environmentVariables != null)
      'environment_variables': environmentVariables!.toTfJson(),
    if (ephemeralStorage != null)
      'ephemeral_storage': ephemeralStorage!.toTfJson(),
    if (memoryInMb != null) 'memory_in_mb': memoryInMb!.toTfJson(),
    if (timeoutInSeconds != null)
      'timeout_in_seconds': timeoutInSeconds!.toTfJson(),
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

  final SyntheticsCanaryScheduleRetryConfig? retryConfig;

  Map<String, Object?> encode() => {
    if (durationInSeconds != null)
      'duration_in_seconds': durationInSeconds!.toTfJson(),
    'expression': expression.toTfJson(),
    if (retryConfig != null) 'retry_config': retryConfig!.encode(),
  };
}

/// Typed helper for the `schedule.retry_config` block of
/// `aws_synthetics_canary` (derived from provider schema).
@immutable
final class SyntheticsCanaryScheduleRetryConfig {
  const SyntheticsCanaryScheduleRetryConfig({required this.maxRetries});

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

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (ipv6AllowedForDualStack != null)
      'ipv6_allowed_for_dual_stack': ipv6AllowedForDualStack!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_synthetics_canary`.
final class AwsSyntheticsCanary extends Resource {
  static const String tfType = 'aws_synthetics_canary';

  AwsSyntheticsCanary({
    required super.localName,
    required TfArg<String> artifactS3Location,
    TfArg<bool>? deleteLambda,
    required TfArg<String> executionRoleArn,
    TfArg<num>? failureRetentionPeriod,
    required TfArg<String> handler,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> runtimeVersion,
    TfArg<String>? s3Bucket,
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
           if (deleteLambda != null) 'delete_lambda': deleteLambda,
           'execution_role_arn': executionRoleArn,
           if (failureRetentionPeriod != null)
             'failure_retention_period': failureRetentionPeriod,
           'handler': handler,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'name': name,
           if (region != null) 'region': region,
           'runtime_version': runtimeVersion,
           if (s3Bucket != null) 's3_bucket': s3Bucket,
           if (s3Key != null) 's3_key': s3Key,
           if (s3Version != null) 's3_version': s3Version,
           if (startCanary != null) 'start_canary': startCanary,
           if (successRetentionPeriod != null)
             'success_retention_period': successRetentionPeriod,
           if (tags != null) 'tags': tags,
           if (zipFile != null) 'zip_file': zipFile,
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
}
