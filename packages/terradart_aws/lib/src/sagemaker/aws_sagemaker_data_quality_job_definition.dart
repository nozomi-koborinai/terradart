// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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
    'environment': ?environment?.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    'post_analytics_processor_source_uri': ?postAnalyticsProcessorSourceUri
        ?.toTfJson(),
    'record_preprocessor_source_uri': ?recordPreprocessorSourceUri?.toTfJson(),
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

  final SagemakerDataQualityJobDefinitionConstraintsResource?
  constraintsResource;

  final SagemakerDataQualityJobDefinitionStatisticsResource? statisticsResource;

  Map<String, Object?> encode() => {
    'constraints_resource': ?constraintsResource?.encode(),
    'statistics_resource': ?statisticsResource?.encode(),
  };
}

/// Typed helper for the `data_quality_baseline_config.constraints_resource` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionConstraintsResource {
  const SagemakerDataQualityJobDefinitionConstraintsResource({this.s3Uri});

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {'s3_uri': ?s3Uri?.toTfJson()};
}

/// Typed helper for the `data_quality_baseline_config.statistics_resource` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionStatisticsResource {
  const SagemakerDataQualityJobDefinitionStatisticsResource({this.s3Uri});

  final TfArg<String>? s3Uri;

  Map<String, Object?> encode() => {'s3_uri': ?s3Uri?.toTfJson()};
}

/// Typed helper for the `data_quality_job_input` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDataQualityJobInput {
  const SagemakerDataQualityJobDefinitionDataQualityJobInput({
    this.batchTransformInput,
    this.endpointInput,
  });

  final SagemakerDataQualityJobDefinitionBatchTransformInput?
  batchTransformInput;

  final SagemakerDataQualityJobDefinitionEndpointInput? endpointInput;

  Map<String, Object?> encode() => {
    'batch_transform_input': ?batchTransformInput?.encode(),
    'endpoint_input': ?endpointInput?.encode(),
  };
}

