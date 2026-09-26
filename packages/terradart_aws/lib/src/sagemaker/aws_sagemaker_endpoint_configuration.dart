// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_endpoint_configuration`.
const Set<String> _awsSagemakerEndpointConfigurationSensitive = <String>{};

/// Typed helper for the `async_inference_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationAsyncInferenceConfig {
  const SagemakerEndpointConfigurationAsyncInferenceConfig({
    this.clientConfig,
    required this.outputConfig,
  });

  final SagemakerEndpointConfigurationAsyncInferenceConfigClientConfig?
  clientConfig;

  final SagemakerEndpointConfigurationAsyncInferenceConfigOutputConfig
  outputConfig;

  Map<String, Object?> encode() => {
    if (clientConfig != null) 'client_config': clientConfig!.encode(),
    'output_config': outputConfig.encode(),
  };
}

/// Typed helper for the `async_inference_config.client_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationAsyncInferenceConfigClientConfig {
  const SagemakerEndpointConfigurationAsyncInferenceConfigClientConfig({
    this.maxConcurrentInvocationsPerInstance,
  });

  final TfArg<num>? maxConcurrentInvocationsPerInstance;

  Map<String, Object?> encode() => {
    if (maxConcurrentInvocationsPerInstance != null)
      'max_concurrent_invocations_per_instance':
          maxConcurrentInvocationsPerInstance!.toTfJson(),
  };
}

/// Typed helper for the `async_inference_config.output_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationAsyncInferenceConfigOutputConfig {
  const SagemakerEndpointConfigurationAsyncInferenceConfigOutputConfig({
    this.kmsKeyId,
    this.s3FailurePath,
    required this.s3OutputPath,
    this.notificationConfig,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? s3FailurePath;

  final TfArg<String> s3OutputPath;

  final SagemakerEndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig?
  notificationConfig;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (s3FailurePath != null) 's3_failure_path': s3FailurePath!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
    if (notificationConfig != null)
      'notification_config': notificationConfig!.encode(),
  };
}

/// Typed helper for the `async_inference_config.output_config.notification_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig {
  const SagemakerEndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig({
    this.errorTopic,
    this.includeInferenceResponseIn,
    this.successTopic,
  });

  final TfArg<String>? errorTopic;

  final TfArg<List<Object?>>? includeInferenceResponseIn;

  final TfArg<String>? successTopic;

  Map<String, Object?> encode() => {
    if (errorTopic != null) 'error_topic': errorTopic!.toTfJson(),
    if (includeInferenceResponseIn != null)
      'include_inference_response_in': includeInferenceResponseIn!.toTfJson(),
    if (successTopic != null) 'success_topic': successTopic!.toTfJson(),
  };
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

  final TfArg<String>? kmsKeyId;

  final SagemakerEndpointConfigurationDataCaptureConfigCaptureContentTypeHeader?
  captureContentTypeHeader;

  final List<SagemakerEndpointConfigurationDataCaptureConfigCaptureOptions>
  captureOptions;

  Map<String, Object?> encode() => {
    'destination_s3_uri': destinationS3Uri.toTfJson(),
    if (enableCapture != null) 'enable_capture': enableCapture!.toTfJson(),
    'initial_sampling_percentage': initialSamplingPercentage.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (captureContentTypeHeader != null)
      'capture_content_type_header': captureContentTypeHeader!.encode(),
    'capture_options': [for (final e in captureOptions) e.encode()],
  };
}

/// Typed helper for the `data_capture_config.capture_content_type_header` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationDataCaptureConfigCaptureContentTypeHeader {
  const SagemakerEndpointConfigurationDataCaptureConfigCaptureContentTypeHeader({
    this.csvContentTypes,
    this.jsonContentTypes,
  });

  final TfArg<List<Object?>>? csvContentTypes;

  final TfArg<List<Object?>>? jsonContentTypes;

  Map<String, Object?> encode() => {
    if (csvContentTypes != null)
      'csv_content_types': csvContentTypes!.toTfJson(),
    if (jsonContentTypes != null)
      'json_content_types': jsonContentTypes!.toTfJson(),
  };
}

