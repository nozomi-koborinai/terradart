// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_data_quality_job_definition`.
const Set<String> _awsSagemakerDataQualityJobDefinitionSensitive = <String>{};

/// Typed helper for the `data_quality_app_specification` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityAppSpecification {
  const SagemakerDataQualityJobDefinitionDataQualityAppSpecification({
    this.environment,
    required this.imageUri,
    this.postAnalyticsProcessorSourceUri,
    this.recordPreprocessorSourceUri,
  });

  final TfArg<Map<String, String>>? environment;

  final TfArg<String> imageUri;

  final TfArg<String>? postAnalyticsProcessorSourceUri;

  final TfArg<String>? recordPreprocessorSourceUri;

  Map<String, Object?> encode() => {
    if (environment != null) 'environment': environment!.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    if (postAnalyticsProcessorSourceUri != null)
      'post_analytics_processor_source_uri': postAnalyticsProcessorSourceUri!
          .toTfJson(),
    if (recordPreprocessorSourceUri != null)
      'record_preprocessor_source_uri': recordPreprocessorSourceUri!.toTfJson(),
  };
}

/// Typed helper for the `data_quality_baseline_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityBaselineConfig {
  const SagemakerDataQualityJobDefinitionDataQualityBaselineConfig({
    this.constraintsResource,
    this.statisticsResource,
  });

  final SagemakerDataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource?
  constraintsResource;

  final SagemakerDataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource?
  statisticsResource;

  Map<String, Object?> encode() => {
    if (constraintsResource != null)
      'constraints_resource': constraintsResource!.encode(),
    if (statisticsResource != null)
      'statistics_resource': statisticsResource!.encode(),
  };
}

/// Typed helper for the `data_quality_baseline_config.constraints_resource` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource {
  const SagemakerDataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource({
    this.s3Uri,
  });

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {
    if (s3Uri != null) 's3_uri': s3Uri!.toTfJson(),
  };
}

/// Typed helper for the `data_quality_baseline_config.statistics_resource` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource {
  const SagemakerDataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource({
    this.s3Uri,
  });

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {
    if (s3Uri != null) 's3_uri': s3Uri!.toTfJson(),
  };
}

/// Typed helper for the `data_quality_job_input` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInput {
  const SagemakerDataQualityJobDefinitionDataQualityJobInput({
    this.batchTransformInput,
    this.endpointInput,
  });

  final SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInput?
  batchTransformInput;

  final SagemakerDataQualityJobDefinitionDataQualityJobInputEndpointInput?
  endpointInput;

  Map<String, Object?> encode() => {
    if (batchTransformInput != null)
      'batch_transform_input': batchTransformInput!.encode(),
    if (endpointInput != null) 'endpoint_input': endpointInput!.encode(),
  };
}

/// Typed helper for the `data_quality_job_input.batch_transform_input` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInput {
  const SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInput({
    required this.dataCapturedDestinationS3Uri,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
    required this.datasetFormat,
  });

  final TfArg<String> dataCapturedDestinationS3Uri;

  final TfArg<String>? localPath;

  final TfArg<String>? s3DataDistributionType;

  final TfArg<String>? s3InputMode;

  final SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat
  datasetFormat;

  Map<String, Object?> encode() => {
    'data_captured_destination_s3_uri': dataCapturedDestinationS3Uri.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (s3DataDistributionType != null)
      's3_data_distribution_type': s3DataDistributionType!.toTfJson(),
    if (s3InputMode != null) 's3_input_mode': s3InputMode!.toTfJson(),
    'dataset_format': datasetFormat.encode(),
  };
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat {
  const SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat({
    this.csv,
    this.json,
  });

  final SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv?
  csv;

  final SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson?
  json;

  Map<String, Object?> encode() => {
    if (csv != null) 'csv': csv!.encode(),
    if (json != null) 'json': json!.encode(),
  };
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format.csv` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv {
  const SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  final TfArg<bool>? header;

  Map<String, Object?> encode() => {
    if (header != null) 'header': header!.toTfJson(),
  };
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format.json` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson {
  const SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson({
    this.line,
  });

  final TfArg<bool>? line;

  Map<String, Object?> encode() => {if (line != null) 'line': line!.toTfJson()};
}

/// Typed helper for the `data_quality_job_input.endpoint_input` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInputEndpointInput {
  const SagemakerDataQualityJobDefinitionDataQualityJobInputEndpointInput({
    required this.endpointName,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
  });

  final TfArg<String> endpointName;

  final TfArg<String>? localPath;

  final TfArg<String>? s3DataDistributionType;

  final TfArg<String>? s3InputMode;

  Map<String, Object?> encode() => {
    'endpoint_name': endpointName.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (s3DataDistributionType != null)
      's3_data_distribution_type': s3DataDistributionType!.toTfJson(),
    if (s3InputMode != null) 's3_input_mode': s3InputMode!.toTfJson(),
  };
}

