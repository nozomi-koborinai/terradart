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

  final List<SagemakerEndpointConfigurationIncludeInferenceResponseIn>?
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
extension type const SagemakerEndpointConfigurationIncludeInferenceResponseIn._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationIncludeInferenceResponseIn.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationIncludeInferenceResponseIn.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationIncludeInferenceResponseIn.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const successNotificationTopic =
      SagemakerEndpointConfigurationIncludeInferenceResponseIn._(
        TfArgLiteral('SUCCESS_NOTIFICATION_TOPIC'),
      );
  static const errorNotificationTopic =
      SagemakerEndpointConfigurationIncludeInferenceResponseIn._(
        TfArgLiteral('ERROR_NOTIFICATION_TOPIC'),
      );

  static const List<SagemakerEndpointConfigurationIncludeInferenceResponseIn>
  values = [successNotificationTopic, errorNotificationTopic];
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

  final SagemakerEndpointConfigurationCaptureMode captureMode;

  Map<String, Object?> encode() => {'capture_mode': captureMode.toTfJson()};
}

/// `capture_mode` — derived from the provider schema description.
extension type const SagemakerEndpointConfigurationCaptureMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationCaptureMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationCaptureMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationCaptureMode.arg(TfArg<String> arg)
    : this._(arg);

  static const input = SagemakerEndpointConfigurationCaptureMode._(
    TfArgLiteral('Input'),
  );
  static const output = SagemakerEndpointConfigurationCaptureMode._(
    TfArgLiteral('Output'),
  );
  static const inputandoutput = SagemakerEndpointConfigurationCaptureMode._(
    TfArgLiteral('InputAndOutput'),
  );

  static const List<SagemakerEndpointConfigurationCaptureMode> values = [
    input,
    output,
    inputandoutput,
  ];
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

  final SagemakerEndpointConfigurationAcceleratorType? acceleratorType;

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<bool>? enableSsmAccess;

  final SagemakerEndpointConfigurationInferenceAmiVersion? inferenceAmiVersion;

  final TfArg<num>? initialInstanceCount;

  final TfArg<num>? initialVariantWeight;

  final SagemakerEndpointConfigurationInstanceType? instanceType;

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
extension type const SagemakerEndpointConfigurationAcceleratorType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationAcceleratorType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationAcceleratorType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlEia1Medium = SagemakerEndpointConfigurationAcceleratorType._(
    TfArgLiteral('ml.eia1.medium'),
  );
  static const mlEia1Large = SagemakerEndpointConfigurationAcceleratorType._(
    TfArgLiteral('ml.eia1.large'),
  );
  static const mlEia1Xlarge = SagemakerEndpointConfigurationAcceleratorType._(
    TfArgLiteral('ml.eia1.xlarge'),
  );
  static const mlEia2Medium = SagemakerEndpointConfigurationAcceleratorType._(
    TfArgLiteral('ml.eia2.medium'),
  );
  static const mlEia2Large = SagemakerEndpointConfigurationAcceleratorType._(
    TfArgLiteral('ml.eia2.large'),
  );
  static const mlEia2Xlarge = SagemakerEndpointConfigurationAcceleratorType._(
    TfArgLiteral('ml.eia2.xlarge'),
  );

  static const List<SagemakerEndpointConfigurationAcceleratorType> values = [
    mlEia1Medium,
    mlEia1Large,
    mlEia1Xlarge,
    mlEia2Medium,
    mlEia2Large,
    mlEia2Xlarge,
  ];
}