/// Typed helper for the `data_quality_job_input.batch_transform_input` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionBatchTransformInput {
  const SagemakerDataQualityJobDefinitionBatchTransformInput({
    required this.dataCapturedDestinationS3Uri,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
    required this.datasetFormat,
  });

  final TfArg<String> dataCapturedDestinationS3Uri;

  final TfArg<String>? localPath;

  final TfArg<SagemakerDataQualityJobDefinitionS3DataDistributionType>?
  s3DataDistributionType;

  final TfArg<SagemakerDataQualityJobDefinitionS3InputMode>? s3InputMode;

  final SagemakerDataQualityJobDefinitionDatasetFormat datasetFormat;

  Map<String, Object?> encode() => {
    'data_captured_destination_s3_uri': dataCapturedDestinationS3Uri.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_input_mode': ?s3InputMode?.toTfJson(),
    'dataset_format': datasetFormat.encode(),
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
enum SagemakerDataQualityJobDefinitionS3DataDistributionType
    implements TerraformEnum {
  fullyreplicated('FullyReplicated'),
  shardedbys3key('ShardedByS3Key');

  const SagemakerDataQualityJobDefinitionS3DataDistributionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_input_mode` — derived from the provider schema description.
enum SagemakerDataQualityJobDefinitionS3InputMode implements TerraformEnum {
  pipe('Pipe'),
  file('File');

  const SagemakerDataQualityJobDefinitionS3InputMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDatasetFormat {
  const SagemakerDataQualityJobDefinitionDatasetFormat({this.csv, this.json});

  final SagemakerDataQualityJobDefinitionCsv? csv;

  final SagemakerDataQualityJobDefinitionJson? json;

  Map<String, Object?> encode() => {
    'csv': ?csv?.encode(),
    'json': ?json?.encode(),
  };
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format.csv` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionCsv {
  const SagemakerDataQualityJobDefinitionCsv({this.header});

  final TfArg<bool>? header;

  Map<String, Object?> encode() => {'header': ?header?.toTfJson()};
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format.json` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionJson {
  const SagemakerDataQualityJobDefinitionJson({this.line});

  final TfArg<bool>? line;

  Map<String, Object?> encode() => {'line': ?line?.toTfJson()};
}

/// Typed helper for the `data_quality_job_input.endpoint_input` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionEndpointInput {
  const SagemakerDataQualityJobDefinitionEndpointInput({
    required this.endpointName,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
  });

  final TfArg<String> endpointName;

  final TfArg<String>? localPath;

  final TfArg<SagemakerDataQualityJobDefinitionS3DataDistributionType>?
  s3DataDistributionType;

  final TfArg<SagemakerDataQualityJobDefinitionS3InputMode>? s3InputMode;

  Map<String, Object?> encode() => {
    'endpoint_name': endpointName.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_input_mode': ?s3InputMode?.toTfJson(),
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final SagemakerDataQualityJobDefinitionMonitoringOutputs monitoringOutputs;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'monitoring_outputs': monitoringOutputs.encode(),
  };
}

/// Typed helper for the `data_quality_job_output_config.monitoring_outputs` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionMonitoringOutputs {
  const SagemakerDataQualityJobDefinitionMonitoringOutputs({
    required this.s3Output,
  });

  final SagemakerDataQualityJobDefinitionS3Output s3Output;

  Map<String, Object?> encode() => {'s3_output': s3Output.encode()};
}

/// Typed helper for the `data_quality_job_output_config.monitoring_outputs.s3_output` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionS3Output {
  const SagemakerDataQualityJobDefinitionS3Output({
    this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  final TfArg<String>? localPath;

  final TfArg<SagemakerDataQualityJobDefinitionS3UploadMode>? s3UploadMode;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'local_path': ?localPath?.toTfJson(),
    's3_upload_mode': ?s3UploadMode?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// `s3_upload_mode` — derived from the provider schema description.
enum SagemakerDataQualityJobDefinitionS3UploadMode implements TerraformEnum {
  continuous('Continuous'),
  endofjob('EndOfJob');

  const SagemakerDataQualityJobDefinitionS3UploadMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `job_resources` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionJobResources {
  const SagemakerDataQualityJobDefinitionJobResources({
    required this.clusterConfig,
  });

  final SagemakerDataQualityJobDefinitionClusterConfig clusterConfig;

  Map<String, Object?> encode() => {'cluster_config': clusterConfig.encode()};
}

/// Typed helper for the `job_resources.cluster_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionClusterConfig {
  const SagemakerDataQualityJobDefinitionClusterConfig({
    required this.instanceCount,
    required this.instanceType,
    this.volumeKmsKeyId,
    required this.volumeSizeInGb,
  });

  final TfArg<num> instanceCount;

  final TfArg<SagemakerDataQualityJobDefinitionInstanceType> instanceType;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num> volumeSizeInGb;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': volumeSizeInGb.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerDataQualityJobDefinitionInstanceType implements TerraformEnum {
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
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
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d8xlarge('ml.r5d.8xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d16xlarge('ml.r5d.16xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
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
  mlP5p4xlarge('ml.p5.4xlarge'),
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
  mlG7p48xlarge('ml.g7.48xlarge');

  const SagemakerDataQualityJobDefinitionInstanceType(this.terraformValue);
  @override
  final String terraformValue;
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

  final SagemakerDataQualityJobDefinitionVpcConfig? vpcConfig;

  Map<String, Object?> encode() => {
    'enable_inter_container_traffic_encryption':
        ?enableInterContainerTrafficEncryption?.toTfJson(),
    'enable_network_isolation': ?enableNetworkIsolation?.toTfJson(),
    'vpc_config': ?vpcConfig?.encode(),
  };
}

/// Typed helper for the `network_config.vpc_config` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionVpcConfig {
  const SagemakerDataQualityJobDefinitionVpcConfig({
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

/// Typed helper for the `stopping_condition` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionStoppingCondition {
  const SagemakerDataQualityJobDefinitionStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  final TfArg<num>? maxRuntimeInSeconds;

  Map<String, Object?> encode() => {
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_data_quality_job_definition`.
final class AwsSagemakerDataQualityJobDefinition extends Resource {
  static const String tfType = 'aws_sagemaker_data_quality_job_definition';

  AwsSagemakerDataQualityJobDefinition({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'name': ?name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerDataQualityJobDefinition>`.
  RefTo<AwsSagemakerDataQualityJobDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
