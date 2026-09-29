// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_training_job`.
const Set<String> _awsSagemakerTrainingJobSensitive = <String>{};

/// Typed helper for the `algorithm_specification` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobAlgorithmSpecification {
  const SagemakerTrainingJobAlgorithmSpecification({
    this.algorithmName,
    this.containerArguments,
    this.containerEntrypoint,
    this.enableSagemakerMetricsTimeSeries,
    this.trainingImage,
    this.trainingInputMode,
    this.metricDefinitions,
    this.trainingImageConfig,
  });

  final TfArg<String>? algorithmName;

  final TfArg<List<Object?>>? containerArguments;

  final TfArg<List<Object?>>? containerEntrypoint;

  final TfArg<bool>? enableSagemakerMetricsTimeSeries;

  final TfArg<String>? trainingImage;

  final TfArg<SagemakerTrainingJobAlgorithmSpecificationTrainingInputMode>?
  trainingInputMode;

  final List<SagemakerTrainingJobAlgorithmSpecificationMetricDefinitions>?
  metricDefinitions;

  final List<SagemakerTrainingJobAlgorithmSpecificationTrainingImageConfig>?
  trainingImageConfig;

  Map<String, Object?> encode() => {
    if (algorithmName != null) 'algorithm_name': algorithmName!.toTfJson(),
    if (containerArguments != null)
      'container_arguments': containerArguments!.toTfJson(),
    if (containerEntrypoint != null)
      'container_entrypoint': containerEntrypoint!.toTfJson(),
    if (enableSagemakerMetricsTimeSeries != null)
      'enable_sagemaker_metrics_time_series': enableSagemakerMetricsTimeSeries!
          .toTfJson(),
    if (trainingImage != null) 'training_image': trainingImage!.toTfJson(),
    if (trainingInputMode != null)
      'training_input_mode': trainingInputMode!.toTfJson(),
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
    if (trainingImageConfig != null)
      'training_image_config': [
        for (final e in trainingImageConfig!) e.encode(),
      ],
  };
}

/// `training_input_mode` — derived from the provider schema description.
enum SagemakerTrainingJobAlgorithmSpecificationTrainingInputMode
    implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerTrainingJobAlgorithmSpecificationTrainingInputMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `algorithm_specification.metric_definitions` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobAlgorithmSpecificationMetricDefinitions {
  const SagemakerTrainingJobAlgorithmSpecificationMetricDefinitions({
    required this.name,
    required this.regex,
  });

  final TfArg<String> name;

  final TfArg<String> regex;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'regex': regex.toTfJson(),
  };
}

