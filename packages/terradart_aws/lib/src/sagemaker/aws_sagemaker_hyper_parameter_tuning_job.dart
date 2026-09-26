// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_hyper_parameter_tuning_job`.
const Set<String> _awsSagemakerHyperParameterTuningJobSensitive = <String>{};

/// Typed helper for the `autotune` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobAutotune {
  const SagemakerHyperParameterTuningJobAutotune({required this.mode});

  final TfArg<String> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// Typed helper for the `config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfig {
  const SagemakerHyperParameterTuningJobConfig({
    this.randomSeed,
    required this.strategy,
    this.trainingJobEarlyStoppingType,
    this.objective,
    this.parameterRanges,
    this.resourceLimits,
    this.strategyConfig,
    this.tuningJobCompletionCriteria,
  });

  final TfArg<num>? randomSeed;

  final TfArg<String> strategy;

  final TfArg<String>? trainingJobEarlyStoppingType;

  final List<SagemakerHyperParameterTuningJobConfigObjective>? objective;

  final List<SagemakerHyperParameterTuningJobConfigParameterRanges>?
  parameterRanges;

  final List<SagemakerHyperParameterTuningJobConfigResourceLimits>?
  resourceLimits;

  final List<SagemakerHyperParameterTuningJobConfigStrategyConfig>?
  strategyConfig;

  final List<SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteria>?
  tuningJobCompletionCriteria;

  Map<String, Object?> encode() => {
    if (randomSeed != null) 'random_seed': randomSeed!.toTfJson(),
    'strategy': strategy.toTfJson(),
    if (trainingJobEarlyStoppingType != null)
      'training_job_early_stopping_type': trainingJobEarlyStoppingType!
          .toTfJson(),
    if (objective != null)
      'objective': [for (final e in objective!) e.encode()],
    if (parameterRanges != null)
      'parameter_ranges': [for (final e in parameterRanges!) e.encode()],
    if (resourceLimits != null)
      'resource_limits': [for (final e in resourceLimits!) e.encode()],
    if (strategyConfig != null)
      'strategy_config': [for (final e in strategyConfig!) e.encode()],
    if (tuningJobCompletionCriteria != null)
      'tuning_job_completion_criteria': [
        for (final e in tuningJobCompletionCriteria!) e.encode(),
      ],
  };
}