/// `inference_ami_version` — derived from the provider schema description.
extension type const SagemakerEndpointConfigurationInferenceAmiVersion._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationInferenceAmiVersion.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationInferenceAmiVersion.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationInferenceAmiVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const al2AmiSagemakerInferenceGpu2 =
      SagemakerEndpointConfigurationInferenceAmiVersion._(
        TfArgLiteral('al2-ami-sagemaker-inference-gpu-2'),
      );
  static const al2AmiSagemakerInferenceGpu21 =
      SagemakerEndpointConfigurationInferenceAmiVersion._(
        TfArgLiteral('al2-ami-sagemaker-inference-gpu-2-1'),
      );
  static const al2AmiSagemakerInferenceGpu31 =
      SagemakerEndpointConfigurationInferenceAmiVersion._(
        TfArgLiteral('al2-ami-sagemaker-inference-gpu-3-1'),
      );
  static const al2AmiSagemakerInferenceNeuron2 =
      SagemakerEndpointConfigurationInferenceAmiVersion._(
        TfArgLiteral('al2-ami-sagemaker-inference-neuron-2'),
      );
  static const al2023AmiSagemakerInferenceGpu41 =
      SagemakerEndpointConfigurationInferenceAmiVersion._(
        TfArgLiteral('al2023-ami-sagemaker-inference-gpu-4-1'),
      );

  static const List<SagemakerEndpointConfigurationInferenceAmiVersion> values =
      [
        al2AmiSagemakerInferenceGpu2,
        al2AmiSagemakerInferenceGpu21,
        al2AmiSagemakerInferenceGpu31,
        al2AmiSagemakerInferenceNeuron2,
        al2023AmiSagemakerInferenceGpu41,
      ];
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerEndpointConfigurationInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlT2Medium = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.t2.medium'),
  );
  static const mlT2Large = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.t2.large'),
  );
  static const mlT2Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.t2.xlarge'),
  );
  static const mlT2p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.t2.2xlarge'),
  );
  static const mlM4Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlM5Large = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC4Large = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c4.large'),
  );
  static const mlC4Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlP2Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlC5Large = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5dLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5d.large'),
  );
  static const mlC5dXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5d.xlarge'),
  );
  static const mlC5d2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5d.2xlarge'),
  );
  static const mlC5d4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5d.4xlarge'),
  );
  static const mlC5d9xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5d.9xlarge'),
  );
  static const mlC5d18xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c5d.18xlarge'),
  );
  static const mlG4dnXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlR5dLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5d.2xlarge'),
  );
  static const mlR5d4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5d.4xlarge'),
  );
  static const mlR5d12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5d.12xlarge'),
  );
  static const mlR5d24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r5d.24xlarge'),
  );
  static const mlInf1Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf1.xlarge'),
  );
  static const mlInf1p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf1.2xlarge'),
  );
  static const mlInf1p6xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf1.6xlarge'),
  );
  static const mlInf1p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf1.24xlarge'),
  );
  static const mlDl1p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.dl1.24xlarge'),
  );
  static const mlC6iLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlM6iLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlR6iLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlG5Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlR8gMedium = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.medium'),
  );
  static const mlR8gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.large'),
  );
  static const mlR8gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.xlarge'),
  );
  static const mlR8g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.2xlarge'),
  );
  static const mlR8g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.4xlarge'),
  );
  static const mlR8g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.8xlarge'),
  );
  static const mlR8g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.12xlarge'),
  );
  static const mlR8g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.16xlarge'),
  );
  static const mlR8g24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.24xlarge'),
  );
  static const mlR8g48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r8g.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlG7p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlP4d24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlC7gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.large'),
  );
  static const mlC7gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.xlarge'),
  );
  static const mlC7g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.2xlarge'),
  );
  static const mlC7g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.4xlarge'),
  );
  static const mlC7g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.8xlarge'),
  );
  static const mlC7g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.12xlarge'),
  );
  static const mlC7g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7g.16xlarge'),
  );
  static const mlM6gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.large'),
  );
  static const mlM6gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.xlarge'),
  );
  static const mlM6g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.2xlarge'),
  );
  static const mlM6g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.4xlarge'),
  );
  static const mlM6g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.8xlarge'),
  );
  static const mlM6g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.12xlarge'),
  );
  static const mlM6g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6g.16xlarge'),
  );
  static const mlM6gdLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.large'),
  );
  static const mlM6gdXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.xlarge'),
  );
  static const mlM6gd2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.2xlarge'),
  );
  static const mlM6gd4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.4xlarge'),
  );
  static const mlM6gd8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.8xlarge'),
  );
  static const mlM6gd12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.12xlarge'),
  );
  static const mlM6gd16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m6gd.16xlarge'),
  );
  static const mlC6gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.large'),
  );
  static const mlC6gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.xlarge'),
  );
  static const mlC6g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.2xlarge'),
  );
  static const mlC6g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.4xlarge'),
  );
  static const mlC6g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.8xlarge'),
  );
  static const mlC6g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.12xlarge'),
  );
  static const mlC6g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6g.16xlarge'),
  );
  static const mlC6gdLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.large'),
  );
  static const mlC6gdXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.xlarge'),
  );
  static const mlC6gd2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.2xlarge'),
  );
  static const mlC6gd4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.4xlarge'),
  );
  static const mlC6gd8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.8xlarge'),
  );
  static const mlC6gd12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.12xlarge'),
  );
  static const mlC6gd16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gd.16xlarge'),
  );
  static const mlC6gnLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.large'),
  );
  static const mlC6gnXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.xlarge'),
  );
  static const mlC6gn2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.2xlarge'),
  );
  static const mlC6gn4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.4xlarge'),
  );
  static const mlC6gn8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.8xlarge'),
  );
  static const mlC6gn12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.12xlarge'),
  );
  static const mlC6gn16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6gn.16xlarge'),
  );
  static const mlR6gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.large'),
  );
  static const mlR6gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.xlarge'),
  );
  static const mlR6g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.2xlarge'),
  );
  static const mlR6g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.4xlarge'),
  );
  static const mlR6g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.8xlarge'),
  );
  static const mlR6g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.12xlarge'),
  );
  static const mlR6g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6g.16xlarge'),
  );
  static const mlR6gdLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.large'),
  );
  static const mlR6gdXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.xlarge'),
  );
  static const mlR6gd2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.2xlarge'),
  );
  static const mlR6gd4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.4xlarge'),
  );
  static const mlR6gd8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.8xlarge'),
  );
  static const mlR6gd12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.12xlarge'),
  );
  static const mlR6gd16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r6gd.16xlarge'),
  );
  static const mlP4de24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlTrn2p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.trn2.48xlarge'),
  );
  static const mlInf2Xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf2.xlarge'),
  );
  static const mlInf2p8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf2.8xlarge'),
  );
  static const mlInf2p24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf2.24xlarge'),
  );
  static const mlInf2p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.inf2.48xlarge'),
  );
  static const mlP5p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5e48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p5e.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlM7iLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC7iLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR7iLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlC8gMedium = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.medium'),
  );
  static const mlC8gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.large'),
  );
  static const mlC8gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.xlarge'),
  );
  static const mlC8g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.2xlarge'),
  );
  static const mlC8g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.4xlarge'),
  );
  static const mlC8g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.8xlarge'),
  );
  static const mlC8g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.12xlarge'),
  );
  static const mlC8g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.16xlarge'),
  );
  static const mlC8g24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.24xlarge'),
  );
  static const mlC8g48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c8g.48xlarge'),
  );
  static const mlR7gdMedium = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.medium'),
  );
  static const mlR7gdLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.large'),
  );
  static const mlR7gdXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.xlarge'),
  );
  static const mlR7gd2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.2xlarge'),
  );
  static const mlR7gd4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.4xlarge'),
  );
  static const mlR7gd8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.8xlarge'),
  );
  static const mlR7gd12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.12xlarge'),
  );
  static const mlR7gd16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.r7gd.16xlarge'),
  );
  static const mlM8gMedium = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.medium'),
  );
  static const mlM8gLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.large'),
  );
  static const mlM8gXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.xlarge'),
  );
  static const mlM8g2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.2xlarge'),
  );
  static const mlM8g4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.4xlarge'),
  );
  static const mlM8g8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.8xlarge'),
  );
  static const mlM8g12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.12xlarge'),
  );
  static const mlM8g16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.16xlarge'),
  );
  static const mlM8g24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.24xlarge'),
  );
  static const mlM8g48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.m8g.48xlarge'),
  );
  static const mlC6inLarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.large'),
  );
  static const mlC6inXlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.xlarge'),
  );
  static const mlC6in2xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.2xlarge'),
  );
  static const mlC6in4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.4xlarge'),
  );
  static const mlC6in8xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.8xlarge'),
  );
  static const mlC6in12xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.12xlarge'),
  );
  static const mlC6in16xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.16xlarge'),
  );
  static const mlC6in24xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.24xlarge'),
  );
  static const mlC6in32xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.c6in.32xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlP6B300p48xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p6-b300.48xlarge'),
  );
  static const mlP6eGb200p36xlarge =
      SagemakerEndpointConfigurationInstanceType._(
        TfArgLiteral('ml.p6e-gb200.36xlarge'),
      );
  static const mlP5p4xlarge = SagemakerEndpointConfigurationInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );

  static const List<SagemakerEndpointConfigurationInstanceType> values = [
    mlT2Medium,
    mlT2Large,
    mlT2Xlarge,
    mlT2p2xlarge,
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d12xlarge,
    mlM5d24xlarge,
    mlC4Large,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlC5Large,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5dLarge,
    mlC5dXlarge,
    mlC5d2xlarge,
    mlC5d4xlarge,
    mlC5d9xlarge,
    mlC5d18xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p12xlarge,
    mlR5p24xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d12xlarge,
    mlR5d24xlarge,
    mlInf1Xlarge,
    mlInf1p2xlarge,
    mlInf1p6xlarge,
    mlInf1p24xlarge,
    mlDl1p24xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p12xlarge,
    mlG5p16xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlR8gMedium,
    mlR8gLarge,
    mlR8gXlarge,
    mlR8g2xlarge,
    mlR8g4xlarge,
    mlR8g8xlarge,
    mlR8g12xlarge,
    mlR8g16xlarge,
    mlR8g24xlarge,
    mlR8g48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
    mlP4d24xlarge,
    mlC7gLarge,
    mlC7gXlarge,
    mlC7g2xlarge,
    mlC7g4xlarge,
    mlC7g8xlarge,
    mlC7g12xlarge,
    mlC7g16xlarge,
    mlM6gLarge,
    mlM6gXlarge,
    mlM6g2xlarge,
    mlM6g4xlarge,
    mlM6g8xlarge,
    mlM6g12xlarge,
    mlM6g16xlarge,
    mlM6gdLarge,
    mlM6gdXlarge,
    mlM6gd2xlarge,
    mlM6gd4xlarge,
    mlM6gd8xlarge,
    mlM6gd12xlarge,
    mlM6gd16xlarge,
    mlC6gLarge,
    mlC6gXlarge,
    mlC6g2xlarge,
    mlC6g4xlarge,
    mlC6g8xlarge,
    mlC6g12xlarge,
    mlC6g16xlarge,
    mlC6gdLarge,
    mlC6gdXlarge,
    mlC6gd2xlarge,
    mlC6gd4xlarge,
    mlC6gd8xlarge,
    mlC6gd12xlarge,
    mlC6gd16xlarge,
    mlC6gnLarge,
    mlC6gnXlarge,
    mlC6gn2xlarge,
    mlC6gn4xlarge,
    mlC6gn8xlarge,
    mlC6gn12xlarge,
    mlC6gn16xlarge,
    mlR6gLarge,
    mlR6gXlarge,
    mlR6g2xlarge,
    mlR6g4xlarge,
    mlR6g8xlarge,
    mlR6g12xlarge,
    mlR6g16xlarge,
    mlR6gdLarge,
    mlR6gdXlarge,
    mlR6gd2xlarge,
    mlR6gd4xlarge,
    mlR6gd8xlarge,
    mlR6gd12xlarge,
    mlR6gd16xlarge,
    mlP4de24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
    mlInf2Xlarge,
    mlInf2p8xlarge,
    mlInf2p24xlarge,
    mlInf2p48xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlC8gMedium,
    mlC8gLarge,
    mlC8gXlarge,
    mlC8g2xlarge,
    mlC8g4xlarge,
    mlC8g8xlarge,
    mlC8g12xlarge,
    mlC8g16xlarge,
    mlC8g24xlarge,
    mlC8g48xlarge,
    mlR7gdMedium,
    mlR7gdLarge,
    mlR7gdXlarge,
    mlR7gd2xlarge,
    mlR7gd4xlarge,
    mlR7gd8xlarge,
    mlR7gd12xlarge,
    mlR7gd16xlarge,
    mlM8gMedium,
    mlM8gLarge,
    mlM8gXlarge,
    mlM8g2xlarge,
    mlM8g4xlarge,
    mlM8g8xlarge,
    mlM8g12xlarge,
    mlM8g16xlarge,
    mlM8g24xlarge,
    mlM8g48xlarge,
    mlC6inLarge,
    mlC6inXlarge,
    mlC6in2xlarge,
    mlC6in4xlarge,
    mlC6in8xlarge,
    mlC6in12xlarge,
    mlC6in16xlarge,
    mlC6in24xlarge,
    mlC6in32xlarge,
    mlP6B200p48xlarge,
    mlP6B300p48xlarge,
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
  ];
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

  final SagemakerEndpointConfigurationCapacityReservationPreference?
  capacityReservationPreference;

  final TfArg<String>? mlReservationArn;

  Map<String, Object?> encode() => {
    'capacity_reservation_preference': ?capacityReservationPreference
        ?.toTfJson(),
    'ml_reservation_arn': ?mlReservationArn?.toTfJson(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
extension type const SagemakerEndpointConfigurationCapacityReservationPreference._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationCapacityReservationPreference.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationCapacityReservationPreference.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationCapacityReservationPreference.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const capacityReservationsOnly =
      SagemakerEndpointConfigurationCapacityReservationPreference._(
        TfArgLiteral('capacity-reservations-only'),
      );

  static const List<SagemakerEndpointConfigurationCapacityReservationPreference>
  values = [capacityReservationsOnly];
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

  final SagemakerEndpointConfigurationStatus? status;

  Map<String, Object?> encode() => {
    'max_instance_count': ?maxInstanceCount?.toTfJson(),
    'min_instance_count': ?minInstanceCount?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
extension type const SagemakerEndpointConfigurationStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerEndpointConfigurationStatus.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerEndpointConfigurationStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerEndpointConfigurationStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerEndpointConfigurationStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `production_variants.routing_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerEndpointConfigurationRoutingConfig {
  const SagemakerEndpointConfigurationRoutingConfig({
    required this.routingStrategy,
  });

  final SagemakerEndpointConfigurationRoutingStrategy routingStrategy;

  Map<String, Object?> encode() => {
    'routing_strategy': routingStrategy.toTfJson(),
  };
}

/// `routing_strategy` — derived from the provider schema description.
extension type const SagemakerEndpointConfigurationRoutingStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerEndpointConfigurationRoutingStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerEndpointConfigurationRoutingStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerEndpointConfigurationRoutingStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const leastOutstandingRequests =
      SagemakerEndpointConfigurationRoutingStrategy._(
        TfArgLiteral('LEAST_OUTSTANDING_REQUESTS'),
      );
  static const random = SagemakerEndpointConfigurationRoutingStrategy._(
    TfArgLiteral('RANDOM'),
  );
  static const prefixAware = SagemakerEndpointConfigurationRoutingStrategy._(
    TfArgLiteral('PREFIX_AWARE'),
  );

  static const List<SagemakerEndpointConfigurationRoutingStrategy> values = [
    leastOutstandingRequests,
    random,
    prefixAware,
  ];
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

  final SagemakerEndpointConfigurationAcceleratorType? acceleratorType;

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<bool>? enableSsmAccess;

  final SagemakerEndpointConfigurationInferenceAmiVersion? inferenceAmiVersion;

  final TfArg<num>? initialInstanceCount;

  final TfArg<num>? initialVariantWeight;

  final SagemakerEndpointConfigurationInstanceType? instanceType;

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
