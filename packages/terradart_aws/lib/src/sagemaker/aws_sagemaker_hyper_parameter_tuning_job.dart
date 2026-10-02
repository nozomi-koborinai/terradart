// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_hyper_parameter_tuning_job`.
const Set<String> _awsSagemakerHyperParameterTuningJobSensitive = <String>{};

/// Typed helper for the `autotune` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobAutotune {
  const SagemakerHyperParameterTuningJobAutotune({required this.mode});

  final SagemakerHyperParameterTuningJobMode mode;

  @internal
  Map<String, Object?> encode() => {'mode': mode.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerHyperParameterTuningJobMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobMode.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerHyperParameterTuningJobMode._(
    TfArgLiteral('Enabled'),
  );

  static const List<SagemakerHyperParameterTuningJobMode> values = [enabled];
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

  final SagemakerHyperParameterTuningJobStrategy strategy;

  final SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType?
  trainingJobEarlyStoppingType;

  final List<SagemakerHyperParameterTuningJobObjective>? objective;

  final List<SagemakerHyperParameterTuningJobParameterRanges>? parameterRanges;

  final List<SagemakerHyperParameterTuningJobResourceLimits>? resourceLimits;

  final List<SagemakerHyperParameterTuningJobStrategyConfig>? strategyConfig;

  final List<SagemakerHyperParameterTuningJobCompletionCriteria>?
  tuningJobCompletionCriteria;

  @internal
  Map<String, Object?> encode() => {
    'random_seed': ?randomSeed?.toTfJson(),
    'strategy': strategy.toTfJson(),
    'training_job_early_stopping_type': ?trainingJobEarlyStoppingType
        ?.toTfJson(),
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
extension type const SagemakerHyperParameterTuningJobStrategy._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerHyperParameterTuningJobStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const bayesian = SagemakerHyperParameterTuningJobStrategy._(
    TfArgLiteral('Bayesian'),
  );
  static const random = SagemakerHyperParameterTuningJobStrategy._(
    TfArgLiteral('Random'),
  );
  static const hyperband = SagemakerHyperParameterTuningJobStrategy._(
    TfArgLiteral('Hyperband'),
  );
  static const grid = SagemakerHyperParameterTuningJobStrategy._(
    TfArgLiteral('Grid'),
  );

  static const List<SagemakerHyperParameterTuningJobStrategy> values = [
    bayesian,
    random,
    hyperband,
    grid,
  ];
}

/// `training_job_early_stopping_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const off =
      SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType._(
        TfArgLiteral('Off'),
      );
  static const auto =
      SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType._(
        TfArgLiteral('Auto'),
      );

  static const List<
    SagemakerHyperParameterTuningJobTrainingJobEarlyStoppingType
  >
  values = [off, auto];
}

/// Typed helper for the `config.objective` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobObjective {
  const SagemakerHyperParameterTuningJobObjective({
    required this.metricName,
    required this.type,
  });

  final TfArg<String> metricName;

  final SagemakerHyperParameterTuningJobType type;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerHyperParameterTuningJobType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobType.arg(TfArg<String> arg)
    : this._(arg);

  static const maximize = SagemakerHyperParameterTuningJobType._(
    TfArgLiteral('Maximize'),
  );
  static const minimize = SagemakerHyperParameterTuningJobType._(
    TfArgLiteral('Minimize'),
  );

  static const List<SagemakerHyperParameterTuningJobType> values = [
    maximize,
    minimize,
  ];
}

/// Typed helper for the `config.parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobParameterRanges {
  const SagemakerHyperParameterTuningJobParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  final List<SagemakerHyperParameterTuningJobAutoParameters>? autoParameters;

  final List<SagemakerHyperParameterTuningJobCategoricalParameterRanges>?
  categoricalParameterRanges;

  final List<SagemakerHyperParameterTuningJobContinuousParameterRanges>?
  continuousParameterRanges;

  final List<SagemakerHyperParameterTuningJobIntegerParameterRanges>?
  integerParameterRanges;

  @internal
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
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobAutoParameters {
  const SagemakerHyperParameterTuningJobAutoParameters({
    required this.name,
    required this.valueHint,
  });

  final TfArg<String> name;

  final TfArg<String> valueHint;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_hint': valueHint.toTfJson(),
  };
}