/// Typed helper for the `algorithm_specification.training_image_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobAlgorithmSpecificationTrainingImageConfig {
  const SagemakerTrainingJobAlgorithmSpecificationTrainingImageConfig({
    this.trainingRepositoryAccessMode,
    this.trainingRepositoryAuthConfig,
  });

  final TfArg<String>? trainingRepositoryAccessMode;

  final List<
    SagemakerTrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig
  >?
  trainingRepositoryAuthConfig;

  Map<String, Object?> encode() => {
    if (trainingRepositoryAccessMode != null)
      'training_repository_access_mode': trainingRepositoryAccessMode!
          .toTfJson(),
    if (trainingRepositoryAuthConfig != null)
      'training_repository_auth_config': [
        for (final e in trainingRepositoryAuthConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `algorithm_specification.training_image_config.training_repository_auth_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig {
  const SagemakerTrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig({
    this.trainingRepositoryCredentialsProviderArn,
  });

  final TfArg<String>? trainingRepositoryCredentialsProviderArn;

  Map<String, Object?> encode() => {
    if (trainingRepositoryCredentialsProviderArn != null)
      'training_repository_credentials_provider_arn':
          trainingRepositoryCredentialsProviderArn!.toTfJson(),
  };
}

/// Typed helper for the `checkpoint_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobCheckpointConfig {
  const SagemakerTrainingJobCheckpointConfig({
    this.localPath,
    required this.s3Uri,
  });

  final TfArg<String>? localPath;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `debug_hook_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobDebugHookConfig {
  const SagemakerTrainingJobDebugHookConfig({
    this.hookParameters,
    this.localPath,
    required this.s3OutputPath,
    this.collectionConfigurations,
  });

  final TfArg<Map<String, String>>? hookParameters;

  final TfArg<String>? localPath;

  final TfArg<String> s3OutputPath;

  final List<SagemakerTrainingJobDebugHookConfigCollectionConfigurations>?
  collectionConfigurations;

  Map<String, Object?> encode() => {
    if (hookParameters != null) 'hook_parameters': hookParameters!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
    if (collectionConfigurations != null)
      'collection_configurations': [
        for (final e in collectionConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `debug_hook_config.collection_configurations` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobDebugHookConfigCollectionConfigurations {
  const SagemakerTrainingJobDebugHookConfigCollectionConfigurations({
    this.collectionName,
    this.collectionParameters,
  });

  final TfArg<String>? collectionName;

  final TfArg<Map<String, String>>? collectionParameters;

  Map<String, Object?> encode() => {
    if (collectionName != null) 'collection_name': collectionName!.toTfJson(),
    if (collectionParameters != null)
      'collection_parameters': collectionParameters!.toTfJson(),
  };
}

/// Typed helper for the `debug_rule_configurations` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobDebugRuleConfigurations {
  const SagemakerTrainingJobDebugRuleConfigurations({
    this.instanceType,
    this.localPath,
    required this.ruleConfigurationName,
    required this.ruleEvaluatorImage,
    this.ruleParameters,
    this.s3OutputPath,
    this.volumeSizeInGb,
  });

  final TfArg<SagemakerTrainingJobDebugRuleConfigurationsInstanceType>?
  instanceType;

  final TfArg<String>? localPath;

  final TfArg<String> ruleConfigurationName;

  final TfArg<String> ruleEvaluatorImage;

  final TfArg<Map<String, String>>? ruleParameters;

  final TfArg<String>? s3OutputPath;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    'rule_configuration_name': ruleConfigurationName.toTfJson(),
    'rule_evaluator_image': ruleEvaluatorImage.toTfJson(),
    if (ruleParameters != null) 'rule_parameters': ruleParameters!.toTfJson(),
    if (s3OutputPath != null) 's3_output_path': s3OutputPath!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerTrainingJobDebugRuleConfigurationsInstanceType
    implements TerraformEnum {
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

  const SagemakerTrainingJobDebugRuleConfigurationsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `experiment_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobExperimentConfig {
  const SagemakerTrainingJobExperimentConfig({
    this.experimentName,
    this.runName,
    this.trialComponentDisplayName,
    this.trialName,
  });

  final TfArg<String>? experimentName;

  final TfArg<String>? runName;

  final TfArg<String>? trialComponentDisplayName;

  final TfArg<String>? trialName;

  Map<String, Object?> encode() => {
    if (experimentName != null) 'experiment_name': experimentName!.toTfJson(),
    if (runName != null) 'run_name': runName!.toTfJson(),
    if (trialComponentDisplayName != null)
      'trial_component_display_name': trialComponentDisplayName!.toTfJson(),
    if (trialName != null) 'trial_name': trialName!.toTfJson(),
  };
}

/// Typed helper for the `infra_check_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInfraCheckConfig {
  const SagemakerTrainingJobInfraCheckConfig({this.enableInfraCheck});

  final TfArg<bool>? enableInfraCheck;

  Map<String, Object?> encode() => {
    if (enableInfraCheck != null)
      'enable_infra_check': enableInfraCheck!.toTfJson(),
  };
}

/// Typed helper for the `input_data_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfig {
  const SagemakerTrainingJobInputDataConfig({
    required this.channelName,
    this.compressionType,
    this.contentType,
    this.inputMode,
    this.recordWrapperType,
    this.dataSource,
    this.shuffleConfig,
  });

  final TfArg<String> channelName;

  final TfArg<SagemakerTrainingJobInputDataConfigCompressionType>?
  compressionType;

  final TfArg<String>? contentType;

  final TfArg<SagemakerTrainingJobInputDataConfigInputMode>? inputMode;

  final TfArg<SagemakerTrainingJobInputDataConfigRecordWrapperType>?
  recordWrapperType;

  final List<SagemakerTrainingJobInputDataConfigDataSource>? dataSource;

  final List<SagemakerTrainingJobInputDataConfigShuffleConfig>? shuffleConfig;

  Map<String, Object?> encode() => {
    'channel_name': channelName.toTfJson(),
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (inputMode != null) 'input_mode': inputMode!.toTfJson(),
    if (recordWrapperType != null)
      'record_wrapper_type': recordWrapperType!.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
    if (shuffleConfig != null)
      'shuffle_config': [for (final e in shuffleConfig!) e.encode()],
  };
}

/// `compression_type` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigCompressionType
    implements TerraformEnum {
  none('None'),
  gzip('Gzip');

  const SagemakerTrainingJobInputDataConfigCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `input_mode` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigInputMode implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerTrainingJobInputDataConfigInputMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `record_wrapper_type` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigRecordWrapperType
    implements TerraformEnum {
  none('None'),
  recordio('RecordIO');

  const SagemakerTrainingJobInputDataConfigRecordWrapperType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `input_data_config.data_source` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfigDataSource {
  const SagemakerTrainingJobInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSource>?
  fileSystemDataSource;

  final List<SagemakerTrainingJobInputDataConfigDataSourceS3DataSource>?
  s3DataSource;

  Map<String, Object?> encode() => {
    if (fileSystemDataSource != null)
      'file_system_data_source': [
        for (final e in fileSystemDataSource!) e.encode(),
      ],
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `input_data_config.data_source.file_system_data_source` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSource {
  const SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSource({
    required this.directoryPath,
    required this.fileSystemAccessMode,
    required this.fileSystemId,
    required this.fileSystemType,
  });

  final TfArg<String> directoryPath;

  final TfArg<
    SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode
  >
  fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final TfArg<
    SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSourceFileSystemType
  >
  fileSystemType;

  Map<String, Object?> encode() => {
    'directory_path': directoryPath.toTfJson(),
    'file_system_access_mode': fileSystemAccessMode.toTfJson(),
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_type': fileSystemType.toTfJson(),
  };
}

/// `file_system_access_mode` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode
    implements TerraformEnum {
  rw('rw'),
  ro('ro');

  const SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `file_system_type` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSourceFileSystemType
    implements TerraformEnum {
  efs('EFS'),
  fsxlustre('FSxLustre');

  const SagemakerTrainingJobInputDataConfigDataSourceFileSystemDataSourceFileSystemType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfigDataSourceS3DataSource {
  const SagemakerTrainingJobInputDataConfigDataSourceS3DataSource({
    this.attributeNames,
    this.instanceGroupNames,
    this.s3DataDistributionType,
    required this.s3DataType,
    required this.s3Uri,
    this.hubAccessConfig,
    this.modelAccessConfig,
  });

  final TfArg<List<Object?>>? attributeNames;

  final TfArg<List<Object?>>? instanceGroupNames;

  final TfArg<
    SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceS3DataDistributionType
  >?
  s3DataDistributionType;

  final TfArg<
    SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceS3DataType
  >
  s3DataType;

  final TfArg<String> s3Uri;

  final List<
    SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig
  >?
  hubAccessConfig;

  final List<
    SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig
  >?
  modelAccessConfig;

  Map<String, Object?> encode() => {
    if (attributeNames != null) 'attribute_names': attributeNames!.toTfJson(),
    if (instanceGroupNames != null)
      'instance_group_names': instanceGroupNames!.toTfJson(),
    if (s3DataDistributionType != null)
      's3_data_distribution_type': s3DataDistributionType!.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (hubAccessConfig != null)
      'hub_access_config': [for (final e in hubAccessConfig!) e.encode()],
    if (modelAccessConfig != null)
      'model_access_config': [for (final e in modelAccessConfig!) e.encode()],
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceS3DataDistributionType
    implements TerraformEnum {
  fullyreplicated('FullyReplicated'),
  shardedbys3key('ShardedByS3Key');

  const SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceS3DataDistributionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_data_type` — derived from the provider schema description.
enum SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceS3DataType
    implements TerraformEnum {
  manifestfile('ManifestFile'),
  s3prefix('S3Prefix'),
  augmentedmanifestfile('AugmentedManifestFile'),
  converse('Converse');

  const SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceS3DataType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `input_data_config.data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig {
  const SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig({
    required this.hubContentArn,
  });

  final TfArg<String> hubContentArn;

  Map<String, Object?> encode() => {
    'hub_content_arn': hubContentArn.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  const SagemakerTrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `input_data_config.shuffle_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfigShuffleConfig {
  const SagemakerTrainingJobInputDataConfigShuffleConfig({this.seed});

  final TfArg<num>? seed;

  Map<String, Object?> encode() => {if (seed != null) 'seed': seed!.toTfJson()};
}

/// Typed helper for the `mlflow_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobMlflowConfig {
  const SagemakerTrainingJobMlflowConfig({
    this.mlflowExperimentName,
    required this.mlflowResourceArn,
    this.mlflowRunName,
  });

  final TfArg<String>? mlflowExperimentName;

  final TfArg<String> mlflowResourceArn;

  final TfArg<String>? mlflowRunName;

  Map<String, Object?> encode() => {
    if (mlflowExperimentName != null)
      'mlflow_experiment_name': mlflowExperimentName!.toTfJson(),
    'mlflow_resource_arn': mlflowResourceArn.toTfJson(),
    if (mlflowRunName != null) 'mlflow_run_name': mlflowRunName!.toTfJson(),
  };
}

/// Typed helper for the `model_package_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobModelPackageConfig {
  const SagemakerTrainingJobModelPackageConfig({
    required this.modelPackageGroupArn,
    this.sourceModelPackageArn,
  });

  final TfArg<String> modelPackageGroupArn;

  final TfArg<String>? sourceModelPackageArn;

  Map<String, Object?> encode() => {
    'model_package_group_arn': modelPackageGroupArn.toTfJson(),
    if (sourceModelPackageArn != null)
      'source_model_package_arn': sourceModelPackageArn!.toTfJson(),
  };
}

/// Typed helper for the `output_data_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobOutputDataConfig {
  const SagemakerTrainingJobOutputDataConfig({
    this.compressionType,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final TfArg<SagemakerTrainingJobOutputDataConfigCompressionType>?
  compressionType;

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
enum SagemakerTrainingJobOutputDataConfigCompressionType
    implements TerraformEnum {
  gzip('GZIP'),
  none('NONE');

  const SagemakerTrainingJobOutputDataConfigCompressionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `profiler_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobProfilerConfig {
  const SagemakerTrainingJobProfilerConfig({
    this.disableProfiler,
    this.profilingIntervalInMilliseconds,
    this.profilingParameters,
    this.s3OutputPath,
  });

  final TfArg<bool>? disableProfiler;

  final TfArg<num>? profilingIntervalInMilliseconds;

  final TfArg<Map<String, String>>? profilingParameters;

  final TfArg<String>? s3OutputPath;

  Map<String, Object?> encode() => {
    if (disableProfiler != null)
      'disable_profiler': disableProfiler!.toTfJson(),
    if (profilingIntervalInMilliseconds != null)
      'profiling_interval_in_milliseconds': profilingIntervalInMilliseconds!
          .toTfJson(),
    if (profilingParameters != null)
      'profiling_parameters': profilingParameters!.toTfJson(),
    if (s3OutputPath != null) 's3_output_path': s3OutputPath!.toTfJson(),
  };
}

/// Typed helper for the `profiler_rule_configurations` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobProfilerRuleConfigurations {
  const SagemakerTrainingJobProfilerRuleConfigurations({
    this.instanceType,
    this.localPath,
    required this.ruleConfigurationName,
    required this.ruleEvaluatorImage,
    this.ruleParameters,
    this.s3OutputPath,
    this.volumeSizeInGb,
  });

  final TfArg<SagemakerTrainingJobProfilerRuleConfigurationsInstanceType>?
  instanceType;

  final TfArg<String>? localPath;

  final TfArg<String> ruleConfigurationName;

  final TfArg<String> ruleEvaluatorImage;

  final TfArg<Map<String, String>>? ruleParameters;

  final TfArg<String>? s3OutputPath;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    'rule_configuration_name': ruleConfigurationName.toTfJson(),
    'rule_evaluator_image': ruleEvaluatorImage.toTfJson(),
    if (ruleParameters != null) 'rule_parameters': ruleParameters!.toTfJson(),
    if (s3OutputPath != null) 's3_output_path': s3OutputPath!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerTrainingJobProfilerRuleConfigurationsInstanceType
    implements TerraformEnum {
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

  const SagemakerTrainingJobProfilerRuleConfigurationsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `remote_debug_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobRemoteDebugConfig {
  const SagemakerTrainingJobRemoteDebugConfig({this.enableRemoteDebug});

  final TfArg<bool>? enableRemoteDebug;

  Map<String, Object?> encode() => {
    if (enableRemoteDebug != null)
      'enable_remote_debug': enableRemoteDebug!.toTfJson(),
  };
}

/// Typed helper for the `resource_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobResourceConfig {
  const SagemakerTrainingJobResourceConfig({
    this.instanceCount,
    this.instanceType,
    this.keepAlivePeriodInSeconds,
    this.trainingPlanArn,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
    this.instanceGroups,
    this.instancePlacementConfig,
  });

  final TfArg<num>? instanceCount;

  final TfArg<SagemakerTrainingJobResourceConfigInstanceType>? instanceType;

  final TfArg<num>? keepAlivePeriodInSeconds;

  final TfArg<String>? trainingPlanArn;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<SagemakerTrainingJobResourceConfigInstanceGroups>? instanceGroups;

  final List<SagemakerTrainingJobResourceConfigInstancePlacementConfig>?
  instancePlacementConfig;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (keepAlivePeriodInSeconds != null)
      'keep_alive_period_in_seconds': keepAlivePeriodInSeconds!.toTfJson(),
    if (trainingPlanArn != null)
      'training_plan_arn': trainingPlanArn!.toTfJson(),
    if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
    if (instanceGroups != null)
      'instance_groups': [for (final e in instanceGroups!) e.encode()],
    if (instancePlacementConfig != null)
      'instance_placement_config': [
        for (final e in instancePlacementConfig!) e.encode(),
      ],
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerTrainingJobResourceConfigInstanceType implements TerraformEnum {
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
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
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5e48xlarge('ml.p5e.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5nXlarge('ml.c5n.xlarge'),
  mlC5n2xlarge('ml.c5n.2xlarge'),
  mlC5n4xlarge('ml.c5n.4xlarge'),
  mlC5n9xlarge('ml.c5n.9xlarge'),
  mlC5n18xlarge('ml.c5n.18xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlTrn2p48xlarge('ml.trn2.48xlarge'),
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
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d8xlarge('ml.r5d.8xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d16xlarge('ml.r5d.16xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
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
  mlP6eGb200p36xlarge('ml.p6e-gb200.36xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlP6B300p48xlarge('ml.p6-b300.48xlarge'),
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

  const SagemakerTrainingJobResourceConfigInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `resource_config.instance_groups` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobResourceConfigInstanceGroups {
  const SagemakerTrainingJobResourceConfigInstanceGroups({
    this.instanceCount,
    this.instanceGroupName,
    this.instanceType,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceGroupName;

  final TfArg<SagemakerTrainingJobResourceConfigInstanceGroupsInstanceType>?
  instanceType;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceGroupName != null)
      'instance_group_name': instanceGroupName!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerTrainingJobResourceConfigInstanceGroupsInstanceType
    implements TerraformEnum {
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
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
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5e48xlarge('ml.p5e.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5nXlarge('ml.c5n.xlarge'),
  mlC5n2xlarge('ml.c5n.2xlarge'),
  mlC5n4xlarge('ml.c5n.4xlarge'),
  mlC5n9xlarge('ml.c5n.9xlarge'),
  mlC5n18xlarge('ml.c5n.18xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlTrn2p48xlarge('ml.trn2.48xlarge'),
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
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d8xlarge('ml.r5d.8xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d16xlarge('ml.r5d.16xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
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
  mlP6eGb200p36xlarge('ml.p6e-gb200.36xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlP6B300p48xlarge('ml.p6-b300.48xlarge'),
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

  const SagemakerTrainingJobResourceConfigInstanceGroupsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `resource_config.instance_placement_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobResourceConfigInstancePlacementConfig {
  const SagemakerTrainingJobResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<
    SagemakerTrainingJobResourceConfigInstancePlacementConfigPlacementSpecifications
  >?
  placementSpecifications;

  Map<String, Object?> encode() => {
    if (enableMultipleJobs != null)
      'enable_multiple_jobs': enableMultipleJobs!.toTfJson(),
    if (placementSpecifications != null)
      'placement_specifications': [
        for (final e in placementSpecifications!) e.encode(),
      ],
  };
}

/// Typed helper for the `resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobResourceConfigInstancePlacementConfigPlacementSpecifications {
  const SagemakerTrainingJobResourceConfigInstancePlacementConfigPlacementSpecifications({
    this.instanceCount,
    this.ultraServerId,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String>? ultraServerId;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (ultraServerId != null) 'ultra_server_id': ultraServerId!.toTfJson(),
  };
}

/// Typed helper for the `retry_strategy` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobRetryStrategy {
  const SagemakerTrainingJobRetryStrategy({required this.maximumRetryAttempts});

  final TfArg<num> maximumRetryAttempts;

  Map<String, Object?> encode() => {
    'maximum_retry_attempts': maximumRetryAttempts.toTfJson(),
  };
}

/// Typed helper for the `serverless_job_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobServerlessJobConfig {
  const SagemakerTrainingJobServerlessJobConfig({
    this.acceptEula,
    required this.baseModelArn,
    this.customizationTechnique,
    this.evaluationType,
    this.evaluatorArn,
    required this.jobType,
    this.peft,
  });

  final TfArg<bool>? acceptEula;

  final TfArg<String> baseModelArn;

  final TfArg<SagemakerTrainingJobServerlessJobConfigCustomizationTechnique>?
  customizationTechnique;

  final TfArg<SagemakerTrainingJobServerlessJobConfigEvaluationType>?
  evaluationType;

  final TfArg<String>? evaluatorArn;

  final TfArg<SagemakerTrainingJobServerlessJobConfigJobType> jobType;

  final TfArg<SagemakerTrainingJobServerlessJobConfigPeft>? peft;

  Map<String, Object?> encode() => {
    if (acceptEula != null) 'accept_eula': acceptEula!.toTfJson(),
    'base_model_arn': baseModelArn.toTfJson(),
    if (customizationTechnique != null)
      'customization_technique': customizationTechnique!.toTfJson(),
    if (evaluationType != null) 'evaluation_type': evaluationType!.toTfJson(),
    if (evaluatorArn != null) 'evaluator_arn': evaluatorArn!.toTfJson(),
    'job_type': jobType.toTfJson(),
    if (peft != null) 'peft': peft!.toTfJson(),
  };
}

/// `customization_technique` — derived from the provider schema description.
enum SagemakerTrainingJobServerlessJobConfigCustomizationTechnique
    implements TerraformEnum {
  sft('SFT'),
  dpo('DPO'),
  rlvr('RLVR'),
  rlaif('RLAIF');

  const SagemakerTrainingJobServerlessJobConfigCustomizationTechnique(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `evaluation_type` — derived from the provider schema description.
enum SagemakerTrainingJobServerlessJobConfigEvaluationType
    implements TerraformEnum {
  llmajevaluation('LLMAJEvaluation'),
  customscorerevaluation('CustomScorerEvaluation'),
  benchmarkevaluation('BenchmarkEvaluation');

  const SagemakerTrainingJobServerlessJobConfigEvaluationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `job_type` — derived from the provider schema description.
enum SagemakerTrainingJobServerlessJobConfigJobType implements TerraformEnum {
  finetuning('FineTuning'),
  evaluation('Evaluation');

  const SagemakerTrainingJobServerlessJobConfigJobType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `peft` — derived from the provider schema description.
enum SagemakerTrainingJobServerlessJobConfigPeft implements TerraformEnum {
  lora('LORA');

  const SagemakerTrainingJobServerlessJobConfigPeft(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `session_chaining_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobSessionChainingConfig {
  const SagemakerTrainingJobSessionChainingConfig({
    this.enableSessionTagChaining,
  });

  final TfArg<bool>? enableSessionTagChaining;

  Map<String, Object?> encode() => {
    if (enableSessionTagChaining != null)
      'enable_session_tag_chaining': enableSessionTagChaining!.toTfJson(),
  };
}

/// Typed helper for the `stopping_condition` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobStoppingCondition {
  const SagemakerTrainingJobStoppingCondition({
    this.maxPendingTimeInSeconds,
    this.maxRuntimeInSeconds,
    this.maxWaitTimeInSeconds,
  });

  final TfArg<num>? maxPendingTimeInSeconds;

  final TfArg<num>? maxRuntimeInSeconds;

  final TfArg<num>? maxWaitTimeInSeconds;

  Map<String, Object?> encode() => {
    if (maxPendingTimeInSeconds != null)
      'max_pending_time_in_seconds': maxPendingTimeInSeconds!.toTfJson(),
    if (maxRuntimeInSeconds != null)
      'max_runtime_in_seconds': maxRuntimeInSeconds!.toTfJson(),
    if (maxWaitTimeInSeconds != null)
      'max_wait_time_in_seconds': maxWaitTimeInSeconds!.toTfJson(),
  };
}

/// Typed helper for the `tensor_board_output_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobTensorBoardOutputConfig {
  const SagemakerTrainingJobTensorBoardOutputConfig({
    this.localPath,
    required this.s3OutputPath,
  });

  final TfArg<String>? localPath;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobVpcConfig {
  const SagemakerTrainingJobVpcConfig({
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

/// Factory wrapper for `aws_sagemaker_training_job`.
final class AwsSagemakerTrainingJob extends Resource {
  static const String tfType = 'aws_sagemaker_training_job';

  AwsSagemakerTrainingJob({
    required super.localName,
    TfArg<bool>? deleteModelPackagesOnDestroy,
    TfArg<bool>? deleteVpcEnisOnDestroy,
    TfArg<bool>? enableInterContainerTrafficEncryption,
    TfArg<bool>? enableManagedSpotTraining,
    TfArg<bool>? enableNetworkIsolation,
    TfArg<Map<String, String>>? environment,
    TfArg<Map<String, String>>? hyperParameters,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trainingJobName,
    List<SagemakerTrainingJobAlgorithmSpecification>? algorithmSpecification,
    List<SagemakerTrainingJobCheckpointConfig>? checkpointConfig,
    List<SagemakerTrainingJobDebugHookConfig>? debugHookConfig,
    List<SagemakerTrainingJobDebugRuleConfigurations>? debugRuleConfigurations,
    List<SagemakerTrainingJobExperimentConfig>? experimentConfig,
    List<SagemakerTrainingJobInfraCheckConfig>? infraCheckConfig,
    List<SagemakerTrainingJobInputDataConfig>? inputDataConfig,
    List<SagemakerTrainingJobMlflowConfig>? mlflowConfig,
    List<SagemakerTrainingJobModelPackageConfig>? modelPackageConfig,
    List<SagemakerTrainingJobOutputDataConfig>? outputDataConfig,
    List<SagemakerTrainingJobProfilerConfig>? profilerConfig,
    List<SagemakerTrainingJobProfilerRuleConfigurations>?
    profilerRuleConfigurations,
    List<SagemakerTrainingJobRemoteDebugConfig>? remoteDebugConfig,
    List<SagemakerTrainingJobResourceConfig>? resourceConfig,
    List<SagemakerTrainingJobRetryStrategy>? retryStrategy,
    List<SagemakerTrainingJobServerlessJobConfig>? serverlessJobConfig,
    List<SagemakerTrainingJobSessionChainingConfig>? sessionChainingConfig,
    List<SagemakerTrainingJobStoppingCondition>? stoppingCondition,
    List<SagemakerTrainingJobTensorBoardOutputConfig>? tensorBoardOutputConfig,
    List<SagemakerTrainingJobVpcConfig>? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deleteModelPackagesOnDestroy != null)
             'delete_model_packages_on_destroy': deleteModelPackagesOnDestroy,
           if (deleteVpcEnisOnDestroy != null)
             'delete_vpc_enis_on_destroy': deleteVpcEnisOnDestroy,
           if (enableInterContainerTrafficEncryption != null)
             'enable_inter_container_traffic_encryption':
                 enableInterContainerTrafficEncryption,
           if (enableManagedSpotTraining != null)
             'enable_managed_spot_training': enableManagedSpotTraining,
           if (enableNetworkIsolation != null)
             'enable_network_isolation': enableNetworkIsolation,
           if (environment != null) 'environment': environment,
           if (hyperParameters != null) 'hyper_parameters': hyperParameters,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'training_job_name': trainingJobName,
           if (algorithmSpecification != null)
             'algorithm_specification': TfArg.literal([
               for (final e in algorithmSpecification) e.encode(),
             ]),
           if (checkpointConfig != null)
             'checkpoint_config': TfArg.literal([
               for (final e in checkpointConfig) e.encode(),
             ]),
           if (debugHookConfig != null)
             'debug_hook_config': TfArg.literal([
               for (final e in debugHookConfig) e.encode(),
             ]),
           if (debugRuleConfigurations != null)
             'debug_rule_configurations': TfArg.literal([
               for (final e in debugRuleConfigurations) e.encode(),
             ]),
           if (experimentConfig != null)
             'experiment_config': TfArg.literal([
               for (final e in experimentConfig) e.encode(),
             ]),
           if (infraCheckConfig != null)
             'infra_check_config': TfArg.literal([
               for (final e in infraCheckConfig) e.encode(),
             ]),
           if (inputDataConfig != null)
             'input_data_config': TfArg.literal([
               for (final e in inputDataConfig) e.encode(),
             ]),
           if (mlflowConfig != null)
             'mlflow_config': TfArg.literal([
               for (final e in mlflowConfig) e.encode(),
             ]),
           if (modelPackageConfig != null)
             'model_package_config': TfArg.literal([
               for (final e in modelPackageConfig) e.encode(),
             ]),
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal([
               for (final e in outputDataConfig) e.encode(),
             ]),
           if (profilerConfig != null)
             'profiler_config': TfArg.literal([
               for (final e in profilerConfig) e.encode(),
             ]),
           if (profilerRuleConfigurations != null)
             'profiler_rule_configurations': TfArg.literal([
               for (final e in profilerRuleConfigurations) e.encode(),
             ]),
           if (remoteDebugConfig != null)
             'remote_debug_config': TfArg.literal([
               for (final e in remoteDebugConfig) e.encode(),
             ]),
           if (resourceConfig != null)
             'resource_config': TfArg.literal([
               for (final e in resourceConfig) e.encode(),
             ]),
           if (retryStrategy != null)
             'retry_strategy': TfArg.literal([
               for (final e in retryStrategy) e.encode(),
             ]),
           if (serverlessJobConfig != null)
             'serverless_job_config': TfArg.literal([
               for (final e in serverlessJobConfig) e.encode(),
             ]),
           if (sessionChainingConfig != null)
             'session_chaining_config': TfArg.literal([
               for (final e in sessionChainingConfig) e.encode(),
             ]),
           if (stoppingCondition != null)
             'stopping_condition': TfArg.literal([
               for (final e in stoppingCondition) e.encode(),
             ]),
           if (tensorBoardOutputConfig != null)
             'tensor_board_output_config': TfArg.literal([
               for (final e in tensorBoardOutputConfig) e.encode(),
             ]),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal([
               for (final e in vpcConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerTrainingJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerTrainingJob>`.
  RefTo<AwsSagemakerTrainingJob> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