/// Typed helper for the `data_quality_job_output_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobOutputConfig {
  const SagemakerDataQualityJobDefinitionDataQualityJobOutputConfig({
    this.kmsKeyId,
    required this.monitoringOutputs,
  });

  final TfArg<String>? kmsKeyId;

  final SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs
  monitoringOutputs;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    'monitoring_outputs': monitoringOutputs.encode(),
  };
}

/// Typed helper for the `data_quality_job_output_config.monitoring_outputs` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs {
  const SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs({
    required this.s3Output,
  });

  final SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output
  s3Output;

  Map<String, Object?> encode() => {'s3_output': s3Output.encode()};
}

/// Typed helper for the `data_quality_job_output_config.monitoring_outputs.s3_output` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output {
  const SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output({
    this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  final TfArg<String>? localPath;

  final TfArg<String>? s3UploadMode;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (s3UploadMode != null) 's3_upload_mode': s3UploadMode!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `job_resources` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionJobResources {
  const SagemakerDataQualityJobDefinitionJobResources({
    required this.clusterConfig,
  });

  final SagemakerDataQualityJobDefinitionJobResourcesClusterConfig
  clusterConfig;

  Map<String, Object?> encode() => {'cluster_config': clusterConfig.encode()};
}

/// Typed helper for the `job_resources.cluster_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionJobResourcesClusterConfig {
  const SagemakerDataQualityJobDefinitionJobResourcesClusterConfig({
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

/// Typed helper for the `network_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionNetworkConfig {
  const SagemakerDataQualityJobDefinitionNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  final TfArg<bool>? enableInterContainerTrafficEncryption;

  final TfArg<bool>? enableNetworkIsolation;

  final SagemakerDataQualityJobDefinitionNetworkConfigVpcConfig? vpcConfig;

  Map<String, Object?> encode() => {
    if (enableInterContainerTrafficEncryption != null)
      'enable_inter_container_traffic_encryption':
          enableInterContainerTrafficEncryption!.toTfJson(),
    if (enableNetworkIsolation != null)
      'enable_network_isolation': enableNetworkIsolation!.toTfJson(),
    if (vpcConfig != null) 'vpc_config': vpcConfig!.encode(),
  };
}

/// Typed helper for the `network_config.vpc_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionNetworkConfigVpcConfig {
  const SagemakerDataQualityJobDefinitionNetworkConfigVpcConfig({
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

/// Typed helper for the `stopping_condition` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionStoppingCondition {
  const SagemakerDataQualityJobDefinitionStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  final TfArg<num>? maxRuntimeInSeconds;

  Map<String, Object?> encode() => {
    if (maxRuntimeInSeconds != null)
      'max_runtime_in_seconds': maxRuntimeInSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_data_quality_job_definition`.
final class AwsSagemakerDataQualityJobDefinition extends Resource {
  static const String tfType = 'aws_sagemaker_data_quality_job_definition';

  AwsSagemakerDataQualityJobDefinition({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required SagemakerDataQualityJobDefinitionDataQualityAppSpecification
    dataQualityAppSpecification,
    SagemakerDataQualityJobDefinitionDataQualityBaselineConfig?
    dataQualityBaselineConfig,
    required SagemakerDataQualityJobDefinitionDataQualityJobInput
    dataQualityJobInput,
    required SagemakerDataQualityJobDefinitionDataQualityJobOutputConfig
    dataQualityJobOutputConfig,
    required SagemakerDataQualityJobDefinitionJobResources jobResources,
    SagemakerDataQualityJobDefinitionNetworkConfig? networkConfig,
    SagemakerDataQualityJobDefinitionStoppingCondition? stoppingCondition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'data_quality_app_specification': TfArg.literal(
             dataQualityAppSpecification.encode(),
           ),
           if (dataQualityBaselineConfig != null)
             'data_quality_baseline_config': TfArg.literal(
               dataQualityBaselineConfig.encode(),
             ),
           'data_quality_job_input': TfArg.literal(
             dataQualityJobInput.encode(),
           ),
           'data_quality_job_output_config': TfArg.literal(
             dataQualityJobOutputConfig.encode(),
           ),
           'job_resources': TfArg.literal(jobResources.encode()),
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (stoppingCondition != null)
             'stopping_condition': TfArg.literal(stoppingCondition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerDataQualityJobDefinitionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
