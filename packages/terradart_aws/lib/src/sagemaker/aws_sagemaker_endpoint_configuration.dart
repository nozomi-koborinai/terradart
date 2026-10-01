// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_endpoint_configuration`.
const Set<String> _awsSagemakerEndpointConfigurationSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_sagemaker_endpoint_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SagemakerEndpointConfigurationName {
  const SagemakerEndpointConfigurationName();

  /// Sets `name`.
  const factory SagemakerEndpointConfigurationName.name(TfArg<String> name) =
      SagemakerEndpointConfigurationNameChoice;

  /// Sets `name_prefix`.
  const factory SagemakerEndpointConfigurationName.namePrefix(
    TfArg<String> namePrefix,
  ) = SagemakerEndpointConfigurationNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SagemakerEndpointConfigurationName.name] choice: sets `name`.
final class SagemakerEndpointConfigurationNameChoice
    extends SagemakerEndpointConfigurationName {
  const SagemakerEndpointConfigurationNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SagemakerEndpointConfigurationName.namePrefix] choice: sets `name_prefix`.
final class SagemakerEndpointConfigurationNamePrefix
    extends SagemakerEndpointConfigurationName {
  const SagemakerEndpointConfigurationNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `async_inference_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationAsyncInferenceConfig {
  const SagemakerEndpointConfigurationAsyncInferenceConfig({
    this.clientConfig,
    required this.outputConfig,
  });

  final SagemakerEndpointConfigurationClientConfig? clientConfig;

  final SagemakerEndpointConfigurationOutputConfig outputConfig;

  Map<String, Object?> encode() => {
    'client_config': ?clientConfig?.encode(),
    'output_config': outputConfig.encode(),
  };
}

/// Typed helper for the `async_inference_config.client_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationClientConfig {
  const SagemakerEndpointConfigurationClientConfig({
    this.maxConcurrentInvocationsPerInstance,
  });

  final TfArg<num>? maxConcurrentInvocationsPerInstance;

  Map<String, Object?> encode() => {
    'max_concurrent_invocations_per_instance':
        ?maxConcurrentInvocationsPerInstance?.toTfJson(),
  };
}

/// Typed helper for the `async_inference_config.output_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationOutputConfig {
  const SagemakerEndpointConfigurationOutputConfig({
    this.kmsKeyId,
    this.s3FailurePath,
    required this.s3OutputPath,
    this.notificationConfig,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? s3FailurePath;

  final TfArg<String> s3OutputPath;

  final SagemakerEndpointConfigurationNotificationConfig? notificationConfig;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_failure_path': ?s3FailurePath?.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
    'notification_config': ?notificationConfig?.encode(),
  };
}

/// Typed helper for the `async_inference_config.output_config.notification_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationNotificationConfig {
  const SagemakerEndpointConfigurationNotificationConfig({
    this.errorTopic,
    this.includeInferenceResponseIn,
    this.successTopic,
  });

  final TfArg<String>? errorTopic;

  final List<TfArg<SagemakerEndpointConfigurationIncludeInferenceResponseIn>>?
  includeInferenceResponseIn;

  final TfArg<String>? successTopic;

  Map<String, Object?> encode() => {
    'error_topic': ?errorTopic?.toTfJson(),
    if (includeInferenceResponseIn != null)
      'include_inference_response_in': [
        for (final e in includeInferenceResponseIn!) e.toTfJson(),
      ],
    'success_topic': ?successTopic?.toTfJson(),
  };
}