/// Typed helper for the `data_capture_config.capture_options` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationDataCaptureConfigCaptureOptions {
  const SagemakerEndpointConfigurationDataCaptureConfigCaptureOptions({
    required this.captureMode,
  });

  final TfArg<String> captureMode;

  Map<String, Object?> encode() => {'capture_mode': captureMode.toTfJson()};
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

  final TfArg<String>? acceleratorType;

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<bool>? enableSsmAccess;

  final TfArg<String>? inferenceAmiVersion;

  final TfArg<num>? initialInstanceCount;

  final TfArg<num>? initialVariantWeight;

  final TfArg<String>? instanceType;

  final TfArg<num>? modelDataDownloadTimeoutInSeconds;

  final TfArg<String>? modelName;

  final TfArg<String>? variantName;

  final TfArg<num>? volumeSizeInGb;

  final SagemakerEndpointConfigurationProductionVariantsCapacityReservationConfig?
  capacityReservationConfig;

  final SagemakerEndpointConfigurationProductionVariantsCoreDumpConfig?
  coreDumpConfig;

  final SagemakerEndpointConfigurationProductionVariantsManagedInstanceScaling?
  managedInstanceScaling;

  final List<SagemakerEndpointConfigurationProductionVariantsRoutingConfig>?
  routingConfig;

  final SagemakerEndpointConfigurationProductionVariantsServerlessConfig?
  serverlessConfig;

  Map<String, Object?> encode() => {
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
    if (containerStartupHealthCheckTimeoutInSeconds != null)
      'container_startup_health_check_timeout_in_seconds':
          containerStartupHealthCheckTimeoutInSeconds!.toTfJson(),
    if (enableSsmAccess != null)
      'enable_ssm_access': enableSsmAccess!.toTfJson(),
    if (inferenceAmiVersion != null)
      'inference_ami_version': inferenceAmiVersion!.toTfJson(),
    if (initialInstanceCount != null)
      'initial_instance_count': initialInstanceCount!.toTfJson(),
    if (initialVariantWeight != null)
      'initial_variant_weight': initialVariantWeight!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (modelDataDownloadTimeoutInSeconds != null)
      'model_data_download_timeout_in_seconds':
          modelDataDownloadTimeoutInSeconds!.toTfJson(),
    if (modelName != null) 'model_name': modelName!.toTfJson(),
    if (variantName != null) 'variant_name': variantName!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
    if (capacityReservationConfig != null)
      'capacity_reservation_config': capacityReservationConfig!.encode(),
    if (coreDumpConfig != null) 'core_dump_config': coreDumpConfig!.encode(),
    if (managedInstanceScaling != null)
      'managed_instance_scaling': managedInstanceScaling!.encode(),
    if (routingConfig != null)
      'routing_config': [for (final e in routingConfig!) e.encode()],
    if (serverlessConfig != null)
      'serverless_config': serverlessConfig!.encode(),
  };
}

/// Typed helper for the `production_variants.capacity_reservation_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationProductionVariantsCapacityReservationConfig {
  const SagemakerEndpointConfigurationProductionVariantsCapacityReservationConfig({
    this.capacityReservationPreference,
    this.mlReservationArn,
  });

  final TfArg<String>? capacityReservationPreference;

  final TfArg<String>? mlReservationArn;

  Map<String, Object?> encode() => {
    if (capacityReservationPreference != null)
      'capacity_reservation_preference': capacityReservationPreference!
          .toTfJson(),
    if (mlReservationArn != null)
      'ml_reservation_arn': mlReservationArn!.toTfJson(),
  };
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

  final TfArg<String>? kmsKeyId;

  Map<String, Object?> encode() => {
    'destination_s3_uri': destinationS3Uri.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
  };
}

