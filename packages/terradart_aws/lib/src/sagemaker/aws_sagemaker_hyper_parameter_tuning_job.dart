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

  final TfArg<SagemakerHyperParameterTuningJobAutotuneMode> mode;

  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobAutotuneMode implements TerraformEnum {
  enabled('Enabled');

  const SagemakerHyperParameterTuningJobAutotuneMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerHyperParameterTuningJobConfigStrategy> strategy;

  final TfArg<
    SagemakerHyperParameterTuningJobConfigTrainingJobEarlyStoppingType
  >?
  trainingJobEarlyStoppingType;

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

/// `strategy` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobConfigStrategy implements TerraformEnum {
  bayesian('Bayesian'),
  random('Random'),
  hyperband('Hyperband'),
  grid('Grid');

  const SagemakerHyperParameterTuningJobConfigStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `training_job_early_stopping_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobConfigTrainingJobEarlyStoppingType
    implements TerraformEnum {
  off('Off'),
  auto('Auto');

  const SagemakerHyperParameterTuningJobConfigTrainingJobEarlyStoppingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<SagemakerHyperParameterTuningJobConfigObjectiveType> type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobConfigObjectiveType
    implements TerraformEnum {
  maximize('Maximize'),
  minimize('Minimize');

  const SagemakerHyperParameterTuningJobConfigObjectiveType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobConfigParameterRangesContinuousParameterRangesScalingType
  >?
  scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobConfigParameterRangesContinuousParameterRangesScalingType
    implements TerraformEnum {
  auto('Auto'),
  linear('Linear'),
  logarithmic('Logarithmic'),
  reverselogarithmic('ReverseLogarithmic');

  const SagemakerHyperParameterTuningJobConfigParameterRangesContinuousParameterRangesScalingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobConfigParameterRangesIntegerParameterRangesScalingType
  >?
  scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobConfigParameterRangesIntegerParameterRangesScalingType
    implements TerraformEnum {
  auto('Auto'),
  linear('Linear'),
  logarithmic('Logarithmic'),
  reverselogarithmic('ReverseLogarithmic');

  const SagemakerHyperParameterTuningJobConfigParameterRangesIntegerParameterRangesScalingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetectedCompleteOnConvergence
  >?
  completeOnConvergence;

  Map<String, Object?> encode() => {
    if (completeOnConvergence != null)
      'complete_on_convergence': completeOnConvergence!.toTfJson(),
  };
}

/// `complete_on_convergence` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetectedCompleteOnConvergence
    implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const SagemakerHyperParameterTuningJobConfigTuningJobCompletionCriteriaConvergenceDetectedCompleteOnConvergence(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    this.resources,
    this.inputDataConfig,
    this.outputDataConfig,
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

  final SagemakerHyperParameterTuningJobTrainingJobDefinitionResources?
  resources;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfig
  >?
  inputDataConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfig
  >?
  outputDataConfig;

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
    ...?resources?.encode(),
    if (inputDataConfig != null)
      'input_data_config': [for (final e in inputDataConfig!) e.encode()],
    if (outputDataConfig != null)
      'output_data_config': [for (final e in outputDataConfig!) e.encode()],
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
    if (tuningObjective != null)
      'tuning_objective': [for (final e in tuningObjective!) e.encode()],
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// At most one of `hyper_parameter_tuning_resource_config`, `resource_config` on the `training_job_definition` block of `aws_sagemaker_hyper_parameter_tuning_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hyperParameterTuningResourceConfig(...)`.
sealed class SagemakerHyperParameterTuningJobTrainingJobDefinitionResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResources();

  /// Sets `hyper_parameter_tuning_resource_config`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionResources.hyperParameterTuningResourceConfig(
    List<
      SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig
    >
    hyperParameterTuningResourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesHyperParameterTuningResourceConfig;

  /// Sets `resource_config`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionResources.resourceConfig(
    List<SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfig>
    resourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesResourceConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionResources.hyperParameterTuningResourceConfig] choice: sets `hyper_parameter_tuning_resource_config`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesHyperParameterTuningResourceConfig
    extends SagemakerHyperParameterTuningJobTrainingJobDefinitionResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesHyperParameterTuningResourceConfig(
    this.hyperParameterTuningResourceConfig,
  );

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig
  >
  hyperParameterTuningResourceConfig;

  @override
  String get blockKey => 'hyper_parameter_tuning_resource_config';

  @override
  Map<String, Object?> encode() => {
    'hyper_parameter_tuning_resource_config': [
      for (final e in hyperParameterTuningResourceConfig) e.encode(),
    ],
  };
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionResources.resourceConfig] choice: sets `resource_config`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesResourceConfig
    extends SagemakerHyperParameterTuningJobTrainingJobDefinitionResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesResourceConfig(
    this.resourceConfig,
  );

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfig
  >
  resourceConfig;

  @override
  String get blockKey => 'resource_config';

  @override
  Map<String, Object?> encode() => {
    'resource_config': [for (final e in resourceConfig) e.encode()],
  };
}

/// Typed helper for the `training_job_definition.algorithm_specification` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification({
    this.algorithm,
    required this.trainingInputMode,
    this.metricDefinitions,
  });

  final SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm?
  algorithm;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationTrainingInputMode
  >
  trainingInputMode;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinitions
  >?
  metricDefinitions;

  Map<String, Object?> encode() => {
    ...?algorithm?.encode(),
    'training_input_mode': trainingInputMode.toTfJson(),
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
  };
}

/// At most one of `algorithm_name`, `training_image` on the `training_job_definition.algorithm_specification` block of `aws_sagemaker_hyper_parameter_tuning_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.algorithmName(...)`.
sealed class SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm();

  /// Sets `algorithm_name`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm.algorithmName(
    TfArg<String> algorithmName,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithmAlgorithmName;

  /// Sets `training_image`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm.trainingImage(
    TfArg<String> trainingImage,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithmTrainingImage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm.algorithmName] choice: sets `algorithm_name`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithmAlgorithmName
    extends
        SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithmAlgorithmName(
    this.algorithmName,
  );

  final TfArg<String> algorithmName;

  @override
  String get blockKey => 'algorithm_name';

  @override
  Map<String, Object?> encode() => {'algorithm_name': algorithmName.toTfJson()};
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm.trainingImage] choice: sets `training_image`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithmTrainingImage
    extends
        SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithm {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationAlgorithmTrainingImage(
    this.trainingImage,
  );

  final TfArg<String> trainingImage;

  @override
  String get blockKey => 'training_image';

  @override
  Map<String, Object?> encode() => {'training_image': trainingImage.toTfJson()};
}

/// `training_input_mode` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationTrainingInputMode
    implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationTrainingInputMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRangesScalingType
  >?
  scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRangesScalingType
    implements TerraformEnum {
  auto('Auto'),
  linear('Linear'),
  logarithmic('Logarithmic'),
  reverselogarithmic('ReverseLogarithmic');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRangesScalingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRangesScalingType
  >?
  scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRangesScalingType
    implements TerraformEnum {
  auto('Auto'),
  linear('Linear'),
  logarithmic('Logarithmic'),
  reverselogarithmic('ReverseLogarithmic');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRangesScalingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigAllocationStrategy
  >?
  allocationStrategy;

  final TfArg<num>? instanceCount;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceType
  >?
  instanceType;

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

/// `allocation_strategy` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigAllocationStrategy
    implements TerraformEnum {
  prioritized('Prioritized');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigAllocationStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfigsInstanceType
  >?
  instanceType;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfigsInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfigsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigCompressionType
  >?
  compressionType;

  final TfArg<String>? contentType;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigInputMode
  >?
  inputMode;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigRecordWrapperType
  >?
  recordWrapperType;

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

/// `compression_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigCompressionType
    implements TerraformEnum {
  none('None'),
  gzip('Gzip');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigCompressionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `input_mode` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigInputMode
    implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigInputMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `record_wrapper_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigRecordWrapperType
    implements TerraformEnum {
  none('None'),
  recordio('RecordIO');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigRecordWrapperType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode
  >
  fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSourceFileSystemType
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
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode
    implements TerraformEnum {
  rw('rw'),
  ro('ro');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `file_system_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSourceFileSystemType
    implements TerraformEnum {
  efs('EFS'),
  fsxlustre('FSxLustre');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSourceFileSystemType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceS3DataDistributionType
  >?
  s3DataDistributionType;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceS3DataType
  >
  s3DataType;

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

/// `s3_data_distribution_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceS3DataDistributionType
    implements TerraformEnum {
  fullyreplicated('FullyReplicated'),
  shardedbys3key('ShardedByS3Key');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceS3DataDistributionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_data_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceS3DataType
    implements TerraformEnum {
  manifestfile('ManifestFile'),
  s3prefix('S3Prefix'),
  augmentedmanifestfile('AugmentedManifestFile'),
  converse('Converse');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceS3DataType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfigCompressionType
  >?
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
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfigCompressionType
    implements TerraformEnum {
  gzip('GZIP'),
  none('NONE');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionOutputDataConfigCompressionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceType
  >?
  instanceType;

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

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroupsInstanceType
  >
  instanceType;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_group_name': instanceGroupName.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroupsInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroupsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionTuningObjectiveType
  >
  type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionTuningObjectiveType
    implements TerraformEnum {
  maximize('Maximize'),
  minimize('Minimize');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionTuningObjectiveType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    this.resources,
    this.inputDataConfig,
    this.outputDataConfig,
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

  final SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources?
  resources;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfig
  >?
  inputDataConfig;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfig
  >?
  outputDataConfig;

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
    ...?resources?.encode(),
    if (inputDataConfig != null)
      'input_data_config': [for (final e in inputDataConfig!) e.encode()],
    if (outputDataConfig != null)
      'output_data_config': [for (final e in outputDataConfig!) e.encode()],
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
    if (tuningObjective != null)
      'tuning_objective': [for (final e in tuningObjective!) e.encode()],
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// At most one of `hyper_parameter_tuning_resource_config`, `resource_config` on the `training_job_definitions` block of `aws_sagemaker_hyper_parameter_tuning_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hyperParameterTuningResourceConfig(...)`.
sealed class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources();

  /// Sets `hyper_parameter_tuning_resource_config`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources.hyperParameterTuningResourceConfig(
    List<
      SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfig
    >
    hyperParameterTuningResourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesHyperParameterTuningResourceConfig;

  /// Sets `resource_config`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources.resourceConfig(
    List<SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfig>
    resourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesResourceConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources.hyperParameterTuningResourceConfig] choice: sets `hyper_parameter_tuning_resource_config`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesHyperParameterTuningResourceConfig
    extends SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesHyperParameterTuningResourceConfig(
    this.hyperParameterTuningResourceConfig,
  );

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfig
  >
  hyperParameterTuningResourceConfig;

  @override
  String get blockKey => 'hyper_parameter_tuning_resource_config';

  @override
  Map<String, Object?> encode() => {
    'hyper_parameter_tuning_resource_config': [
      for (final e in hyperParameterTuningResourceConfig) e.encode(),
    ],
  };
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources.resourceConfig] choice: sets `resource_config`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesResourceConfig
    extends SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesResourceConfig(
    this.resourceConfig,
  );

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfig
  >
  resourceConfig;

  @override
  String get blockKey => 'resource_config';

  @override
  Map<String, Object?> encode() => {
    'resource_config': [for (final e in resourceConfig) e.encode()],
  };
}

/// Typed helper for the `training_job_definitions.algorithm_specification` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecification {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecification({
    this.algorithm,
    required this.trainingInputMode,
    this.metricDefinitions,
  });

  final SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm?
  algorithm;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationTrainingInputMode
  >
  trainingInputMode;

  final List<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationMetricDefinitions
  >?
  metricDefinitions;

  Map<String, Object?> encode() => {
    ...?algorithm?.encode(),
    'training_input_mode': trainingInputMode.toTfJson(),
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
  };
}

/// At most one of `algorithm_name`, `training_image` on the `training_job_definitions.algorithm_specification` block of `aws_sagemaker_hyper_parameter_tuning_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.algorithmName(...)`.
sealed class SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm();

  /// Sets `algorithm_name`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm.algorithmName(
    TfArg<String> algorithmName,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithmAlgorithmName;

  /// Sets `training_image`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm.trainingImage(
    TfArg<String> trainingImage,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithmTrainingImage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm.algorithmName] choice: sets `algorithm_name`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithmAlgorithmName
    extends
        SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithmAlgorithmName(
    this.algorithmName,
  );

  final TfArg<String> algorithmName;

  @override
  String get blockKey => 'algorithm_name';

  @override
  Map<String, Object?> encode() => {'algorithm_name': algorithmName.toTfJson()};
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm.trainingImage] choice: sets `training_image`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithmTrainingImage
    extends
        SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithm {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationAlgorithmTrainingImage(
    this.trainingImage,
  );

  final TfArg<String> trainingImage;

  @override
  String get blockKey => 'training_image';

  @override
  Map<String, Object?> encode() => {'training_image': trainingImage.toTfJson()};
}

