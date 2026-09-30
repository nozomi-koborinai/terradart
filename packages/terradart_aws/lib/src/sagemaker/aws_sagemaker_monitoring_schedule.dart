// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_monitoring_schedule`.
const Set<String> _awsSagemakerMonitoringScheduleSensitive = <String>{};

/// Typed helper for the `monitoring_schedule_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleConfig {
  const SagemakerMonitoringScheduleConfig({
    this.monitoringJobDefinitionName,
    required this.monitoringType,
    this.monitoringJobDefinition,
    this.scheduleConfig,
  });

  final TfArg<String>? monitoringJobDefinitionName;

  final TfArg<SagemakerMonitoringScheduleMonitoringType> monitoringType;

  final SagemakerMonitoringScheduleMonitoringJobDefinition?
  monitoringJobDefinition;

  final SagemakerMonitoringScheduleScheduleConfig? scheduleConfig;

  Map<String, Object?> encode() => {
    'monitoring_job_definition_name': ?monitoringJobDefinitionName?.toTfJson(),
    'monitoring_type': monitoringType.toTfJson(),
    'monitoring_job_definition': ?monitoringJobDefinition?.encode(),
    'schedule_config': ?scheduleConfig?.encode(),
  };
}

/// `monitoring_type` — derived from the provider schema description.
enum SagemakerMonitoringScheduleMonitoringType implements TerraformEnum {
  dataquality('DataQuality'),
  modelquality('ModelQuality'),
  modelbias('ModelBias'),
  modelexplainability('ModelExplainability');

