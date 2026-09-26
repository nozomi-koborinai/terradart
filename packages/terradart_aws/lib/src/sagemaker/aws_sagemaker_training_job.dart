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

  final TfArg<String>? trainingInputMode;

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

  final TfArg<String>? instanceType;

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

  final TfArg<String>? compressionType;

  final TfArg<String>? contentType;

  final TfArg<String>? inputMode;

  final TfArg<String>? recordWrapperType;

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

  final TfArg<String> fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final TfArg<String> fileSystemType;

  Map<String, Object?> encode() => {
    'directory_path': directoryPath.toTfJson(),
    'file_system_access_mode': fileSystemAccessMode.toTfJson(),
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_type': fileSystemType.toTfJson(),
  };
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

  final TfArg<String>? s3DataDistributionType;

  final TfArg<String> s3DataType;

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

  final TfArg<String>? compressionType;

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
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

  final TfArg<String>? instanceType;

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

  final TfArg<String>? instanceType;

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

  final TfArg<String>? instanceType;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceGroupName != null)
      'instance_group_name': instanceGroupName!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
  };
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

  final TfArg<String>? customizationTechnique;

  final TfArg<String>? evaluationType;

  final TfArg<String>? evaluatorArn;

  final TfArg<String> jobType;

  final TfArg<String>? peft;

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

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