/// `training_input_mode` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationTrainingInputMode
    implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsAlgorithmSpecificationTrainingInputMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesContinuousParameterRangesScalingType
  >?
  scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesContinuousParameterRangesScalingType
    implements TerraformEnum {
  auto('Auto'),
  linear('Linear'),
  logarithmic('Logarithmic'),
  reverselogarithmic('ReverseLogarithmic');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesContinuousParameterRangesScalingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesIntegerParameterRangesScalingType
  >?
  scalingType;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    if (scalingType != null) 'scaling_type': scalingType!.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesIntegerParameterRangesScalingType
    implements TerraformEnum {
  auto('Auto'),
  linear('Linear'),
  logarithmic('Logarithmic'),
  reverselogarithmic('ReverseLogarithmic');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterRangesIntegerParameterRangesScalingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigAllocationStrategy
  >?
  allocationStrategy;

  final TfArg<num>? instanceCount;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceType
  >?
  instanceType;

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

/// `allocation_strategy` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigAllocationStrategy
    implements TerraformEnum {
  prioritized('Prioritized');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigAllocationStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceConfigsInstanceType
  >?
  instanceType;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    if (instanceCount != null) 'instance_count': instanceCount!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (volumeSizeInGb != null) 'volume_size_in_gb': volumeSizeInGb!.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceConfigsInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsHyperParameterTuningResourceConfigInstanceConfigsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigCompressionType
  >?
  compressionType;

  final TfArg<String>? contentType;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigInputMode
  >?
  inputMode;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigRecordWrapperType
  >?
  recordWrapperType;

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

/// `compression_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigCompressionType
    implements TerraformEnum {
  none('None'),
  gzip('Gzip');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigCompressionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `input_mode` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigInputMode
    implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigInputMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `record_wrapper_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigRecordWrapperType
    implements TerraformEnum {
  none('None'),
  recordio('RecordIO');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigRecordWrapperType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode
  >
  fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSourceFileSystemType
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
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode
    implements TerraformEnum {
  rw('rw'),
  ro('ro');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSourceFileSystemAccessMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `file_system_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSourceFileSystemType
    implements TerraformEnum {
  efs('EFS'),
  fsxlustre('FSxLustre');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceFileSystemDataSourceFileSystemType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceS3DataDistributionType
  >?
  s3DataDistributionType;

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceS3DataType
  >
  s3DataType;

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

/// `s3_data_distribution_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceS3DataDistributionType
    implements TerraformEnum {
  fullyreplicated('FullyReplicated'),
  shardedbys3key('ShardedByS3Key');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceS3DataDistributionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_data_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceS3DataType
    implements TerraformEnum {
  manifestfile('ManifestFile'),
  s3prefix('S3Prefix'),
  augmentedmanifestfile('AugmentedManifestFile'),
  converse('Converse');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsInputDataConfigDataSourceS3DataSourceS3DataType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfigCompressionType
  >?
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
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfigCompressionType
    implements TerraformEnum {
  gzip('GZIP'),
  none('NONE');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsOutputDataConfigCompressionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceType
  >?
  instanceType;

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

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceGroupsInstanceType
  >
  instanceType;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_group_name': instanceGroupName.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceGroupsInstanceType
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

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourceConfigInstanceGroupsInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    SagemakerHyperParameterTuningJobTrainingJobDefinitionsTuningObjectiveType
  >
  type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobTrainingJobDefinitionsTuningObjectiveType
    implements TerraformEnum {
  maximize('Maximize'),
  minimize('Minimize');

  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsTuningObjectiveType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<SagemakerHyperParameterTuningJobWarmStartConfigWarmStartType>?
  warmStartType;

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

/// `warm_start_type` — derived from the provider schema description.
enum SagemakerHyperParameterTuningJobWarmStartConfigWarmStartType
    implements TerraformEnum {
  identicaldataandalgorithm('IdenticalDataAndAlgorithm'),
  transferlearning('TransferLearning');

  const SagemakerHyperParameterTuningJobWarmStartConfigWarmStartType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerHyperParameterTuningJob>`.
  RefTo<AwsSagemakerHyperParameterTuningJob> get ref => RefTo.of(this);

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
