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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'s3_uri': ?s3Uri?.toTfJson()};
}

/// Typed helper for the `data_quality_baseline_config.statistics_resource` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionStatisticsResource {
  const SagemakerDataQualityJobDefinitionStatisticsResource({this.s3Uri});

  final TfArg<String>? s3Uri;

  @internal
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

  @internal
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

  final SagemakerDataQualityJobDefinitionS3DataDistributionType?
  s3DataDistributionType;

  final SagemakerDataQualityJobDefinitionS3InputMode? s3InputMode;

  final SagemakerDataQualityJobDefinitionDatasetFormat datasetFormat;

  @internal
  Map<String, Object?> encode() => {
    'data_captured_destination_s3_uri': dataCapturedDestinationS3Uri.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_input_mode': ?s3InputMode?.toTfJson(),
    'dataset_format': datasetFormat.encode(),
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
extension type const SagemakerDataQualityJobDefinitionS3DataDistributionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerDataQualityJobDefinitionS3DataDistributionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDataQualityJobDefinitionS3DataDistributionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerDataQualityJobDefinitionS3DataDistributionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const fullyreplicated =
      SagemakerDataQualityJobDefinitionS3DataDistributionType._(
        TfArgLiteral('FullyReplicated'),
      );
  static const shardedbys3key =
      SagemakerDataQualityJobDefinitionS3DataDistributionType._(
        TfArgLiteral('ShardedByS3Key'),
      );

  static const List<SagemakerDataQualityJobDefinitionS3DataDistributionType>
  values = [fullyreplicated, shardedbys3key];
}

/// `s3_input_mode` — derived from the provider schema description.
extension type const SagemakerDataQualityJobDefinitionS3InputMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerDataQualityJobDefinitionS3InputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDataQualityJobDefinitionS3InputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDataQualityJobDefinitionS3InputMode.arg(TfArg<String> arg)
    : this._(arg);

  static const pipe = SagemakerDataQualityJobDefinitionS3InputMode._(
    TfArgLiteral('Pipe'),
  );
  static const file = SagemakerDataQualityJobDefinitionS3InputMode._(
    TfArgLiteral('File'),
  );

  static const List<SagemakerDataQualityJobDefinitionS3InputMode> values = [
    pipe,
    file,
  ];
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionDatasetFormat {
  const SagemakerDataQualityJobDefinitionDatasetFormat({this.csv, this.json});

  final SagemakerDataQualityJobDefinitionCsv? csv;

  final SagemakerDataQualityJobDefinitionJson? json;

  @internal
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

  @internal
  Map<String, Object?> encode() => {'header': ?header?.toTfJson()};
}

/// Typed helper for the `data_quality_job_input.batch_transform_input.dataset_format.json` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionJson {
  const SagemakerDataQualityJobDefinitionJson({this.line});

  final TfArg<bool>? line;

  @internal
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

  final SagemakerDataQualityJobDefinitionS3DataDistributionType?
  s3DataDistributionType;

  final SagemakerDataQualityJobDefinitionS3InputMode? s3InputMode;

  @internal
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

  @internal
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

  @internal
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

  final SagemakerDataQualityJobDefinitionS3UploadMode? s3UploadMode;

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {
    'local_path': ?localPath?.toTfJson(),
    's3_upload_mode': ?s3UploadMode?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// `s3_upload_mode` — derived from the provider schema description.
extension type const SagemakerDataQualityJobDefinitionS3UploadMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerDataQualityJobDefinitionS3UploadMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDataQualityJobDefinitionS3UploadMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDataQualityJobDefinitionS3UploadMode.arg(TfArg<String> arg)
    : this._(arg);

  static const continuous = SagemakerDataQualityJobDefinitionS3UploadMode._(
    TfArgLiteral('Continuous'),
  );
  static const endofjob = SagemakerDataQualityJobDefinitionS3UploadMode._(
    TfArgLiteral('EndOfJob'),
  );

  static const List<SagemakerDataQualityJobDefinitionS3UploadMode> values = [
    continuous,
    endofjob,
  ];
}

/// Typed helper for the `job_resources` block of
/// `aws_sagemaker_data_quality_job_definition` (derived from provider schema).
@immutable
final class SagemakerDataQualityJobDefinitionJobResources {
  const SagemakerDataQualityJobDefinitionJobResources({
    required this.clusterConfig,
  });

  final SagemakerDataQualityJobDefinitionClusterConfig clusterConfig;

  @internal
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

  final SagemakerDataQualityJobDefinitionInstanceType instanceType;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num> volumeSizeInGb;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': volumeSizeInGb.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerDataQualityJobDefinitionInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerDataQualityJobDefinitionInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerDataQualityJobDefinitionInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerDataQualityJobDefinitionInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlT3Medium = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM4Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlC4Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlP2Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlC5Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlM5Large = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlR5Large = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlG5Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlR5dLarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.2xlarge'),
  );
  static const mlR5d4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.4xlarge'),
  );
  static const mlR5d8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.8xlarge'),
  );
  static const mlR5d12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.12xlarge'),
  );
  static const mlR5d16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.16xlarge'),
  );
  static const mlR5d24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r5d.24xlarge'),
  );
  static const mlG6Xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlM6iLarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlC6iXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC7iLarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR7iLarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlP5p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlG7e2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlG7p2xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerDataQualityJobDefinitionInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );

  static const List<SagemakerDataQualityJobDefinitionInstanceType> values = [
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
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
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d8xlarge,
    mlR5d12xlarge,
    mlR5d16xlarge,
    mlR5d24xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
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
    mlP5p4xlarge,
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
  ];
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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_data_quality_job_definition`.
final class AwsSagemakerDataQualityJobDefinition extends Resource {
  static const String tfType = 'aws_sagemaker_data_quality_job_definition';

  AwsSagemakerDataQualityJobDefinition(
    super.localName, {
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