/// Typed helper for the `config.parameter_ranges.categorical_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobCategoricalParameterRanges {
  const SagemakerHyperParameterTuningJobCategoricalParameterRanges({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `config.parameter_ranges.continuous_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobContinuousParameterRanges {
  const SagemakerHyperParameterTuningJobContinuousParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final SagemakerHyperParameterTuningJobScalingType? scalingType;

  @internal
  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    'scaling_type': ?scalingType?.toTfJson(),
  };
}

/// `scaling_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobScalingType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobScalingType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobScalingType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobScalingType.arg(TfArg<String> arg)
    : this._(arg);

  static const auto = SagemakerHyperParameterTuningJobScalingType._(
    TfArgLiteral('Auto'),
  );
  static const linear = SagemakerHyperParameterTuningJobScalingType._(
    TfArgLiteral('Linear'),
  );
  static const logarithmic = SagemakerHyperParameterTuningJobScalingType._(
    TfArgLiteral('Logarithmic'),
  );
  static const reverselogarithmic =
      SagemakerHyperParameterTuningJobScalingType._(
        TfArgLiteral('ReverseLogarithmic'),
      );

  static const List<SagemakerHyperParameterTuningJobScalingType> values = [
    auto,
    linear,
    logarithmic,
    reverselogarithmic,
  ];
}

/// Typed helper for the `config.parameter_ranges.integer_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobIntegerParameterRanges {
  const SagemakerHyperParameterTuningJobIntegerParameterRanges({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  final TfArg<String> name;

  final SagemakerHyperParameterTuningJobScalingType? scalingType;

  @internal
  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
    'name': name.toTfJson(),
    'scaling_type': ?scalingType?.toTfJson(),
  };
}

/// Typed helper for the `config.resource_limits` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobResourceLimits {
  const SagemakerHyperParameterTuningJobResourceLimits({
    this.maxNumberOfTrainingJobs,
    required this.maxParallelTrainingJobs,
    this.maxRuntimeInSeconds,
  });

  final TfArg<num>? maxNumberOfTrainingJobs;

  final TfArg<num> maxParallelTrainingJobs;

  final TfArg<num>? maxRuntimeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'max_number_of_training_jobs': ?maxNumberOfTrainingJobs?.toTfJson(),
    'max_parallel_training_jobs': maxParallelTrainingJobs.toTfJson(),
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `config.strategy_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobStrategyConfig {
  const SagemakerHyperParameterTuningJobStrategyConfig({
    this.hyperbandStrategyConfig,
  });

  final List<SagemakerHyperParameterTuningJobHyperbandStrategyConfig>?
  hyperbandStrategyConfig;

  @internal
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
final class SagemakerHyperParameterTuningJobHyperbandStrategyConfig {
  const SagemakerHyperParameterTuningJobHyperbandStrategyConfig({
    this.maxResource,
    this.minResource,
  });

  final TfArg<num>? maxResource;

  final TfArg<num>? minResource;

  @internal
  Map<String, Object?> encode() => {
    'max_resource': ?maxResource?.toTfJson(),
    'min_resource': ?minResource?.toTfJson(),
  };
}

/// Typed helper for the `config.tuning_job_completion_criteria` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobCompletionCriteria {
  const SagemakerHyperParameterTuningJobCompletionCriteria({
    this.targetObjectiveMetricValue,
    this.bestObjectiveNotImproving,
    this.convergenceDetected,
  });

  final TfArg<num>? targetObjectiveMetricValue;

  final List<SagemakerHyperParameterTuningJobBestObjectiveNotImproving>?
  bestObjectiveNotImproving;

  final List<SagemakerHyperParameterTuningJobConvergenceDetected>?
  convergenceDetected;

  @internal
  Map<String, Object?> encode() => {
    'target_objective_metric_value': ?targetObjectiveMetricValue?.toTfJson(),
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
final class SagemakerHyperParameterTuningJobBestObjectiveNotImproving {
  const SagemakerHyperParameterTuningJobBestObjectiveNotImproving({
    this.maxNumberOfTrainingJobsNotImproving,
  });

  final TfArg<num>? maxNumberOfTrainingJobsNotImproving;

  @internal
  Map<String, Object?> encode() => {
    'max_number_of_training_jobs_not_improving':
        ?maxNumberOfTrainingJobsNotImproving?.toTfJson(),
  };
}

/// Typed helper for the `config.tuning_job_completion_criteria.convergence_detected` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobConvergenceDetected {
  const SagemakerHyperParameterTuningJobConvergenceDetected({
    this.completeOnConvergence,
  });

  final SagemakerHyperParameterTuningJobCompleteOnConvergence?
  completeOnConvergence;

  @internal
  Map<String, Object?> encode() => {
    'complete_on_convergence': ?completeOnConvergence?.toTfJson(),
  };
}

/// `complete_on_convergence` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobCompleteOnConvergence._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobCompleteOnConvergence.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobCompleteOnConvergence.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobCompleteOnConvergence.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const disabled =
      SagemakerHyperParameterTuningJobCompleteOnConvergence._(
        TfArgLiteral('Disabled'),
      );
  static const enabled =
      SagemakerHyperParameterTuningJobCompleteOnConvergence._(
        TfArgLiteral('Enabled'),
      );

  static const List<SagemakerHyperParameterTuningJobCompleteOnConvergence>
  values = [disabled, enabled];
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

  final RefTo<AwsIamRole> roleArn;

  final TfArg<Map<String, String>>? staticHyperParameters;

  final List<SagemakerHyperParameterTuningJobAlgorithmSpecification>?
  algorithmSpecification;

  final List<SagemakerHyperParameterTuningJobCheckpointConfig>?
  checkpointConfig;

  final List<SagemakerHyperParameterTuningJobHyperParameterRanges>?
  hyperParameterRanges;

  final SagemakerHyperParameterTuningJobTrainingJobDefinitionResources?
  resources;

  final List<SagemakerHyperParameterTuningJobInputDataConfig>? inputDataConfig;

  final List<SagemakerHyperParameterTuningJobOutputDataConfig>?
  outputDataConfig;

  final List<SagemakerHyperParameterTuningJobStoppingCondition>?
  stoppingCondition;

  final List<SagemakerHyperParameterTuningJobTuningObjective>? tuningObjective;

  final List<SagemakerHyperParameterTuningJobVpcConfig>? vpcConfig;

  @internal
  Map<String, Object?> encode() => {
    'definition_name': ?definitionName?.toTfJson(),
    'enable_inter_container_traffic_encryption':
        ?enableInterContainerTrafficEncryption?.toTfJson(),
    'enable_managed_spot_training': ?enableManagedSpotTraining?.toTfJson(),
    'enable_network_isolation': ?enableNetworkIsolation?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'retry_strategy': ?retryStrategy?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'static_hyper_parameters': ?staticHyperParameters?.toTfJson(),
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
    List<SagemakerHyperParameterTuningJobHyperParameterTuningResourceConfig>
    hyperParameterTuningResourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesHyperParameterTuningResourceConfig;

  /// Sets `resource_config`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionResources.resourceConfig(
    List<SagemakerHyperParameterTuningJobResourceConfig> resourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesResourceConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionResources.hyperParameterTuningResourceConfig] choice: sets `hyper_parameter_tuning_resource_config`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesHyperParameterTuningResourceConfig
    extends SagemakerHyperParameterTuningJobTrainingJobDefinitionResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionResourcesHyperParameterTuningResourceConfig(
    this.hyperParameterTuningResourceConfig,
  );

  final List<SagemakerHyperParameterTuningJobHyperParameterTuningResourceConfig>
  hyperParameterTuningResourceConfig;

  @internal
  @override
  String get blockKey => 'hyper_parameter_tuning_resource_config';

  @internal
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

  final List<SagemakerHyperParameterTuningJobResourceConfig> resourceConfig;

  @internal
  @override
  String get blockKey => 'resource_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_config': [for (final e in resourceConfig) e.encode()],
  };
}

/// Typed helper for the `training_job_definition.algorithm_specification` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobAlgorithmSpecification {
  const SagemakerHyperParameterTuningJobAlgorithmSpecification({
    this.algorithm,
    required this.trainingInputMode,
    this.metricDefinitions,
  });

  final SagemakerHyperParameterTuningJobAlgorithm? algorithm;

  final SagemakerHyperParameterTuningJobTrainingInputMode trainingInputMode;

  final List<SagemakerHyperParameterTuningJobMetricDefinitions>?
  metricDefinitions;

  @internal
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
sealed class SagemakerHyperParameterTuningJobAlgorithm {
  const SagemakerHyperParameterTuningJobAlgorithm();

  /// Sets `algorithm_name`.
  const factory SagemakerHyperParameterTuningJobAlgorithm.algorithmName(
    TfArg<String> algorithmName,
  ) = SagemakerHyperParameterTuningJobAlgorithmName;

  /// Sets `training_image`.
  const factory SagemakerHyperParameterTuningJobAlgorithm.trainingImage(
    TfArg<String> trainingImage,
  ) = SagemakerHyperParameterTuningJobAlgorithmTrainingImage;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobAlgorithm.algorithmName] choice: sets `algorithm_name`.
final class SagemakerHyperParameterTuningJobAlgorithmName
    extends SagemakerHyperParameterTuningJobAlgorithm {
  const SagemakerHyperParameterTuningJobAlgorithmName(this.algorithmName);

  final TfArg<String> algorithmName;

  @internal
  @override
  String get blockKey => 'algorithm_name';

  @internal
  @override
  Map<String, Object?> encode() => {'algorithm_name': algorithmName.toTfJson()};
}

/// The [SagemakerHyperParameterTuningJobAlgorithm.trainingImage] choice: sets `training_image`.
final class SagemakerHyperParameterTuningJobAlgorithmTrainingImage
    extends SagemakerHyperParameterTuningJobAlgorithm {
  const SagemakerHyperParameterTuningJobAlgorithmTrainingImage(
    this.trainingImage,
  );

  final TfArg<String> trainingImage;

  @internal
  @override
  String get blockKey => 'training_image';

  @internal
  @override
  Map<String, Object?> encode() => {'training_image': trainingImage.toTfJson()};
}

/// `training_input_mode` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobTrainingInputMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobTrainingInputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobTrainingInputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobTrainingInputMode.arg(TfArg<String> arg)
    : this._(arg);

  static const pipe = SagemakerHyperParameterTuningJobTrainingInputMode._(
    TfArgLiteral('Pipe'),
  );
  static const file = SagemakerHyperParameterTuningJobTrainingInputMode._(
    TfArgLiteral('File'),
  );
  static const fastfile = SagemakerHyperParameterTuningJobTrainingInputMode._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerHyperParameterTuningJobTrainingInputMode> values =
      [pipe, file, fastfile];
}

/// Typed helper for the `training_job_definition.algorithm_specification.metric_definitions` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobMetricDefinitions {
  const SagemakerHyperParameterTuningJobMetricDefinitions({
    required this.name,
    required this.regex,
  });

  final TfArg<String> name;

  final TfArg<String> regex;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'regex': regex.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.checkpoint_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobCheckpointConfig {
  const SagemakerHyperParameterTuningJobCheckpointConfig({
    this.localPath,
    required this.s3Uri,
  });

  final TfArg<String>? localPath;

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {
    'local_path': ?localPath?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.hyper_parameter_ranges` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobHyperParameterRanges {
  const SagemakerHyperParameterTuningJobHyperParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  final List<SagemakerHyperParameterTuningJobAutoParameters>? autoParameters;

  final List<SagemakerHyperParameterTuningJobCategoricalParameterRanges>?
  categoricalParameterRanges;

  final List<SagemakerHyperParameterTuningJobContinuousParameterRanges>?
  continuousParameterRanges;

  final List<SagemakerHyperParameterTuningJobIntegerParameterRanges>?
  integerParameterRanges;

  @internal
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

/// Typed helper for the `training_job_definition.hyper_parameter_tuning_resource_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobHyperParameterTuningResourceConfig {
  const SagemakerHyperParameterTuningJobHyperParameterTuningResourceConfig({
    this.allocationStrategy,
    this.instanceCount,
    this.instanceType,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
    this.instanceConfigs,
  });

  final SagemakerHyperParameterTuningJobAllocationStrategy? allocationStrategy;

  final TfArg<num>? instanceCount;

  final SagemakerHyperParameterTuningJobInstanceType? instanceType;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<SagemakerHyperParameterTuningJobInstanceConfigs>? instanceConfigs;

  @internal
  Map<String, Object?> encode() => {
    'allocation_strategy': ?allocationStrategy?.toTfJson(),
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
    if (instanceConfigs != null)
      'instance_configs': [for (final e in instanceConfigs!) e.encode()],
  };
}

/// `allocation_strategy` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobAllocationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobAllocationStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobAllocationStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const prioritized =
      SagemakerHyperParameterTuningJobAllocationStrategy._(
        TfArgLiteral('Prioritized'),
      );

  static const List<SagemakerHyperParameterTuningJobAllocationStrategy> values =
      [prioritized];
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlM4Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlG4dnXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlM5Large = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlC4Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlP2Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlP4d24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlP5p48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5e48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p5e.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlC5Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5nXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5n.xlarge'),
  );
  static const mlC5n2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5n.2xlarge'),
  );
  static const mlC5n4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5n.4xlarge'),
  );
  static const mlC5n9xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5n.9xlarge'),
  );
  static const mlC5n18xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c5n.18xlarge'),
  );
  static const mlG5Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlTrn2p48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.trn2.48xlarge'),
  );
  static const mlM6iLarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlC6iXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlR5dLarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.2xlarge'),
  );
  static const mlR5d4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.4xlarge'),
  );
  static const mlR5d8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.8xlarge'),
  );
  static const mlR5d12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.12xlarge'),
  );
  static const mlR5d16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.16xlarge'),
  );
  static const mlR5d24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5d.24xlarge'),
  );
  static const mlT3Medium = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlR5Large = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlP6B200p48xlarge =
      SagemakerHyperParameterTuningJobInstanceType._(
        TfArgLiteral('ml.p6-b200.48xlarge'),
      );
  static const mlM7iLarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC7iLarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR7iLarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlP6eGb200p36xlarge =
      SagemakerHyperParameterTuningJobInstanceType._(
        TfArgLiteral('ml.p6e-gb200.36xlarge'),
      );
  static const mlP5p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlP6B300p48xlarge =
      SagemakerHyperParameterTuningJobInstanceType._(
        TfArgLiteral('ml.p6-b300.48xlarge'),
      );
  static const mlG7e2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlG7p2xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerHyperParameterTuningJobInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );

  static const List<SagemakerHyperParameterTuningJobInstanceType> values = [
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
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
    mlP3dn24xlarge,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5nXlarge,
    mlC5n2xlarge,
    mlC5n4xlarge,
    mlC5n9xlarge,
    mlC5n18xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p16xlarge,
    mlG6p12xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e16xlarge,
    mlG6e12xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
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
    mlC6i8xlarge,
    mlC6i4xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d8xlarge,
    mlR5d12xlarge,
    mlR5d16xlarge,
    mlR5d24xlarge,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlP6B200p48xlarge,
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
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
    mlP6B300p48xlarge,
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

/// Typed helper for the `training_job_definition.hyper_parameter_tuning_resource_config.instance_configs` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobInstanceConfigs {
  const SagemakerHyperParameterTuningJobInstanceConfigs({
    this.instanceCount,
    this.instanceType,
    this.volumeSizeInGb,
  });

  final TfArg<num>? instanceCount;

  final SagemakerHyperParameterTuningJobInstanceType? instanceType;

  final TfArg<num>? volumeSizeInGb;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.input_data_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobInputDataConfig {
  const SagemakerHyperParameterTuningJobInputDataConfig({
    required this.channelName,
    this.compressionType,
    this.contentType,
    this.inputMode,
    this.recordWrapperType,
    this.dataSource,
    this.shuffleConfig,
  });

  final TfArg<String> channelName;

  final SagemakerHyperParameterTuningJobInputDataConfigCompressionType?
  compressionType;

  final TfArg<String>? contentType;

  final SagemakerHyperParameterTuningJobInputMode? inputMode;

  final SagemakerHyperParameterTuningJobRecordWrapperType? recordWrapperType;

  final List<SagemakerHyperParameterTuningJobDataSource>? dataSource;

  final List<SagemakerHyperParameterTuningJobShuffleConfig>? shuffleConfig;

  @internal
  Map<String, Object?> encode() => {
    'channel_name': channelName.toTfJson(),
    'compression_type': ?compressionType?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'input_mode': ?inputMode?.toTfJson(),
    'record_wrapper_type': ?recordWrapperType?.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
    if (shuffleConfig != null)
      'shuffle_config': [for (final e in shuffleConfig!) e.encode()],
  };
}

/// `compression_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobInputDataConfigCompressionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobInputDataConfigCompressionType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobInputDataConfigCompressionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobInputDataConfigCompressionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      SagemakerHyperParameterTuningJobInputDataConfigCompressionType._(
        TfArgLiteral('None'),
      );
  static const gzip =
      SagemakerHyperParameterTuningJobInputDataConfigCompressionType._(
        TfArgLiteral('Gzip'),
      );

  static const List<
    SagemakerHyperParameterTuningJobInputDataConfigCompressionType
  >
  values = [none, gzip];
}