/// `include_inference_response_in` — derived from the provider schema description.
enum SagemakerEndpointConfigurationIncludeInferenceResponseIn
    implements TerraformEnum {
  successNotificationTopic('SUCCESS_NOTIFICATION_TOPIC'),
  errorNotificationTopic('ERROR_NOTIFICATION_TOPIC');

  const SagemakerEndpointConfigurationIncludeInferenceResponseIn(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `data_capture_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationDataCaptureConfig {
  const SagemakerEndpointConfigurationDataCaptureConfig({
    required this.destinationS3Uri,
    this.enableCapture,
    required this.initialSamplingPercentage,
    this.kmsKeyId,
    this.captureContentTypeHeader,
    required this.captureOptions,
  });

  final TfArg<String> destinationS3Uri;

  final TfArg<bool>? enableCapture;

  final TfArg<num> initialSamplingPercentage;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final SagemakerEndpointConfigurationCaptureContentTypeHeader?
  captureContentTypeHeader;

  final List<SagemakerEndpointConfigurationCaptureOptions> captureOptions;

  Map<String, Object?> encode() => {
    'destination_s3_uri': destinationS3Uri.toTfJson(),
    'enable_capture': ?enableCapture?.toTfJson(),
    'initial_sampling_percentage': initialSamplingPercentage.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'capture_content_type_header': ?captureContentTypeHeader?.encode(),
    'capture_options': [for (final e in captureOptions) e.encode()],
  };
}

/// Typed helper for the `data_capture_config.capture_content_type_header` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationCaptureContentTypeHeader {
  const SagemakerEndpointConfigurationCaptureContentTypeHeader({
    this.csvContentTypes,
    this.jsonContentTypes,
  });

  final TfArg<List<String>>? csvContentTypes;

  final TfArg<List<String>>? jsonContentTypes;

  Map<String, Object?> encode() => {
    'csv_content_types': ?csvContentTypes?.toTfJson(),
    'json_content_types': ?jsonContentTypes?.toTfJson(),
  };
}

/// Typed helper for the `data_capture_config.capture_options` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationCaptureOptions {
  const SagemakerEndpointConfigurationCaptureOptions({
    required this.captureMode,
  });

  final TfArg<SagemakerEndpointConfigurationCaptureMode> captureMode;

  Map<String, Object?> encode() => {'capture_mode': captureMode.toTfJson()};
}

/// `capture_mode` — derived from the provider schema description.
enum SagemakerEndpointConfigurationCaptureMode implements TerraformEnum {
  input('Input'),
  output('Output'),
  inputandoutput('InputAndOutput');

  const SagemakerEndpointConfigurationCaptureMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `production_variants` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationProductionVariants {
  const SagemakerEndpointConfigurationProductionVariants({
    this.acceleratorType,
    this.containerStartupHealthCheckTimeoutInSeconds,
    this.enableSsmAccess,
    this.inferenceAmiVersion,
    this.initialInstanceCount,
    this.initialVariantWeight,
    this.instanceType,
    this.modelDataDownloadTimeoutInSeconds,
    this.modelName,
    this.variantName,
    this.volumeSizeInGb,
    this.capacityReservationConfig,
    this.coreDumpConfig,
    this.managedInstanceScaling,
    this.routingConfig,
    this.serverlessConfig,
  });

  final TfArg<SagemakerEndpointConfigurationAcceleratorType>? acceleratorType;

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<bool>? enableSsmAccess;

  final TfArg<SagemakerEndpointConfigurationInferenceAmiVersion>?
  inferenceAmiVersion;

  final TfArg<num>? initialInstanceCount;

  final TfArg<num>? initialVariantWeight;

  final TfArg<SagemakerEndpointConfigurationInstanceType>? instanceType;

  final TfArg<num>? modelDataDownloadTimeoutInSeconds;

  final TfArg<String>? modelName;

  final TfArg<String>? variantName;

  final TfArg<num>? volumeSizeInGb;

  final SagemakerEndpointConfigurationCapacityReservationConfig?
  capacityReservationConfig;

  final SagemakerEndpointConfigurationProductionVariantsCoreDumpConfig?
  coreDumpConfig;

  final SagemakerEndpointConfigurationManagedInstanceScaling?
  managedInstanceScaling;

  final List<SagemakerEndpointConfigurationRoutingConfig>? routingConfig;

  final SagemakerEndpointConfigurationServerlessConfig? serverlessConfig;

  Map<String, Object?> encode() => {
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'container_startup_health_check_timeout_in_seconds':
        ?containerStartupHealthCheckTimeoutInSeconds?.toTfJson(),
    'enable_ssm_access': ?enableSsmAccess?.toTfJson(),
    'inference_ami_version': ?inferenceAmiVersion?.toTfJson(),
    'initial_instance_count': ?initialInstanceCount?.toTfJson(),
    'initial_variant_weight': ?initialVariantWeight?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'model_data_download_timeout_in_seconds': ?modelDataDownloadTimeoutInSeconds
        ?.toTfJson(),
    'model_name': ?modelName?.toTfJson(),
    'variant_name': ?variantName?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
    'capacity_reservation_config': ?capacityReservationConfig?.encode(),
    'core_dump_config': ?coreDumpConfig?.encode(),
    'managed_instance_scaling': ?managedInstanceScaling?.encode(),
    if (routingConfig != null)
      'routing_config': [for (final e in routingConfig!) e.encode()],
    'serverless_config': ?serverlessConfig?.encode(),
  };
}

/// `accelerator_type` — derived from the provider schema description.
enum SagemakerEndpointConfigurationAcceleratorType implements TerraformEnum {
  mlEia1Medium('ml.eia1.medium'),
  mlEia1Large('ml.eia1.large'),
  mlEia1Xlarge('ml.eia1.xlarge'),
  mlEia2Medium('ml.eia2.medium'),
  mlEia2Large('ml.eia2.large'),
  mlEia2Xlarge('ml.eia2.xlarge');

  const SagemakerEndpointConfigurationAcceleratorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `inference_ami_version` — derived from the provider schema description.
enum SagemakerEndpointConfigurationInferenceAmiVersion
    implements TerraformEnum {
  al2AmiSagemakerInferenceGpu2('al2-ami-sagemaker-inference-gpu-2'),
  al2AmiSagemakerInferenceGpu21('al2-ami-sagemaker-inference-gpu-2-1'),
  al2AmiSagemakerInferenceGpu31('al2-ami-sagemaker-inference-gpu-3-1'),
  al2AmiSagemakerInferenceNeuron2('al2-ami-sagemaker-inference-neuron-2'),
  al2023AmiSagemakerInferenceGpu41('al2023-ami-sagemaker-inference-gpu-4-1');

  const SagemakerEndpointConfigurationInferenceAmiVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerEndpointConfigurationInstanceType implements TerraformEnum {
  mlT2Medium('ml.t2.medium'),
  mlT2Large('ml.t2.large'),
  mlT2Xlarge('ml.t2.xlarge'),
  mlT2p2xlarge('ml.t2.2xlarge'),
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC4Large('ml.c4.large'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5dLarge('ml.c5d.large'),
  mlC5dXlarge('ml.c5d.xlarge'),
  mlC5d2xlarge('ml.c5d.2xlarge'),
  mlC5d4xlarge('ml.c5d.4xlarge'),
  mlC5d9xlarge('ml.c5d.9xlarge'),
  mlC5d18xlarge('ml.c5d.18xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlInf1Xlarge('ml.inf1.xlarge'),
  mlInf1p2xlarge('ml.inf1.2xlarge'),
  mlInf1p6xlarge('ml.inf1.6xlarge'),
  mlInf1p24xlarge('ml.inf1.24xlarge'),
  mlDl1p24xlarge('ml.dl1.24xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlR8gMedium('ml.r8g.medium'),
  mlR8gLarge('ml.r8g.large'),
  mlR8gXlarge('ml.r8g.xlarge'),
  mlR8g2xlarge('ml.r8g.2xlarge'),
  mlR8g4xlarge('ml.r8g.4xlarge'),
  mlR8g8xlarge('ml.r8g.8xlarge'),
  mlR8g12xlarge('ml.r8g.12xlarge'),
  mlR8g16xlarge('ml.r8g.16xlarge'),
  mlR8g24xlarge('ml.r8g.24xlarge'),
  mlR8g48xlarge('ml.r8g.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlC7gLarge('ml.c7g.large'),
  mlC7gXlarge('ml.c7g.xlarge'),
  mlC7g2xlarge('ml.c7g.2xlarge'),
  mlC7g4xlarge('ml.c7g.4xlarge'),
  mlC7g8xlarge('ml.c7g.8xlarge'),
  mlC7g12xlarge('ml.c7g.12xlarge'),
  mlC7g16xlarge('ml.c7g.16xlarge'),
  mlM6gLarge('ml.m6g.large'),
  mlM6gXlarge('ml.m6g.xlarge'),
  mlM6g2xlarge('ml.m6g.2xlarge'),
  mlM6g4xlarge('ml.m6g.4xlarge'),
  mlM6g8xlarge('ml.m6g.8xlarge'),
  mlM6g12xlarge('ml.m6g.12xlarge'),
  mlM6g16xlarge('ml.m6g.16xlarge'),
  mlM6gdLarge('ml.m6gd.large'),
  mlM6gdXlarge('ml.m6gd.xlarge'),
  mlM6gd2xlarge('ml.m6gd.2xlarge'),
  mlM6gd4xlarge('ml.m6gd.4xlarge'),
  mlM6gd8xlarge('ml.m6gd.8xlarge'),
  mlM6gd12xlarge('ml.m6gd.12xlarge'),
  mlM6gd16xlarge('ml.m6gd.16xlarge'),
  mlC6gLarge('ml.c6g.large'),
  mlC6gXlarge('ml.c6g.xlarge'),
  mlC6g2xlarge('ml.c6g.2xlarge'),
  mlC6g4xlarge('ml.c6g.4xlarge'),
  mlC6g8xlarge('ml.c6g.8xlarge'),
  mlC6g12xlarge('ml.c6g.12xlarge'),
  mlC6g16xlarge('ml.c6g.16xlarge'),
  mlC6gdLarge('ml.c6gd.large'),
  mlC6gdXlarge('ml.c6gd.xlarge'),
  mlC6gd2xlarge('ml.c6gd.2xlarge'),
  mlC6gd4xlarge('ml.c6gd.4xlarge'),
  mlC6gd8xlarge('ml.c6gd.8xlarge'),
  mlC6gd12xlarge('ml.c6gd.12xlarge'),
  mlC6gd16xlarge('ml.c6gd.16xlarge'),
  mlC6gnLarge('ml.c6gn.large'),
  mlC6gnXlarge('ml.c6gn.xlarge'),
  mlC6gn2xlarge('ml.c6gn.2xlarge'),
  mlC6gn4xlarge('ml.c6gn.4xlarge'),
  mlC6gn8xlarge('ml.c6gn.8xlarge'),
  mlC6gn12xlarge('ml.c6gn.12xlarge'),
  mlC6gn16xlarge('ml.c6gn.16xlarge'),
  mlR6gLarge('ml.r6g.large'),
  mlR6gXlarge('ml.r6g.xlarge'),
  mlR6g2xlarge('ml.r6g.2xlarge'),
  mlR6g4xlarge('ml.r6g.4xlarge'),
  mlR6g8xlarge('ml.r6g.8xlarge'),
  mlR6g12xlarge('ml.r6g.12xlarge'),
  mlR6g16xlarge('ml.r6g.16xlarge'),
  mlR6gdLarge('ml.r6gd.large'),
  mlR6gdXlarge('ml.r6gd.xlarge'),
  mlR6gd2xlarge('ml.r6gd.2xlarge'),
  mlR6gd4xlarge('ml.r6gd.4xlarge'),
  mlR6gd8xlarge('ml.r6gd.8xlarge'),
  mlR6gd12xlarge('ml.r6gd.12xlarge'),
  mlR6gd16xlarge('ml.r6gd.16xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlTrn2p48xlarge('ml.trn2.48xlarge'),
  mlInf2Xlarge('ml.inf2.xlarge'),
  mlInf2p8xlarge('ml.inf2.8xlarge'),
  mlInf2p24xlarge('ml.inf2.24xlarge'),
  mlInf2p48xlarge('ml.inf2.48xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5e48xlarge('ml.p5e.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlC8gMedium('ml.c8g.medium'),
  mlC8gLarge('ml.c8g.large'),
  mlC8gXlarge('ml.c8g.xlarge'),
  mlC8g2xlarge('ml.c8g.2xlarge'),
  mlC8g4xlarge('ml.c8g.4xlarge'),
  mlC8g8xlarge('ml.c8g.8xlarge'),
  mlC8g12xlarge('ml.c8g.12xlarge'),
  mlC8g16xlarge('ml.c8g.16xlarge'),
  mlC8g24xlarge('ml.c8g.24xlarge'),
  mlC8g48xlarge('ml.c8g.48xlarge'),
  mlR7gdMedium('ml.r7gd.medium'),
  mlR7gdLarge('ml.r7gd.large'),
  mlR7gdXlarge('ml.r7gd.xlarge'),
  mlR7gd2xlarge('ml.r7gd.2xlarge'),
  mlR7gd4xlarge('ml.r7gd.4xlarge'),
  mlR7gd8xlarge('ml.r7gd.8xlarge'),
  mlR7gd12xlarge('ml.r7gd.12xlarge'),
  mlR7gd16xlarge('ml.r7gd.16xlarge'),
  mlM8gMedium('ml.m8g.medium'),
  mlM8gLarge('ml.m8g.large'),
  mlM8gXlarge('ml.m8g.xlarge'),
  mlM8g2xlarge('ml.m8g.2xlarge'),
  mlM8g4xlarge('ml.m8g.4xlarge'),
  mlM8g8xlarge('ml.m8g.8xlarge'),
  mlM8g12xlarge('ml.m8g.12xlarge'),
  mlM8g16xlarge('ml.m8g.16xlarge'),
  mlM8g24xlarge('ml.m8g.24xlarge'),
  mlM8g48xlarge('ml.m8g.48xlarge'),
  mlC6inLarge('ml.c6in.large'),
  mlC6inXlarge('ml.c6in.xlarge'),
  mlC6in2xlarge('ml.c6in.2xlarge'),
  mlC6in4xlarge('ml.c6in.4xlarge'),
  mlC6in8xlarge('ml.c6in.8xlarge'),
  mlC6in12xlarge('ml.c6in.12xlarge'),
  mlC6in16xlarge('ml.c6in.16xlarge'),
  mlC6in24xlarge('ml.c6in.24xlarge'),
  mlC6in32xlarge('ml.c6in.32xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlP6B300p48xlarge('ml.p6-b300.48xlarge'),
  mlP6eGb200p36xlarge('ml.p6e-gb200.36xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge');

  const SagemakerEndpointConfigurationInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `production_variants.capacity_reservation_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerEndpointConfigurationCapacityReservationConfig {
  const SagemakerEndpointConfigurationCapacityReservationConfig({
    this.capacityReservationPreference,
    this.mlReservationArn,
  });

  final TfArg<SagemakerEndpointConfigurationCapacityReservationPreference>?
  capacityReservationPreference;

  final TfArg<String>? mlReservationArn;

  Map<String, Object?> encode() => {
    'capacity_reservation_preference': ?capacityReservationPreference
        ?.toTfJson(),
    'ml_reservation_arn': ?mlReservationArn?.toTfJson(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
enum SagemakerEndpointConfigurationCapacityReservationPreference
    implements TerraformEnum {
  capacityReservationsOnly('capacity-reservations-only');

  const SagemakerEndpointConfigurationCapacityReservationPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `production_variants.core_dump_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationProductionVariantsCoreDumpConfig {
  const SagemakerEndpointConfigurationProductionVariantsCoreDumpConfig({
    required this.destinationS3Uri,
    this.kmsKeyId,
  });

  final TfArg<String> destinationS3Uri;

  final RefTo<AwsKmsKey>? kmsKeyId;

  Map<String, Object?> encode() => {
    'destination_s3_uri': destinationS3Uri.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `production_variants.managed_instance_scaling` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerEndpointConfigurationManagedInstanceScaling {
  const SagemakerEndpointConfigurationManagedInstanceScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
    this.status,
  });

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? minInstanceCount;

  final TfArg<SagemakerEndpointConfigurationStatus>? status;

  Map<String, Object?> encode() => {
    'max_instance_count': ?maxInstanceCount?.toTfJson(),
    'min_instance_count': ?minInstanceCount?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum SagemakerEndpointConfigurationStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SagemakerEndpointConfigurationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `production_variants.routing_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerEndpointConfigurationRoutingConfig {
  const SagemakerEndpointConfigurationRoutingConfig({
    required this.routingStrategy,
  });

  final TfArg<SagemakerEndpointConfigurationRoutingStrategy> routingStrategy;

  Map<String, Object?> encode() => {
    'routing_strategy': routingStrategy.toTfJson(),
  };
}

/// `routing_strategy` — derived from the provider schema description.
enum SagemakerEndpointConfigurationRoutingStrategy implements TerraformEnum {
  leastOutstandingRequests('LEAST_OUTSTANDING_REQUESTS'),
  random('RANDOM'),
  prefixAware('PREFIX_AWARE');

  const SagemakerEndpointConfigurationRoutingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `production_variants.serverless_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerEndpointConfigurationServerlessConfig {
  const SagemakerEndpointConfigurationServerlessConfig({
    required this.maxConcurrency,
    required this.memorySizeInMb,
    this.provisionedConcurrency,
  });

  final TfArg<num> maxConcurrency;

  final TfArg<num> memorySizeInMb;

  final TfArg<num>? provisionedConcurrency;

  Map<String, Object?> encode() => {
    'max_concurrency': maxConcurrency.toTfJson(),
    'memory_size_in_mb': memorySizeInMb.toTfJson(),
    'provisioned_concurrency': ?provisionedConcurrency?.toTfJson(),
  };
}

/// Typed helper for the `shadow_production_variants` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationShadowProductionVariants {
  const SagemakerEndpointConfigurationShadowProductionVariants({
    this.acceleratorType,
    this.containerStartupHealthCheckTimeoutInSeconds,
    this.enableSsmAccess,
    this.inferenceAmiVersion,
    this.initialInstanceCount,
    this.initialVariantWeight,
    this.instanceType,
    this.modelDataDownloadTimeoutInSeconds,
    this.modelName,
    this.variantName,
    this.volumeSizeInGb,
    this.capacityReservationConfig,
    this.coreDumpConfig,
    this.managedInstanceScaling,
    this.routingConfig,
    this.serverlessConfig,
  });

  final TfArg<SagemakerEndpointConfigurationAcceleratorType>? acceleratorType;

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<bool>? enableSsmAccess;

  final TfArg<SagemakerEndpointConfigurationInferenceAmiVersion>?
  inferenceAmiVersion;

  final TfArg<num>? initialInstanceCount;

  final TfArg<num>? initialVariantWeight;

  final TfArg<SagemakerEndpointConfigurationInstanceType>? instanceType;

  final TfArg<num>? modelDataDownloadTimeoutInSeconds;

  final TfArg<String>? modelName;

  final TfArg<String>? variantName;

  final TfArg<num>? volumeSizeInGb;

  final SagemakerEndpointConfigurationCapacityReservationConfig?
  capacityReservationConfig;

  final SagemakerEndpointConfigurationShadowProductionVariantsCoreDumpConfig?
  coreDumpConfig;

  final SagemakerEndpointConfigurationManagedInstanceScaling?
  managedInstanceScaling;

  final List<SagemakerEndpointConfigurationRoutingConfig>? routingConfig;

  final SagemakerEndpointConfigurationServerlessConfig? serverlessConfig;

  Map<String, Object?> encode() => {
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'container_startup_health_check_timeout_in_seconds':
        ?containerStartupHealthCheckTimeoutInSeconds?.toTfJson(),
    'enable_ssm_access': ?enableSsmAccess?.toTfJson(),
    'inference_ami_version': ?inferenceAmiVersion?.toTfJson(),
    'initial_instance_count': ?initialInstanceCount?.toTfJson(),
    'initial_variant_weight': ?initialVariantWeight?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'model_data_download_timeout_in_seconds': ?modelDataDownloadTimeoutInSeconds
        ?.toTfJson(),
    'model_name': ?modelName?.toTfJson(),
    'variant_name': ?variantName?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
    'capacity_reservation_config': ?capacityReservationConfig?.encode(),
    'core_dump_config': ?coreDumpConfig?.encode(),
    'managed_instance_scaling': ?managedInstanceScaling?.encode(),
    if (routingConfig != null)
      'routing_config': [for (final e in routingConfig!) e.encode()],
    'serverless_config': ?serverlessConfig?.encode(),
  };
}

/// Typed helper for the `shadow_production_variants.core_dump_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationShadowProductionVariantsCoreDumpConfig {
  const SagemakerEndpointConfigurationShadowProductionVariantsCoreDumpConfig({
    required this.destinationS3Uri,
    required this.kmsKeyId,
  });

  final TfArg<String> destinationS3Uri;

  final RefTo<AwsKmsKey> kmsKeyId;

  Map<String, Object?> encode() => {
    'destination_s3_uri': destinationS3Uri.toTfJson(),
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_endpoint_configuration`.
final class AwsSagemakerEndpointConfiguration extends Resource {
  static const String tfType = 'aws_sagemaker_endpoint_configuration';

  AwsSagemakerEndpointConfiguration(
    super.localName, {
    RefTo<AwsIamRole>? executionRoleArn,
    RefTo<AwsKmsKey>? kmsKeyArn,
    SagemakerEndpointConfigurationName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    SagemakerEndpointConfigurationAsyncInferenceConfig? asyncInferenceConfig,
    SagemakerEndpointConfigurationDataCaptureConfig? dataCaptureConfig,
    required List<SagemakerEndpointConfigurationProductionVariants>
    productionVariants,
    List<SagemakerEndpointConfigurationShadowProductionVariants>?
    shadowProductionVariants,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'execution_role_arn': ?executionRoleArn?.encodeAs('arn'),
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           ...?name?.argMap,
           'region': ?region,
           'tags': ?tags,
           if (asyncInferenceConfig != null)
             'async_inference_config': TfArg.literal(
               asyncInferenceConfig.encode(),
             ),
           if (dataCaptureConfig != null)
             'data_capture_config': TfArg.literal(dataCaptureConfig.encode()),
           'production_variants': TfArg.literal([
             for (final e in productionVariants) e.encode(),
           ]),
           if (shadowProductionVariants != null)
             'shadow_production_variants': TfArg.literal([
               for (final e in shadowProductionVariants) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerEndpointConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerEndpointConfiguration>`.
  RefTo<AwsSagemakerEndpointConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