/// Typed helper for the `config.objective` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigObjective {
  const SagemakerHyperParameterTuningJobConfigObjective({
    required this.metricName,
    required this.type,
  });

  final TfArg<String> metricName;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `config.parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigParameterRanges {
  const SagemakerHyperParameterTuningJobConfigParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  final List<
    SagemakerHyperParameterTuningJobConfigParameterRangesAutoParameters
  >?
  autoParameters;

  final List<
    SagemakerHyperParameterTuningJobConfigParameterRangesCategoricalParameterRanges
  >?
  categoricalParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobConfigParameterRangesContinuousParameterRanges
  >?
  continuousParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobConfigParameterRangesIntegerParameterRanges
  >?
  integerParameterRanges;

  Map<String, Object?> encode() => {
    if (autoParameters != null)
      'auto_parameters': [for (final e in autoParameters!) e.encode()],
    if (categoricalParameterRanges != null)
      'categorical_parameter_ranges': [
        for (final e in categoricalParameterRanges!) e.encode(),
      ],
    if (continuousParameterRanges != null)
      'continuous_parameter_ranges': [
        for (final e in continuousParameterRanges!) e.encode(),
      ],
    if (integerParameterRanges != null)
      'integer_parameter_ranges': [
        for (final e in integerParameterRanges!) e.encode(),
      ],
  };
}

/// Typed helper for the `config.parameter_ranges.auto_parameters` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigParameterRangesAutoParameters {
  const SagemakerHyperParameterTuningJobConfigParameterRangesAutoParameters({
    required this.name,
    required this.valueHint,
  });

  final TfArg<String> name;

  final TfArg<String> valueHint;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_hint': valueHint.toTfJson(),
  };
}

/// Typed helper for the `config.parameter_ranges.categorical_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigParameterRangesCategoricalParameterRanges {
  const SagemakerHyperParameterTuningJobConfigParameterRangesCategoricalParameterRanges({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `config.parameter_ranges.continuous_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigParameterRangesContinuousParameterRanges {
  const SagemakerHyperParameterTuningJobConfigParameterRangesContinuousParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final TfArg<String>? scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// Typed helper for the `config.parameter_ranges.integer_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigParameterRangesIntegerParameterRanges {
  const SagemakerHyperParameterTuningJobConfigParameterRangesIntegerParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final TfArg<String>? scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// Typed helper for the `config.resource_limits` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigResourceLimits {
  const SagemakerHyperParameterTuningJobConfigResourceLimits({
    this.maxNumberOfTrainingJobs,
    required this.maxParallelTrainingJobs,
    this.maxRuntimeInSeconds,
  });

  final TfArg<num>? maxNumberOfTrainingJobs;

  final TfArg<num> maxParallelTrainingJobs;

  final TfArg<num>? maxRuntimeInSeconds;

  Map<String, Object?> encode() => {
    if (maxNumberOfTrainingJobs != null)
      'max_number_of_training_jobs': maxNumberOfTrainingJobs!.toTfJson(),
    'max_parallel_training_jobs': maxParallelTrainingJobs.toTfJson(),
    if (maxRuntimeInSeconds != null)
      'max_runtime_in_seconds': maxRuntimeInSeconds!.toTfJson(),
  };
}

/// Typed helper for the `config.strategy_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigStrategyConfig {
  const SagemakerHyperParameterTuningJobConfigStrategyConfig({
    this.hyperbandStrategyConfig,
  });

  final List<
    SagemakerHyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig
  >?
  hyperbandStrategyConfig;

  Map<String, Object?> encode() => {
    if (hyperbandStrategyConfig != null)
      'hyperband_strategy_config': [
        for (final e in hyperbandStrategyConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `config.strategy_config.hyperband_strategy_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig {
  const SagemakerHyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig({
    this.maxResource,
    this.minResource,
  });

  final TfArg<num>? maxResource;

  final TfArg<num>? minResource;

  Map<String, Object?> encode() => {
    if (maxResource != null) 'max_resource': maxResource!.toTfJson(),
    if (minResource != null) 'min_resource': minResource!.toTfJson(),
  };
}

/// Typed helper for the `config.tuning_job_completion_criteria` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteria {
  const SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteria({
    this.targetObjectiveMetricValue,
    this.bestObjectiveNotImproving,
    this.convergenceDetected,
  });

  final TfArg<num>? targetObjectiveMetricValue;

  final List<
    SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving
  >?
  bestObjectiveNotImproving;

  final List<
    SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected
  >?
  convergenceDetected;

  Map<String, Object?> encode() => {
    if (targetObjectiveMetricValue != null)
      'target_objective_metric_value': targetObjectiveMetricValue!.toTfJson(),
    if (bestObjectiveNotImproving != null)
      'best_objective_not_improving': [
        for (final e in bestObjectiveNotImproving!) e.encode(),
      ],
    if (convergenceDetected != null)
      'convergence_detected': [
        for (final e in convergenceDetected!) e.encode(),
      ],
  };
}

/// Typed helper for the `config.tuning_job_completion_criteria.best_objective_not_improving` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving {
  const SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving({
    this.maxNumberOfTrainingJobsNotImproving,
  });

  final TfArg<num>? maxNumberOfTrainingJobsNotImproving;

  Map<String, Object?> encode() => {
    if (maxNumberOfTrainingJobsNotImproving != null)
      'max_number_of_training_jobs_not_improving':
          maxNumberOfTrainingJobsNotImproving!.toTfJson(),
  };
}

/// Typed helper for the `config.tuning_job_completion_criteria.convergence_detected` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected {
  const SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetected({
    this.completeOnConvergence,
  });

  final TfArg<String>? completeOnConvergence;

  Map<String, Object?> encode() => {
    if (completeOnConvergence != null)
      'complete_on_convergence': completeOnConvergence!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinition {
  const SagemakerHyperParameterTuningJobTrainingJobDefinition({
    this.definitionName,
    this.enableInterContainerTrafficEncryption,
    this.enableManagedSpotTraining,
    this.enableNetworkIsolation,
    this.environment,
    this.retryStrategy,
    required this.roleArn,
    this.staticHyperParameters,
    this.algorithmSpecification,
    this.checkpointConfig,
    this.hyperParameterRanges,
    this.hyperParameterTuningResourceConfig,
    this.inputDataConfig,
    this.outputDataConfig,
    this.resourceConfig,
    this.stoppingCondition,
    this.tuningObjective,
    this.vpcConfig,
  });

  final TfArg<String>? definitionName;

  final TfArg<bool>? enableInterContainerTrafficEncryption;

  final TfArg<bool>? enableManagedSpotTraining;

  final TfArg<bool>? enableNetworkIsolation;

  final TfArg<Map<String, String>>? environment;

  final TfArg<List<Object?>>? retryStrategy;

  final TfArg<String> roleArn;

  final TfArg<Map<String, String>>? staticHyperParameters;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification
  >?
  algorithmSpecification;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionCheckpointConfig
  >?
  checkpointConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges
  >?
  hyperParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig
  >?
  hyperParameterTuningResourceConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfig
  >?
  inputDataConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfig
  >?
  outputDataConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfig
  >?
  resourceConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionStoppingCondition
  >?
  stoppingCondition;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionTuningObjective
  >?
  tuningObjective;

  final List<SagemakerHyperParameterTuningJobTrainingJobDefinitionVpcConfig>?
  vpcConfig;

  Map<String, Object?> encode() => {
    if (definitionName != null) 'definition_name': definitionName!.toTfJson(),
    if (enableInterContainerTrafficEncryption != null)
      'enable_inter_container_traffic_encryption':
          enableInterContainerTrafficEncryption!.toTfJson(),
    if (enableManagedSpotTraining != null)
      'enable_managed_spot_training': enableManagedSpotTraining!.toTfJson(),
    if (enableNetworkIsolation != null)
      'enable_network_isolation': enableNetworkIsolation!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (retryStrategy != null) 'retry_strategy': retryStrategy!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (staticHyperParameters != null)
      'static_hyper_parameters': staticHyperParameters!.toTfJson(),
    if (algorithmSpecification != null)
      'algorithm_specification': [
        for (final e in algorithmSpecification!) e.encode(),
      ],
    if (checkpointConfig != null)
      'checkpoint_config': [for (final e in checkpointConfig!) e.encode()],
    if (hyperParameterRanges != null)
      'hyper_parameter_ranges': [
        for (final e in hyperParameterRanges!) e.encode(),
      ],
    if (hyperParameterTuningResourceConfig != null)
      'hyper_parameter_tuning_resource_config': [
        for (final e in hyperParameterTuningResourceConfig!) e.encode(),
      ],
    if (inputDataConfig != null)
      'input_data_config': [for (final e in inputDataConfig!) e.encode()],
    if (outputDataConfig != null)
      'output_data_config': [for (final e in outputDataConfig!) e.encode()],
    if (resourceConfig != null)
      'resource_config': [for (final e in resourceConfig!) e.encode()],
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
    if (tuningObjective != null)
      'tuning_objective': [for (final e in tuningObjective!) e.encode()],
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// Typed helper for the `training_job_definition.algorithm_specification` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification({
    this.algorithmName,
    this.trainingImage,
    required this.trainingInputMode,
    this.metricDefinitions,
  });

  final TfArg<String>? algorithmName;

  final TfArg<String>? trainingImage;

  final TfArg<String> trainingInputMode;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinitions
  >?
  metricDefinitions;

  Map<String, Object?> encode() => {
    if (algorithmName != null) 'algorithm_name': algorithmName!.toTfJson(),
    if (trainingImage != null) 'training_image': trainingImage!.toTfJson(),
    'training_input_mode': trainingInputMode.toTfJson(),
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
  };
}

/// Typed helper for the `training_job_definition.algorithm_specification.metric_definitions` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinitions {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinitions({
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

/// Typed helper for the `training_job_definition.checkpoint_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionCheckpointConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionCheckpointConfig({
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

/// Typed helper for the `training_job_definition.hyper_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameters
  >?
  autoParameters;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRanges
  >?
  categoricalParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRanges
  >?
  continuousParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRanges
  >?
  integerParameterRanges;

  Map<String, Object?> encode() => {
    if (autoParameters != null)
      'auto_parameters': [for (final e in autoParameters!) e.encode()],
    if (categoricalParameterRanges != null)
      'categorical_parameter_ranges': [
        for (final e in categoricalParameterRanges!) e.encode(),
      ],
    if (continuousParameterRanges != null)
      'continuous_parameter_ranges': [
        for (final e in continuousParameterRanges!) e.encode(),
      ],
    if (integerParameterRanges != null)
      'integer_parameter_ranges': [
        for (final e in integerParameterRanges!) e.encode(),
      ],
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_ranges.auto_parameters` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameters {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameters({
    required this.name,
    required this.valueHint,
  });

  final TfArg<String> name;

  final TfArg<String> valueHint;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_hint': valueHint.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_ranges.categorical_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRanges({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_ranges.continuous_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final TfArg<String>? scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_ranges.integer_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final TfArg<String>? scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_tuning_resource_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig({
    this.allocationStrategy,
    this.instanceCount,
    this.instanceType,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
    this.instanceConfigs,
  });

  final TfArg<String>? allocationStrategy;

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceType;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfigs
  >?
  instanceConfigs;

  Map<String, Object?> encode() => {
    if (allocationStrategy != null)
      'allocation_strategy': allocationStrategy!.toTfJson(),
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
    if (instanceConfigs != null)
      'instance_configs': [for (final e in instanceConfigs!) e.encode()],
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_tuning_resource_config.instance_configs` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfigs {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfigs({
    this.instanceCount,
    this.instanceType,
    this.volumeSizeInGb,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceType;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.input_data_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfig({
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

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource
  >?
  dataSource;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig
  >?
  shuffleConfig;

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

/// Typed helper for the `training_job_definition.input_data_config.data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource
  >?
  fileSystemDataSource;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource
  >?
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

/// Typed helper for the `training_job_definition.input_data_config.data_source.file_system_data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource({
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

/// Typed helper for the `training_job_definition.input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource({
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
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig
  >?
  hubAccessConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig
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

/// Typed helper for the `training_job_definition.input_data_config.data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig({
    required this.hubContentArn,
  });

  final TfArg<String> hubContentArn;

  Map<String, Object?> encode() => {
    'hub_content_arn': hubContentArn.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.input_data_config.data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `training_job_definition.input_data_config.shuffle_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig({
    required this.seed,
  });

  final TfArg<num> seed;

  Map<String, Object?> encode() => {'seed': seed.toTfJson()};
}

/// Typed helper for the `training_job_definition.output_data_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfig({
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

/// Typed helper for the `training_job_definition.resource_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfig({
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

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroups
  >?
  instanceGroups;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig
  >?
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

/// Typed helper for the `training_job_definition.resource_config.instance_groups` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroups {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroups({
    required this.instanceCount,
    required this.instanceGroupName,
    required this.instanceType,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> instanceGroupName;

  final TfArg<String> instanceType;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_group_name': instanceGroupName.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.resource_config.instance_placement_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecifications
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

/// Typed helper for the `training_job_definition.resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecifications {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecifications({
    required this.instanceCount,
    this.ultraServerId,
  });

  final TfArg<num> instanceCount;

  final TfArg<String>? ultraServerId;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    if (ultraServerId != null) 'ultra_server_id': ultraServerId!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.stopping_condition` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionStoppingCondition {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionStoppingCondition({
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

/// Typed helper for the `training_job_definition.tuning_objective` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionTuningObjective {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionTuningObjective({
    required this.metricName,
    required this.type,
  });

  final TfArg<String> metricName;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.vpc_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionVpcConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionVpcConfig({
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

/// Typed helper for the `training_job_definitions` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitions {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitions({
    this.definitionName,
    this.enableInterContainerTrafficEncryption,
    this.enableManagedSpotTraining,
    this.enableNetworkIsolation,
    this.environment,
    this.retryStrategy,
    required this.roleArn,
    this.staticHyperParameters,
    this.algorithmSpecification,
    this.checkpointConfig,
    this.hyperParameterRanges,
    this.hyperParameterTuningResourceConfig,
    this.inputDataConfig,
    this.outputDataConfig,
    this.resourceConfig,
    this.stoppingCondition,
    this.tuningObjective,
    this.vpcConfig,
  });

  final TfArg<String>? definitionName;

  final TfArg<bool>? enableInterContainerTrafficEncryption;

  final TfArg<bool>? enableManagedSpotTraining;

  final TfArg<bool>? enableNetworkIsolation;

  final TfArg<Map<String, String>>? environment;

  final TfArg<List<Object?>>? retryStrategy;

  final TfArg<String> roleArn;

  final TfArg<Map<String, String>>? staticHyperParameters;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecification
  >?
  algorithmSpecification;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsCheckpointConfig
  >?
  checkpointConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRanges
  >?
  hyperParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfig
  >?
  hyperParameterTuningResourceConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfig
  >?
  inputDataConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfig
  >?
  outputDataConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfig
  >?
  resourceConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsStoppingCondition
  >?
  stoppingCondition;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsTuningObjective
  >?
  tuningObjective;

  final List<SagemakerHyperParameterTuningJobTrainingJobDefinitionsVpcConfig>?
  vpcConfig;

  Map<String, Object?> encode() => {
    if (definitionName != null) 'definition_name': definitionName!.toTfJson(),
    if (enableInterContainerTrafficEncryption != null)
      'enable_inter_container_traffic_encryption':
          enableInterContainerTrafficEncryption!.toTfJson(),
    if (enableManagedSpotTraining != null)
      'enable_managed_spot_training': enableManagedSpotTraining!.toTfJson(),
    if (enableNetworkIsolation != null)
      'enable_network_isolation': enableNetworkIsolation!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (retryStrategy != null) 'retry_strategy': retryStrategy!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (staticHyperParameters != null)
      'static_hyper_parameters': staticHyperParameters!.toTfJson(),
    if (algorithmSpecification != null)
      'algorithm_specification': [
        for (final e in algorithmSpecification!) e.encode(),
      ],
    if (checkpointConfig != null)
      'checkpoint_config': [for (final e in checkpointConfig!) e.encode()],
    if (hyperParameterRanges != null)
      'hyper_parameter_ranges': [
        for (final e in hyperParameterRanges!) e.encode(),
      ],
    if (hyperParameterTuningResourceConfig != null)
      'hyper_parameter_tuning_resource_config': [
        for (final e in hyperParameterTuningResourceConfig!) e.encode(),
      ],
    if (inputDataConfig != null)
      'input_data_config': [for (final e in inputDataConfig!) e.encode()],
    if (outputDataConfig != null)
      'output_data_config': [for (final e in outputDataConfig!) e.encode()],
    if (resourceConfig != null)
      'resource_config': [for (final e in resourceConfig!) e.encode()],
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
    if (tuningObjective != null)
      'tuning_objective': [for (final e in tuningObjective!) e.encode()],
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// Typed helper for the `training_job_definitions.algorithm_specification` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecification {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecification({
    this.algorithmName,
    this.trainingImage,
    required this.trainingInputMode,
    this.metricDefinitions,
  });

  final TfArg<String>? algorithmName;

  final TfArg<String>? trainingImage;

  final TfArg<String> trainingInputMode;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationMetricDefinitions
  >?
  metricDefinitions;

  Map<String, Object?> encode() => {
    if (algorithmName != null) 'algorithm_name': algorithmName!.toTfJson(),
    if (trainingImage != null) 'training_image': trainingImage!.toTfJson(),
    'training_input_mode': trainingInputMode.toTfJson(),
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
  };
}

/// Typed helper for the `training_job_definitions.algorithm_specification.metric_definitions` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationMetricDefinitions {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationMetricDefinitions({
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

/// Typed helper for the `training_job_definitions.checkpoint_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsCheckpointConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsCheckpointConfig({
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

/// Typed helper for the `training_job_definitions.hyper_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesAutoParameters
  >?
  autoParameters;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesCategoricalParameterRanges
  >?
  categoricalParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesContinuousParameterRanges
  >?
  continuousParameterRanges;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesIntegerParameterRanges
  >?
  integerParameterRanges;

  Map<String, Object?> encode() => {
    if (autoParameters != null)
      'auto_parameters': [for (final e in autoParameters!) e.encode()],
    if (categoricalParameterRanges != null)
      'categorical_parameter_ranges': [
        for (final e in categoricalParameterRanges!) e.encode(),
      ],
    if (continuousParameterRanges != null)
      'continuous_parameter_ranges': [
        for (final e in continuousParameterRanges!) e.encode(),
      ],
    if (integerParameterRanges != null)
      'integer_parameter_ranges': [
        for (final e in integerParameterRanges!) e.encode(),
      ],
  };
}

/// Typed helper for the `training_job_definitions.hyper_parameter_ranges.auto_parameters` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesAutoParameters {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesAutoParameters({
    required this.name,
    required this.valueHint,
  });

  final TfArg<String> name;

  final TfArg<String> valueHint;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_hint': valueHint.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.hyper_parameter_ranges.categorical_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesCategoricalParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesCategoricalParameterRanges({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.hyper_parameter_ranges.continuous_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesContinuousParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesContinuousParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final TfArg<String>? scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.hyper_parameter_ranges.integer_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesIntegerParameterRanges {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesIntegerParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final TfArg<String>? scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.hyper_parameter_tuning_resource_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfig({
    this.allocationStrategy,
    this.instanceCount,
    this.instanceType,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
    this.instanceConfigs,
  });

  final TfArg<String>? allocationStrategy;

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceType;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceConfigs
  >?
  instanceConfigs;

  Map<String, Object?> encode() => {
    if (allocationStrategy != null)
      'allocation_strategy': allocationStrategy!.toTfJson(),
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
    if (instanceConfigs != null)
      'instance_configs': [for (final e in instanceConfigs!) e.encode()],
  };
}

/// Typed helper for the `training_job_definitions.hyper_parameter_tuning_resource_config.instance_configs` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceConfigs {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceConfigs({
    this.instanceCount,
    this.instanceType,
    this.volumeSizeInGb,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceType;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.input_data_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfig({
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

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSource
  >?
  dataSource;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigShuffleConfig
  >?
  shuffleConfig;

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

/// Typed helper for the `training_job_definitions.input_data_config.data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSource {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSource
  >?
  fileSystemDataSource;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSource
  >?
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

/// Typed helper for the `training_job_definitions.input_data_config.data_source.file_system_data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSource {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSource({
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

/// Typed helper for the `training_job_definitions.input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSource {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSource({
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
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceHubAccessConfig
  >?
  hubAccessConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceModelAccessConfig
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

/// Typed helper for the `training_job_definitions.input_data_config.data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceHubAccessConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceHubAccessConfig({
    required this.hubContentArn,
  });

  final TfArg<String> hubContentArn;

  Map<String, Object?> encode() => {
    'hub_content_arn': hubContentArn.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.input_data_config.data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `training_job_definitions.input_data_config.shuffle_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigShuffleConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigShuffleConfig({
    required this.seed,
  });

  final TfArg<num> seed;

  Map<String, Object?> encode() => {'seed': seed.toTfJson()};
}

/// Typed helper for the `training_job_definitions.output_data_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfig({
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

/// Typed helper for the `training_job_definitions.resource_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfig({
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

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceGroups
  >?
  instanceGroups;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstancePlacementConfig
  >?
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

/// Typed helper for the `training_job_definitions.resource_config.instance_groups` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceGroups {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceGroups({
    required this.instanceCount,
    required this.instanceGroupName,
    required this.instanceType,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> instanceGroupName;

  final TfArg<String> instanceType;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_group_name': instanceGroupName.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.resource_config.instance_placement_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstancePlacementConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstancePlacementConfigPlacementSpecifications
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

/// Typed helper for the `training_job_definitions.resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstancePlacementConfigPlacementSpecifications {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstancePlacementConfigPlacementSpecifications({
    required this.instanceCount,
    this.ultraServerId,
  });

  final TfArg<num> instanceCount;

  final TfArg<String>? ultraServerId;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    if (ultraServerId != null) 'ultra_server_id': ultraServerId!.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.stopping_condition` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsStoppingCondition {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsStoppingCondition({
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

/// Typed helper for the `training_job_definitions.tuning_objective` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsTuningObjective {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsTuningObjective({
    required this.metricName,
    required this.type,
  });

  final TfArg<String> metricName;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `training_job_definitions.vpc_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsVpcConfig {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsVpcConfig({
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

/// Typed helper for the `warm_start_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobWarmStartConfig {
  const SagemakerHyperParameterTuningJobWarmStartConfig({
    this.warmStartType,
    this.parentHyperParameterTuningJobs,
  });

  final TfArg<String>? warmStartType;

  final List<
    SagemakerHyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJobs
  >?
  parentHyperParameterTuningJobs;

  Map<String, Object?> encode() => {
    if (warmStartType != null) 'warm_start_type': warmStartType!.toTfJson(),
    if (parentHyperParameterTuningJobs != null)
      'parent_hyper_parameter_tuning_jobs': [
        for (final e in parentHyperParameterTuningJobs!) e.encode(),
      ],
  };
}

/// Typed helper for the `warm_start_config.parent_hyper_parameter_tuning_jobs` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJobs {
  const SagemakerHyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJobs({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_sagemaker_hyper_parameter_tuning_job`.
final class AwsSagemakerHyperParameterTuningJob extends Resource {
  static const String tfType = 'aws_sagemaker_hyper_parameter_tuning_job';

  AwsSagemakerHyperParameterTuningJob({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SagemakerHyperParameterTuningJobAutotune>? autotune,
    List<SagemakerHyperParameterTuningJobConfig>? config,
    List<SagemakerHyperParameterTuningJobTrainingJobDefinition>?
    trainingJobDefinition,
    List<SagemakerHyperParameterTuningJobTrainingJobDefinitions>?
    trainingJobDefinitions,
    List<SagemakerHyperParameterTuningJobWarmStartConfig>? warmStartConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (autotune != null)
             'autotune': TfArg.literal([for (final e in autotune) e.encode()]),
           if (config != null)
             'config': TfArg.literal([for (final e in config) e.encode()]),
           if (trainingJobDefinition != null)
             'training_job_definition': TfArg.literal([
               for (final e in trainingJobDefinition) e.encode(),
             ]),
           if (trainingJobDefinitions != null)
             'training_job_definitions': TfArg.literal([
               for (final e in trainingJobDefinitions) e.encode(),
             ]),
           if (warmStartConfig != null)
             'warm_start_config': TfArg.literal([
               for (final e in warmStartConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerHyperParameterTuningJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