/// Typed helper for the `production_variants.managed_instance_scaling` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationProductionVariantsManagedInstanceScaling {
  const SagemakerEndpointConfigurationProductionVariantsManagedInstanceScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
    this.status,
  });

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? minInstanceCount;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (maxInstanceCount != null)
      'max_instance_count': maxInstanceCount!.toTfJson(),
    if (minInstanceCount != null)
      'min_instance_count': minInstanceCount!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `production_variants.routing_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationProductionVariantsRoutingConfig {
  const SagemakerEndpointConfigurationProductionVariantsRoutingConfig({
    required this.routingStrategy,
  });

  final TfArg<String> routingStrategy;

  Map<String, Object?> encode() => {
    'routing_strategy': routingStrategy.toTfJson(),
  };
}

/// Typed helper for the `production_variants.serverless_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationProductionVariantsServerlessConfig {
  const SagemakerEndpointConfigurationProductionVariantsServerlessConfig({
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
    if (provisionedConcurrency != null)
      'provisioned_concurrency': provisionedConcurrency!.toTfJson(),
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

  final TfArg<String>? acceleratorType;

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<bool>? enableSsmAccess;

  final TfArg<String>? inferenceAmiVersion;

  final TfArg<num>? initialInstanceCount;

  final TfArg<num>? initialVariantWeight;

  final TfArg<String>? instanceType;

  final TfArg<num>? modelDataDownloadTimeoutInSeconds;

  final TfArg<String>? modelName;

  final TfArg<String>? variantName;

  final TfArg<num>? volumeSizeInGb;

  final SagemakerEndpointConfigurationShadowProductionVariantsCapacityReservationConfig?
  capacityReservationConfig;

  final SagemakerEndpointConfigurationShadowProductionVariantsCoreDumpConfig?
  coreDumpConfig;

  final SagemakerEndpointConfigurationShadowProductionVariantsManagedInstanceScaling?
  managedInstanceScaling;

  final List<
    SagemakerEndpointConfigurationShadowProductionVariantsRoutingConfig
  >?
  routingConfig;

  final SagemakerEndpointConfigurationShadowProductionVariantsServerlessConfig?
  serverlessConfig;

  Map<String, Object?> encode() => {
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
    if (containerStartupHealthCheckTimeoutInSeconds != null)
      'container_startup_health_check_timeout_in_seconds':
          containerStartupHealthCheckTimeoutInSeconds!.toTfJson(),
    if (enableSsmAccess != null)
      'enable_ssm_access': enableSsmAccess!.toTfJson(),
    if (inferenceAmiVersion != null)
      'inference_ami_version': inferenceAmiVersion!.toTfJson(),
    if (initialInstanceCount != null)
      'initial_instance_count': initialInstanceCount!.toTfJson(),
    if (initialVariantWeight != null)
      'initial_variant_weight': initialVariantWeight!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (modelDataDownloadTimeoutInSeconds != null)
      'model_data_download_timeout_in_seconds':
          modelDataDownloadTimeoutInSeconds!.toTfJson(),
    if (modelName != null) 'model_name': modelName!.toTfJson(),
    if (variantName != null) 'variant_name': variantName!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
    if (capacityReservationConfig != null)
      'capacity_reservation_config': capacityReservationConfig!.encode(),
    if (coreDumpConfig != null) 'core_dump_config': coreDumpConfig!.encode(),
    if (managedInstanceScaling != null)
      'managed_instance_scaling': managedInstanceScaling!.encode(),
    if (routingConfig != null)
      'routing_config': [for (final e in routingConfig!) e.encode()],
    if (serverlessConfig != null)
      'serverless_config': serverlessConfig!.encode(),
  };
}

/// Typed helper for the `shadow_production_variants.capacity_reservation_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationShadowProductionVariantsCapacityReservationConfig {
  const SagemakerEndpointConfigurationShadowProductionVariantsCapacityReservationConfig({
    this.capacityReservationPreference,
    this.mlReservationArn,
  });

  final TfArg<String>? capacityReservationPreference;

  final TfArg<String>? mlReservationArn;

  Map<String, Object?> encode() => {
    if (capacityReservationPreference != null)
      'capacity_reservation_preference': capacityReservationPreference!
          .toTfJson(),
    if (mlReservationArn != null)
      'ml_reservation_arn': mlReservationArn!.toTfJson(),
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

  final TfArg<String> kmsKeyId;

  Map<String, Object?> encode() => {
    'destination_s3_uri': destinationS3Uri.toTfJson(),
    'kms_key_id': kmsKeyId.toTfJson(),
  };
}

/// Typed helper for the `shadow_production_variants.managed_instance_scaling` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationShadowProductionVariantsManagedInstanceScaling {
  const SagemakerEndpointConfigurationShadowProductionVariantsManagedInstanceScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
    this.status,
  });

  final TfArg<num>? maxInstanceCount;

  final TfArg<num>? minInstanceCount;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (maxInstanceCount != null)
      'max_instance_count': maxInstanceCount!.toTfJson(),
    if (minInstanceCount != null)
      'min_instance_count': minInstanceCount!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `shadow_production_variants.routing_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationShadowProductionVariantsRoutingConfig {
  const SagemakerEndpointConfigurationShadowProductionVariantsRoutingConfig({
    required this.routingStrategy,
  });

  final TfArg<String> routingStrategy;

  Map<String, Object?> encode() => {
    'routing_strategy': routingStrategy.toTfJson(),
  };
}

/// Typed helper for the `shadow_production_variants.serverless_config` block of
/// `aws_sagemaker_endpoint_configuration` (derived from provider schema).
@immutable
final class SagemakerEndpointConfigurationShadowProductionVariantsServerlessConfig {
  const SagemakerEndpointConfigurationShadowProductionVariantsServerlessConfig({
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
    if (provisionedConcurrency != null)
      'provisioned_concurrency': provisionedConcurrency!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_endpoint_configuration`.
final class AwsSagemakerEndpointConfiguration extends Resource {
  static const String tfType = 'aws_sagemaker_endpoint_configuration';

  AwsSagemakerEndpointConfiguration({
    required super.localName,
    TfArg<String>? executionRoleArn,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
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
           if (executionRoleArn != null) 'execution_role_arn': executionRoleArn,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