/// `input_mode` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobInputMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobInputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobInputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobInputMode.arg(TfArg<String> arg)
    : this._(arg);

  static const pipe = SagemakerHyperParameterTuningJobInputMode._(
    TfArgLiteral('Pipe'),
  );
  static const file = SagemakerHyperParameterTuningJobInputMode._(
    TfArgLiteral('File'),
  );
  static const fastfile = SagemakerHyperParameterTuningJobInputMode._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerHyperParameterTuningJobInputMode> values = [
    pipe,
    file,
    fastfile,
  ];
}

/// `record_wrapper_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobRecordWrapperType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobRecordWrapperType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobRecordWrapperType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobRecordWrapperType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = SagemakerHyperParameterTuningJobRecordWrapperType._(
    TfArgLiteral('None'),
  );
  static const recordio = SagemakerHyperParameterTuningJobRecordWrapperType._(
    TfArgLiteral('RecordIO'),
  );

  static const List<SagemakerHyperParameterTuningJobRecordWrapperType> values =
      [none, recordio];
}

/// Typed helper for the `training_job_definition.input_data_config.data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobDataSource {
  const SagemakerHyperParameterTuningJobDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<SagemakerHyperParameterTuningJobFileSystemDataSource>?
  fileSystemDataSource;

  final List<SagemakerHyperParameterTuningJobS3DataSource>? s3DataSource;

  @internal
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
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobFileSystemDataSource {
  const SagemakerHyperParameterTuningJobFileSystemDataSource({
    required this.directoryPath,
    required this.fileSystemAccessMode,
    required this.fileSystemId,
    required this.fileSystemType,
  });

  final TfArg<String> directoryPath;

  final SagemakerHyperParameterTuningJobFileSystemAccessMode
  fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final SagemakerHyperParameterTuningJobFileSystemType fileSystemType;

  @internal
  Map<String, Object?> encode() => {
    'directory_path': directoryPath.toTfJson(),
    'file_system_access_mode': fileSystemAccessMode.toTfJson(),
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_type': fileSystemType.toTfJson(),
  };
}