  const SagemakerMonitoringScheduleMonitoringType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringJobDefinition {
  const SagemakerMonitoringScheduleMonitoringJobDefinition({
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

  final RefTo<AwsIamRole> roleArn;

  final SagemakerMonitoringScheduleBaseline? baseline;

  final SagemakerMonitoringScheduleMonitoringAppSpecification
  monitoringAppSpecification;

  final SagemakerMonitoringScheduleMonitoringInputs monitoringInputs;

  final SagemakerMonitoringScheduleMonitoringOutputConfig
  monitoringOutputConfig;

  final SagemakerMonitoringScheduleMonitoringResources monitoringResources;

  final SagemakerMonitoringScheduleNetworkConfig? networkConfig;

  final List<SagemakerMonitoringScheduleStoppingCondition>? stoppingCondition;

  Map<String, Object?> encode() => {
    'environment': ?environment?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'baseline': ?baseline?.encode(),
    'monitoring_app_specification': monitoringAppSpecification.encode(),
    'monitoring_inputs': monitoringInputs.encode(),
    'monitoring_output_config': monitoringOutputConfig.encode(),
    'monitoring_resources': monitoringResources.encode(),
    'network_config': ?networkConfig?.encode(),
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.baseline` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleBaseline {
  const SagemakerMonitoringScheduleBaseline({
    this.baseliningJobName,
    this.constraintsResource,
    this.statisticsResource,
  });

  final TfArg<String>? baseliningJobName;

  final SagemakerMonitoringScheduleConstraintsResource? constraintsResource;

  final SagemakerMonitoringScheduleStatisticsResource? statisticsResource;

  Map<String, Object?> encode() => {
    'baselining_job_name': ?baseliningJobName?.toTfJson(),
    'constraints_resource': ?constraintsResource?.encode(),
    'statistics_resource': ?statisticsResource?.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.baseline.constraints_resource` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleConstraintsResource {
  const SagemakerMonitoringScheduleConstraintsResource({this.s3Uri});

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {'s3_uri': ?s3Uri?.toTfJson()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.baseline.statistics_resource` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleStatisticsResource {
  const SagemakerMonitoringScheduleStatisticsResource({this.s3Uri});

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {'s3_uri': ?s3Uri?.toTfJson()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_app_specification` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringAppSpecification {
  const SagemakerMonitoringScheduleMonitoringAppSpecification({
    this.containerArguments,
    this.containerEntrypoint,
    required this.imageUri,
    this.postAnalyticsProcessorSourceUri,
    this.recordPreprocessorSourceUri,
  });

  final TfArg<List<String>>? containerArguments;

  final TfArg<List<String>>? containerEntrypoint;

  final TfArg<String> imageUri;

  final TfArg<String>? postAnalyticsProcessorSourceUri;

  final TfArg<String>? recordPreprocessorSourceUri;

  Map<String, Object?> encode() => {
    'container_arguments': ?containerArguments?.toTfJson(),
    'container_entrypoint': ?containerEntrypoint?.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    'post_analytics_processor_source_uri': ?postAnalyticsProcessorSourceUri
        ?.toTfJson(),
    'record_preprocessor_source_uri': ?recordPreprocessorSourceUri?.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringInputs {
  const SagemakerMonitoringScheduleMonitoringInputs({
    this.batchTransformInput,
    this.endpointInput,
  });

  final SagemakerMonitoringScheduleBatchTransformInput? batchTransformInput;

  final SagemakerMonitoringScheduleEndpointInput? endpointInput;

  Map<String, Object?> encode() => {
    'batch_transform_input': ?batchTransformInput?.encode(),
    'endpoint_input': ?endpointInput?.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleBatchTransformInput {
  const SagemakerMonitoringScheduleBatchTransformInput({
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

  final TfArg<SagemakerMonitoringScheduleS3DataDistributionType>?
  s3DataDistributionType;

  final TfArg<SagemakerMonitoringScheduleS3InputMode>? s3InputMode;

  final TfArg<String>? startTimeOffset;

  final SagemakerMonitoringScheduleDatasetFormat datasetFormat;

  Map<String, Object?> encode() => {
    'data_captured_destination_s3_uri': dataCapturedDestinationS3Uri.toTfJson(),
    'end_time_offset': ?endTimeOffset?.toTfJson(),
    'exclude_features_attribute': ?excludeFeaturesAttribute?.toTfJson(),
    'features_attribute': ?featuresAttribute?.toTfJson(),
    'inference_attribute': ?inferenceAttribute?.toTfJson(),
    'local_path': localPath.toTfJson(),
    'probability_attribute': ?probabilityAttribute?.toTfJson(),
    'probability_threshold_attribute': ?probabilityThresholdAttribute
        ?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_input_mode': ?s3InputMode?.toTfJson(),
    'start_time_offset': ?startTimeOffset?.toTfJson(),
    'dataset_format': datasetFormat.encode(),
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
enum SagemakerMonitoringScheduleS3DataDistributionType
    implements TerraformEnum {
  fullyreplicated('FullyReplicated'),
  shardedbys3key('ShardedByS3Key');

  const SagemakerMonitoringScheduleS3DataDistributionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3_input_mode` — derived from the provider schema description.
enum SagemakerMonitoringScheduleS3InputMode implements TerraformEnum {
  pipe('Pipe'),
  file('File');

  const SagemakerMonitoringScheduleS3InputMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input.dataset_format` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleDatasetFormat {
  const SagemakerMonitoringScheduleDatasetFormat({this.csv, this.json});

  final SagemakerMonitoringScheduleCsv? csv;

  final SagemakerMonitoringScheduleJson? json;

  Map<String, Object?> encode() => {
    'csv': ?csv?.encode(),
    'json': ?json?.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input.dataset_format.csv` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleCsv {
  const SagemakerMonitoringScheduleCsv({this.header});

  final TfArg<bool>? header;

  Map<String, Object?> encode() => {'header': ?header?.toTfJson()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.batch_transform_input.dataset_format.json` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleJson {
  const SagemakerMonitoringScheduleJson({this.line});

  final TfArg<bool>? line;

  Map<String, Object?> encode() => {'line': ?line?.toTfJson()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_inputs.endpoint_input` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleEndpointInput {
  const SagemakerMonitoringScheduleEndpointInput({
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

  final TfArg<SagemakerMonitoringScheduleS3DataDistributionType>?
  s3DataDistributionType;

  final TfArg<SagemakerMonitoringScheduleS3InputMode>? s3InputMode;

  final TfArg<String>? startTimeOffset;

  Map<String, Object?> encode() => {
    'end_time_offset': ?endTimeOffset?.toTfJson(),
    'endpoint_name': endpointName.toTfJson(),
    'exclude_features_attribute': ?excludeFeaturesAttribute?.toTfJson(),
    'features_attribute': ?featuresAttribute?.toTfJson(),
    'inference_attribute': ?inferenceAttribute?.toTfJson(),
    'local_path': localPath.toTfJson(),
    'probability_attribute': ?probabilityAttribute?.toTfJson(),
    'probability_threshold_attribute': ?probabilityThresholdAttribute
        ?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_input_mode': ?s3InputMode?.toTfJson(),
    'start_time_offset': ?startTimeOffset?.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_output_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringOutputConfig {
  const SagemakerMonitoringScheduleMonitoringOutputConfig({
    this.kmsKeyId,
    required this.monitoringOutputs,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final SagemakerMonitoringScheduleMonitoringOutputs monitoringOutputs;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'monitoring_outputs': monitoringOutputs.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_output_config.monitoring_outputs` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringOutputs {
  const SagemakerMonitoringScheduleMonitoringOutputs({required this.s3Output});

  final SagemakerMonitoringScheduleS3Output s3Output;

  Map<String, Object?> encode() => {'s3_output': s3Output.encode()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_output_config.monitoring_outputs.s3_output` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleS3Output {
  const SagemakerMonitoringScheduleS3Output({
    required this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  final TfArg<String> localPath;

  final TfArg<SagemakerMonitoringScheduleS3UploadMode>? s3UploadMode;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'local_path': localPath.toTfJson(),
    's3_upload_mode': ?s3UploadMode?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// `s3_upload_mode` — derived from the provider schema description.
enum SagemakerMonitoringScheduleS3UploadMode implements TerraformEnum {
  continuous('Continuous'),
  endofjob('EndOfJob');

  const SagemakerMonitoringScheduleS3UploadMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_resources` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleMonitoringResources {
  const SagemakerMonitoringScheduleMonitoringResources({
    required this.clusterConfig,
  });

  final SagemakerMonitoringScheduleClusterConfig clusterConfig;

  Map<String, Object?> encode() => {'cluster_config': clusterConfig.encode()};
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.monitoring_resources.cluster_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleClusterConfig {
  const SagemakerMonitoringScheduleClusterConfig({
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
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': volumeSizeInGb.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.network_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleNetworkConfig {
  const SagemakerMonitoringScheduleNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  final TfArg<bool>? enableInterContainerTrafficEncryption;

  final TfArg<bool>? enableNetworkIsolation;

  final SagemakerMonitoringScheduleVpcConfig? vpcConfig;

  Map<String, Object?> encode() => {
    'enable_inter_container_traffic_encryption':
        ?enableInterContainerTrafficEncryption?.toTfJson(),
    'enable_network_isolation': ?enableNetworkIsolation?.toTfJson(),
    'vpc_config': ?vpcConfig?.encode(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.network_config.vpc_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleVpcConfig {
  const SagemakerMonitoringScheduleVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.monitoring_job_definition.stopping_condition` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleStoppingCondition {
  const SagemakerMonitoringScheduleStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  final TfArg<num>? maxRuntimeInSeconds;

  Map<String, Object?> encode() => {
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `monitoring_schedule_config.schedule_config` block of
/// `aws_sagemaker_monitoring_schedule` (derived from provider schema).
@immutable
final class SagemakerMonitoringScheduleScheduleConfig {
  const SagemakerMonitoringScheduleScheduleConfig({
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
    required SagemakerMonitoringScheduleConfig monitoringScheduleConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
           'monitoring_schedule_config': TfArg.literal(
             monitoringScheduleConfig.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerMonitoringScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerMonitoringSchedule>`.
  RefTo<AwsSagemakerMonitoringSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
