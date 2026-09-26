// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_monitoring_schedule`.
const Set<String> _awsSagemakerMonitoringScheduleSensitive = <String>{};

/// Typed helper for the `monitoring_schedule_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfig {
  const SagemakerMonitoringScheduleMonitoringScheduleConfig({
    this.monitoringJobDefinitionName,
    required this.monitoringType,
    this.monitoringJobDefinition,
    this.scheduleConfig,
  });

  final TfArg<String>? monitoringJobDefinitionName;

  final TfArg<String> monitoringType;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition?
  monitoringJobDefinition;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig?
  scheduleConfig;

  Map<String, Object?> encode() => {
    if (monitoringJobDefinitionName != null)
      'monitoring_job_definition_name': monitoringJobDefinitionName!.toTfJson(),
    'monitoring_type': monitoringType.toTfJson(),
    if (monitoringJobDefinition != null)
      'monitoring_job_definition': monitoringJobDefinition!.encode(),
    if (scheduleConfig != null) 'schedule_config': scheduleConfig!.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition({
    this.environment,
    required this.roleArn,
    this.baseline,
    required this.monitoringAppSpecification,
    required this.monitoringInputs,
    required this.monitoringOutputConfig,
    required this.monitoringResources,
    this.networkConfig,
    this.stoppingCondition,
  });

  final TfArg<Map<String, String>>? environment;

  final TfArg<String> roleArn;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline?
  baseline;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification
  monitoringAppSpecification;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs
  monitoringInputs;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig
  monitoringOutputConfig;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources
  monitoringResources;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig?
  networkConfig;

  final List<
    SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition
  >?
  stoppingCondition;

  Map<String, Object?> encode() => {
    if (environment != null) 'environment': environment!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (baseline != null) 'baseline': baseline!.encode(),
    'monitoring_app_specification': monitoringAppSpecification.encode(),
    'monitoring_inputs': monitoringInputs.encode(),
    'monitoring_output_config': monitoringOutputConfig.encode(),
    'monitoring_resources': monitoringResources.encode(),
    if (networkConfig != null) 'network_config': networkConfig!.encode(),
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.baseline` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline({
    this.baseliningJobName,
    this.constraintsResource,
    this.statisticsResource,
  });

  final TfArg<String>? baseliningJobName;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource?
  constraintsResource;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource?
  statisticsResource;

  Map<String, Object?> encode() => {
    if (baseliningJobName != null)
      'baselining_job_name': baseliningJobName!.toTfJson(),
    if (constraintsResource != null)
      'constraints_resource': constraintsResource!.encode(),
    if (statisticsResource != null)
      'statistics_resource': statisticsResource!.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.baseline.constraints_resource` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource({
    this.s3Uri,
  });

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {
    if (s3Uri != null) 's3_uri': s3Uri!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.baseline.statistics_resource` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource({
    this.s3Uri,
  });

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {
    if (s3Uri != null) 's3_uri': s3Uri!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_app_specification` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification({
    this.containerArguments,
    this.containerEntrypoint,
    required this.imageUri,
    this.postAnalyticsProcessorSourceUri,
    this.recordPreprocessorSourceUri,
  });

  final TfArg<List<Object?>>? containerArguments;

  final TfArg<List<Object?>>? containerEntrypoint;

  final TfArg<String> imageUri;

  final TfArg<String>? postAnalyticsProcessorSourceUri;

  final TfArg<String>? recordPreprocessorSourceUri;

  Map<String, Object?> encode() => {
    if (containerArguments != null)
      'container_arguments': containerArguments!.toTfJson(),
    if (containerEntrypoint != null)
      'container_entrypoint': containerEntrypoint!.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    if (postAnalyticsProcessorSourceUri != null)
      'post_analytics_processor_source_uri': postAnalyticsProcessorSourceUri!
          .toTfJson(),
    if (recordPreprocessorSourceUri != null)
      'record_preprocessor_source_uri': recordPreprocessorSourceUri!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs({
    this.batchTransformInput,
    this.endpointInput,
  });

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput?
  batchTransformInput;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput?
  endpointInput;

  Map<String, Object?> encode() => {
    if (batchTransformInput != null)
      'batch_transform_input': batchTransformInput!.encode(),
    if (endpointInput != null) 'endpoint_input': endpointInput!.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput({
    required this.dataCapturedDestinationS3Uri,
    this.endTimeOffset,
    this.excludeFeaturesAttribute,
    this.featuresAttribute,
    this.inferenceAttribute,
    required this.localPath,
    this.probabilityAttribute,
    this.probabilityThresholdAttribute,
    this.s3DataDistributionType,
    this.s3InputMode,
    this.startTimeOffset,
    required this.datasetFormat,
  });

  final TfArg<String> dataCapturedDestinationS3Uri;

  final TfArg<String>? endTimeOffset;

  final TfArg<String>? excludeFeaturesAttribute;

  final TfArg<String>? featuresAttribute;

  final TfArg<String>? inferenceAttribute;

  final TfArg<String> localPath;

  final TfArg<String>? probabilityAttribute;

  final TfArg<num>? probabilityThresholdAttribute;

  final TfArg<String>? s3DataDistributionType;

  final TfArg<String>? s3InputMode;

  final TfArg<String>? startTimeOffset;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat
  datasetFormat;

  Map<String, Object?> encode() => {
    'data_captured_destination_s3_uri': dataCapturedDestinationS3Uri.toTfJson(),
    if (endTimeOffset != null) 'end_time_offset': endTimeOffset!.toTfJson(),
    if (excludeFeaturesAttribute != null)
      'exclude_features_attribute': excludeFeaturesAttribute!.toTfJson(),
    if (featuresAttribute != null)
      'features_attribute': featuresAttribute!.toTfJson(),
    if (inferenceAttribute != null)
      'inference_attribute': inferenceAttribute!.toTfJson(),
    'local_path': localPath.toTfJson(),
    if (probabilityAttribute != null)
      'probability_attribute': probabilityAttribute!.toTfJson(),
    if (probabilityThresholdAttribute != null)
      'probability_threshold_attribute': probabilityThresholdAttribute!
          .toTfJson(),
    if (s3DataDistributionType != null)
      's3_data_distribution_type': s3DataDistributionType!.toTfJson(),
    if (s3InputMode != null) 's3_input_mode': s3InputMode!.toTfJson(),
    if (startTimeOffset != null)
      'start_time_offset': startTimeOffset!.toTfJson(),
    'dataset_format': datasetFormat.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input.dataset_format` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat({
    this.csv,
    this.json,
  });

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv?
  csv;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson?
  json;

  Map<String, Object?> encode() => {
    if (csv != null) 'csv': csv!.encode(),
    if (json != null) 'json': json!.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input.dataset_format.csv` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  final TfArg<bool>? header;

  Map<String, Object?> encode() => {
    if (header != null) 'header': header!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input.dataset_format.json` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson({
    this.line,
  });

  final TfArg<bool>? line;

  Map<String, Object?> encode() => {if (line != null) 'line': line!.toTfJson()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.endpoint_input` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput({
    this.endTimeOffset,
    required this.endpointName,
    this.excludeFeaturesAttribute,
    this.featuresAttribute,
    this.inferenceAttribute,
    required this.localPath,
    this.probabilityAttribute,
    this.probabilityThresholdAttribute,
    this.s3DataDistributionType,
    this.s3InputMode,
    this.startTimeOffset,
  });

  final TfArg<String>? endTimeOffset;

  final TfArg<String> endpointName;

  final TfArg<String>? excludeFeaturesAttribute;

  final TfArg<String>? featuresAttribute;

  final TfArg<String>? inferenceAttribute;

  final TfArg<String> localPath;

  final TfArg<String>? probabilityAttribute;

  final TfArg<num>? probabilityThresholdAttribute;

  final TfArg<String>? s3DataDistributionType;

  final TfArg<String>? s3InputMode;

  final TfArg<String>? startTimeOffset;

  Map<String, Object?> encode() => {
    if (endTimeOffset != null) 'end_time_offset': endTimeOffset!.toTfJson(),
    'endpoint_name': endpointName.toTfJson(),
    if (excludeFeaturesAttribute != null)
      'exclude_features_attribute': excludeFeaturesAttribute!.toTfJson(),
    if (featuresAttribute != null)
      'features_attribute': featuresAttribute!.toTfJson(),
    if (inferenceAttribute != null)
      'inference_attribute': inferenceAttribute!.toTfJson(),
    'local_path': localPath.toTfJson(),
    if (probabilityAttribute != null)
      'probability_attribute': probabilityAttribute!.toTfJson(),
    if (probabilityThresholdAttribute != null)
      'probability_threshold_attribute': probabilityThresholdAttribute!
          .toTfJson(),
    if (s3DataDistributionType != null)
      's3_data_distribution_type': s3DataDistributionType!.toTfJson(),
    if (s3InputMode != null) 's3_input_mode': s3InputMode!.toTfJson(),
    if (startTimeOffset != null)
      'start_time_offset': startTimeOffset!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_output_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig({
    this.kmsKeyId,
    required this.monitoringOutputs,
  });

  final TfArg<String>? kmsKeyId;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs
  monitoringOutputs;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    'monitoring_outputs': monitoringOutputs.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_output_config.monitoring_outputs` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs({
    required this.s3Output,
  });

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output
  s3Output;

  Map<String, Object?> encode() => {'s3_output': s3Output.encode()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_output_config.monitoring_outputs.s3_output` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output({
    required this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  final TfArg<String> localPath;

  final TfArg<String>? s3UploadMode;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'local_path': localPath.toTfJson(),
    if (s3UploadMode != null) 's3_upload_mode': s3UploadMode!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_resources` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources({
    required this.clusterConfig,
  });

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig
  clusterConfig;

  Map<String, Object?> encode() => {'cluster_config': clusterConfig.encode()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_resources.cluster_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig({
    required this.instanceCount,
    required this.instanceType,
    this.volumeKmsKeyId,
    required this.volumeSizeInGb,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> instanceType;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num> volumeSizeInGb;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId!.toTfJson(),
    'volume_size_in_gb': volumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.network_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  final TfArg<bool>? enableInterContainerTrafficEncryption;

  final TfArg<bool>? enableNetworkIsolation;

  final SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig?
  vpcConfig;

  Map<String, Object?> encode() => {
    if (enableInterContainerTrafficEncryption != null)
      'enable_inter_container_traffic_encryption':
          enableInterContainerTrafficEncryption!.toTfJson(),
    if (enableNetworkIsolation != null)
      'enable_network_isolation': enableNetworkIsolation!.toTfJson(),
    if (vpcConfig != null) 'vpc_config': vpcConfig!.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.network_config.vpc_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.stopping_condition` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  final TfArg<num>? maxRuntimeInSeconds;

  Map<String, Object?> encode() => {
    if (maxRuntimeInSeconds != null)
      'max_runtime_in_seconds': maxRuntimeInSeconds!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.schedule_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig {
  const SagemakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig({
    required this.scheduleExpression,
  });

  final TfArg<String> scheduleExpression;

  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_monitoring_schedule`.
final class AwsSagemakerMonitoringSchedule extends Resource {
  static const String tfType = 'aws_sagemaker_monitoring_schedule';

  AwsSagemakerMonitoringSchedule({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required SagemakerMonitoringScheduleMonitoringScheduleConfig
    monitoringScheduleConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'monitoring_schedule_config': TfArg.literal(
             monitoringScheduleConfig.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerMonitoringScheduleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