/// `file_system_access_mode` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobFileSystemAccessMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobFileSystemAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobFileSystemAccessMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobFileSystemAccessMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const rw = SagemakerHyperParameterTuningJobFileSystemAccessMode._(
    TfArgLiteral('rw'),
  );
  static const ro = SagemakerHyperParameterTuningJobFileSystemAccessMode._(
    TfArgLiteral('ro'),
  );

  static const List<SagemakerHyperParameterTuningJobFileSystemAccessMode>
  values = [rw, ro];
}

/// `file_system_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobFileSystemType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobFileSystemType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobFileSystemType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobFileSystemType.arg(TfArg<String> arg)
    : this._(arg);

  static const efs = SagemakerHyperParameterTuningJobFileSystemType._(
    TfArgLiteral('EFS'),
  );
  static const fsxlustre = SagemakerHyperParameterTuningJobFileSystemType._(
    TfArgLiteral('FSxLustre'),
  );

  static const List<SagemakerHyperParameterTuningJobFileSystemType> values = [
    efs,
    fsxlustre,
  ];
}

/// Typed helper for the `training_job_definition.input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobS3DataSource {
  const SagemakerHyperParameterTuningJobS3DataSource({
    this.attributeNames,
    this.instanceGroupNames,
    this.s3DataDistributionType,
    required this.s3DataType,
    required this.s3Uri,
    this.hubAccessConfig,
    this.modelAccessConfig,
  });

  final TfArg<List<String>>? attributeNames;

  final TfArg<List<String>>? instanceGroupNames;

  final SagemakerHyperParameterTuningJobS3DataDistributionType?
  s3DataDistributionType;

  final SagemakerHyperParameterTuningJobS3DataType s3DataType;

  final TfArg<String> s3Uri;

  final List<SagemakerHyperParameterTuningJobHubAccessConfig>? hubAccessConfig;

  final List<SagemakerHyperParameterTuningJobModelAccessConfig>?
  modelAccessConfig;

  @internal
  Map<String, Object?> encode() => {
    'attribute_names': ?attributeNames?.toTfJson(),
    'instance_group_names': ?instanceGroupNames?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (hubAccessConfig != null)
      'hub_access_config': [for (final e in hubAccessConfig!) e.encode()],
    if (modelAccessConfig != null)
      'model_access_config': [for (final e in modelAccessConfig!) e.encode()],
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobS3DataDistributionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobS3DataDistributionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobS3DataDistributionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobS3DataDistributionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const fullyreplicated =
      SagemakerHyperParameterTuningJobS3DataDistributionType._(
        TfArgLiteral('FullyReplicated'),
      );
  static const shardedbys3key =
      SagemakerHyperParameterTuningJobS3DataDistributionType._(
        TfArgLiteral('ShardedByS3Key'),
      );

  static const List<SagemakerHyperParameterTuningJobS3DataDistributionType>
  values = [fullyreplicated, shardedbys3key];
}

/// `s3_data_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobS3DataType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobS3DataType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobS3DataType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobS3DataType.arg(TfArg<String> arg)
    : this._(arg);

  static const manifestfile = SagemakerHyperParameterTuningJobS3DataType._(
    TfArgLiteral('ManifestFile'),
  );
  static const s3prefix = SagemakerHyperParameterTuningJobS3DataType._(
    TfArgLiteral('S3Prefix'),
  );
  static const augmentedmanifestfile =
      SagemakerHyperParameterTuningJobS3DataType._(
        TfArgLiteral('AugmentedManifestFile'),
      );
  static const converse = SagemakerHyperParameterTuningJobS3DataType._(
    TfArgLiteral('Converse'),
  );

  static const List<SagemakerHyperParameterTuningJobS3DataType> values = [
    manifestfile,
    s3prefix,
    augmentedmanifestfile,
    converse,
  ];
}

/// Typed helper for the `training_job_definition.input_data_config.data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobHubAccessConfig {
  const SagemakerHyperParameterTuningJobHubAccessConfig({
    required this.hubContentArn,
  });

  final TfArg<String> hubContentArn;

  @internal
  Map<String, Object?> encode() => {
    'hub_content_arn': hubContentArn.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.input_data_config.data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobModelAccessConfig {
  const SagemakerHyperParameterTuningJobModelAccessConfig({
    required this.acceptEula,
  });

  final TfArg<bool> acceptEula;

  @internal
  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `training_job_definition.input_data_config.shuffle_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobShuffleConfig {
  const SagemakerHyperParameterTuningJobShuffleConfig({required this.seed});

  final TfArg<num> seed;

  @internal
  Map<String, Object?> encode() => {'seed': seed.toTfJson()};
}

/// Typed helper for the `training_job_definition.output_data_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobOutputDataConfig {
  const SagemakerHyperParameterTuningJobOutputDataConfig({
    this.compressionType,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final SagemakerHyperParameterTuningJobOutputDataConfigCompressionType?
  compressionType;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  @internal
  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobOutputDataConfigCompressionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobOutputDataConfigCompressionType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobOutputDataConfigCompressionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobOutputDataConfigCompressionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const gzip =
      SagemakerHyperParameterTuningJobOutputDataConfigCompressionType._(
        TfArgLiteral('GZIP'),
      );
  static const none =
      SagemakerHyperParameterTuningJobOutputDataConfigCompressionType._(
        TfArgLiteral('NONE'),
      );

  static const List<
    SagemakerHyperParameterTuningJobOutputDataConfigCompressionType
  >
  values = [gzip, none];
}

/// Typed helper for the `training_job_definition.resource_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobResourceConfig {
  const SagemakerHyperParameterTuningJobResourceConfig({
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

  final SagemakerHyperParameterTuningJobInstanceType? instanceType;

  final TfArg<num>? keepAlivePeriodInSeconds;

  final TfArg<String>? trainingPlanArn;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<SagemakerHyperParameterTuningJobInstanceGroups>? instanceGroups;

  final List<SagemakerHyperParameterTuningJobInstancePlacementConfig>?
  instancePlacementConfig;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'keep_alive_period_in_seconds': ?keepAlivePeriodInSeconds?.toTfJson(),
    'training_plan_arn': ?trainingPlanArn?.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
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
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobInstanceGroups {
  const SagemakerHyperParameterTuningJobInstanceGroups({
    required this.instanceCount,
    required this.instanceGroupName,
    required this.instanceType,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> instanceGroupName;

  final SagemakerHyperParameterTuningJobInstanceType instanceType;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_group_name': instanceGroupName.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.resource_config.instance_placement_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobInstancePlacementConfig {
  const SagemakerHyperParameterTuningJobInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<SagemakerHyperParameterTuningJobPlacementSpecifications>?
  placementSpecifications;

  @internal
  Map<String, Object?> encode() => {
    'enable_multiple_jobs': ?enableMultipleJobs?.toTfJson(),
    if (placementSpecifications != null)
      'placement_specifications': [
        for (final e in placementSpecifications!) e.encode(),
      ],
  };
}

/// Typed helper for the `training_job_definition.resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobPlacementSpecifications {
  const SagemakerHyperParameterTuningJobPlacementSpecifications({
    required this.instanceCount,
    this.ultraServerId,
  });

  final TfArg<num> instanceCount;

  final TfArg<String>? ultraServerId;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'ultra_server_id': ?ultraServerId?.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.stopping_condition` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobStoppingCondition {
  const SagemakerHyperParameterTuningJobStoppingCondition({
    this.maxPendingTimeInSeconds,
    this.maxRuntimeInSeconds,
    this.maxWaitTimeInSeconds,
  });

  final TfArg<num>? maxPendingTimeInSeconds;

  final TfArg<num>? maxRuntimeInSeconds;

  final TfArg<num>? maxWaitTimeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'max_pending_time_in_seconds': ?maxPendingTimeInSeconds?.toTfJson(),
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
    'max_wait_time_in_seconds': ?maxWaitTimeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.tuning_objective` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobTuningObjective {
  const SagemakerHyperParameterTuningJobTuningObjective({
    required this.metricName,
    required this.type,
  });

  final TfArg<String> metricName;

  final SagemakerHyperParameterTuningJobType type;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `training_job_definition.vpc_config` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerHyperParameterTuningJobVpcConfig {
  const SagemakerHyperParameterTuningJobVpcConfig({
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

  final RefTo<AwsIamRole> roleArn;

  final TfArg<Map<String, String>>? staticHyperParameters;

  final List<SagemakerHyperParameterTuningJobAlgorithmSpecification>?
  algorithmSpecification;

  final List<SagemakerHyperParameterTuningJobCheckpointConfig>?
  checkpointConfig;

  final List<SagemakerHyperParameterTuningJobHyperParameterRanges>?
  hyperParameterRanges;

  final SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources?
  resources;

  final List<SagemakerHyperParameterTuningJobInputDataConfig>? inputDataConfig;

  final List<SagemakerHyperParameterTuningJobOutputDataConfig>?
  outputDataConfig;

  final List<SagemakerHyperParameterTuningJobStoppingCondition>?
  stoppingCondition;

  final List<SagemakerHyperParameterTuningJobTuningObjective>? tuningObjective;

  final List<SagemakerHyperParameterTuningJobVpcConfig>? vpcConfig;

  @internal
  Map<String, Object?> encode() => {
    'definition_name': ?definitionName?.toTfJson(),
    'enable_inter_container_traffic_encryption':
        ?enableInterContainerTrafficEncryption?.toTfJson(),
    'enable_managed_spot_training': ?enableManagedSpotTraining?.toTfJson(),
    'enable_network_isolation': ?enableNetworkIsolation?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'retry_strategy': ?retryStrategy?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'static_hyper_parameters': ?staticHyperParameters?.toTfJson(),
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
    List<SagemakerHyperParameterTuningJobHyperParameterTuningResourceConfig>
    hyperParameterTuningResourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesHyperParameterTuningResourceConfig;

  /// Sets `resource_config`.
  const factory SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources.resourceConfig(
    List<SagemakerHyperParameterTuningJobResourceConfig> resourceConfig,
  ) = SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesResourceConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources.hyperParameterTuningResourceConfig] choice: sets `hyper_parameter_tuning_resource_config`.
final class SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesHyperParameterTuningResourceConfig
    extends SagemakerHyperParameterTuningJobTrainingJobDefinitionsResources {
  const SagemakerHyperParameterTuningJobTrainingJobDefinitionsResourcesHyperParameterTuningResourceConfig(
    this.hyperParameterTuningResourceConfig,
  );

  final List<SagemakerHyperParameterTuningJobHyperParameterTuningResourceConfig>
  hyperParameterTuningResourceConfig;

  @internal
  @override
  String get blockKey => 'hyper_parameter_tuning_resource_config';

  @internal
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

  final List<SagemakerHyperParameterTuningJobResourceConfig> resourceConfig;

  @internal
  @override
  String get blockKey => 'resource_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_config': [for (final e in resourceConfig) e.encode()],
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

  final SagemakerHyperParameterTuningJobWarmStartType? warmStartType;

  final List<SagemakerHyperParameterTuningJobParentHyperParameterTuningJobs>?
  parentHyperParameterTuningJobs;

  @internal
  Map<String, Object?> encode() => {
    'warm_start_type': ?warmStartType?.toTfJson(),
    if (parentHyperParameterTuningJobs != null)
      'parent_hyper_parameter_tuning_jobs': [
        for (final e in parentHyperParameterTuningJobs!) e.encode(),
      ],
  };
}

/// `warm_start_type` — derived from the provider schema description.
extension type const SagemakerHyperParameterTuningJobWarmStartType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerHyperParameterTuningJobWarmStartType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerHyperParameterTuningJobWarmStartType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerHyperParameterTuningJobWarmStartType.arg(TfArg<String> arg)
    : this._(arg);

  static const identicaldataandalgorithm =
      SagemakerHyperParameterTuningJobWarmStartType._(
        TfArgLiteral('IdenticalDataAndAlgorithm'),
      );
  static const transferlearning =
      SagemakerHyperParameterTuningJobWarmStartType._(
        TfArgLiteral('TransferLearning'),
      );

  static const List<SagemakerHyperParameterTuningJobWarmStartType> values = [
    identicaldataandalgorithm,
    transferlearning,
  ];
}

/// Typed helper for the `warm_start_config.parent_hyper_parameter_tuning_jobs` block of
/// `aws_sagemaker_hyper_parameter_tuning_job` (derived from provider schema).
@immutable
final class SagemakerHyperParameterTuningJobParentHyperParameterTuningJobs {
  const SagemakerHyperParameterTuningJobParentHyperParameterTuningJobs({
    required this.name,
  });

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_sagemaker_hyper_parameter_tuning_job`.
final class AwsSagemakerHyperParameterTuningJob extends Resource {
  static const String tfType = 'aws_sagemaker_hyper_parameter_tuning_job';

  AwsSagemakerHyperParameterTuningJob(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
