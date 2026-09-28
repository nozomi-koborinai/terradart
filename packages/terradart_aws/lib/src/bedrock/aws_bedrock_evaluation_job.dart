// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_evaluation_job`.
const Set<String> _awsBedrockEvaluationJobSensitive = <String>{};

/// Bedrock Evaluation Job Application enum for `application_type`.
enum BedrockEvaluationJobApplicationType implements TerraformEnum {
  modelevaluation('ModelEvaluation'),
  ragevaluation('RagEvaluation');

  const BedrockEvaluationJobApplicationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfig {
  const BedrockEvaluationJobEvaluationConfig({required this.automatedOrHuman});

  final BedrockEvaluationJobEvaluationConfigAutomatedOrHuman automatedOrHuman;

  Map<String, Object?> encode() => {...automatedOrHuman.encode()};
}

/// Exactly one of `automated`, `human` on the `evaluation_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobEvaluationConfigAutomatedOrHuman {
  const BedrockEvaluationJobEvaluationConfigAutomatedOrHuman();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `automated` (one of the [BedrockEvaluationJobEvaluationConfigAutomatedOrHuman] choices).
final class BedrockEvaluationJobEvaluationConfigAutomatedOption
    extends BedrockEvaluationJobEvaluationConfigAutomatedOrHuman {
  const BedrockEvaluationJobEvaluationConfigAutomatedOption({
    required this.automated,
  });

  final List<BedrockEvaluationJobEvaluationConfigAutomated> automated;

  @override
  String get blockKey => 'automated';

  @override
  Map<String, Object?> encode() => {
    'automated': [for (final e in automated) e.encode()],
  };
}

/// Sets `human` (one of the [BedrockEvaluationJobEvaluationConfigAutomatedOrHuman] choices).
final class BedrockEvaluationJobEvaluationConfigHumanOption
    extends BedrockEvaluationJobEvaluationConfigAutomatedOrHuman {
  const BedrockEvaluationJobEvaluationConfigHumanOption({required this.human});

  final List<BedrockEvaluationJobEvaluationConfigHuman> human;

  @override
  String get blockKey => 'human';

  @override
  Map<String, Object?> encode() => {
    'human': [for (final e in human) e.encode()],
  };
}

/// Typed helper for the `evaluation_config.automated` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomated {
  const BedrockEvaluationJobEvaluationConfigAutomated({
    this.customMetricConfig,
    this.datasetMetricConfig,
    this.evaluatorModelConfig,
  });

  final List<BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfig>?
  customMetricConfig;

  final List<BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfig>?
  datasetMetricConfig;

  final List<BedrockEvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig>?
  evaluatorModelConfig;

  Map<String, Object?> encode() => {
    if (customMetricConfig != null)
      'custom_metric_config': [for (final e in customMetricConfig!) e.encode()],
    if (datasetMetricConfig != null)
      'dataset_metric_config': [
        for (final e in datasetMetricConfig!) e.encode(),
      ],
    if (evaluatorModelConfig != null)
      'evaluator_model_config': [
        for (final e in evaluatorModelConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfig {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfig({
    this.customMetric,
    this.evaluatorModelConfig,
  });

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric
  >?
  customMetric;

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig
  >?
  evaluatorModelConfig;

  Map<String, Object?> encode() => {
    if (customMetric != null)
      'custom_metric': [for (final e in customMetric!) e.encode()],
    if (evaluatorModelConfig != null)
      'evaluator_model_config': [
        for (final e in evaluatorModelConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config.custom_metric` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetric({
    this.customMetricDefinition,
  });

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition
  >?
  customMetricDefinition;

  Map<String, Object?> encode() => {
    if (customMetricDefinition != null)
      'custom_metric_definition': [
        for (final e in customMetricDefinition!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config.custom_metric.custom_metric_definition` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition({
    required this.instructions,
    required this.name,
    this.ratingScale,
  });

  final TfArg<String> instructions;

  final TfArg<String> name;

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale
  >?
  ratingScale;

  Map<String, Object?> encode() => {
    'instructions': instructions.toTfJson(),
    'name': name.toTfJson(),
    if (ratingScale != null)
      'rating_scale': [for (final e in ratingScale!) e.encode()],
  };
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config.custom_metric.custom_metric_definition.rating_scale` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale({
    required this.definition,
    this.value,
  });

  final TfArg<String> definition;

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue
  >?
  value;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config.custom_metric.custom_metric_definition.rating_scale.value` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue({
    required this.floatValueOrStringValue,
  });

  final BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue
  floatValueOrStringValue;

  Map<String, Object?> encode() => {...floatValueOrStringValue.encode()};
}

/// Exactly one of `float_value`, `string_value` on the `evaluation_config.automated.custom_metric_config.custom_metric.custom_metric_definition.rating_scale.value` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `float_value` (one of the [BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue] choices).
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOption
    extends
        BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOption({
    required this.floatValue,
  });

  final TfArg<num> floatValue;

  @override
  String get blockKey => 'float_value';

  @override
  Map<String, Object?> encode() => {'float_value': floatValue.toTfJson()};
}

/// Sets `string_value` (one of the [BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue] choices).
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueStringValueOption
    extends
        BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueFloatValueOrStringValue {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValueStringValueOption({
    required this.stringValue,
  });

  final TfArg<String> stringValue;

  @override
  String get blockKey => 'string_value';

  @override
  Map<String, Object?> encode() => {'string_value': stringValue.toTfJson()};
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config.evaluator_model_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig({
    this.bedrockEvaluatorModel,
  });

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel
  >?
  bedrockEvaluatorModel;

  Map<String, Object?> encode() => {
    if (bedrockEvaluatorModel != null)
      'bedrock_evaluator_model': [
        for (final e in bedrockEvaluatorModel!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.automated.custom_metric_config.evaluator_model_config.bedrock_evaluator_model` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel {
  const BedrockEvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel({
    required this.modelIdentifier,
  });

  final TfArg<String> modelIdentifier;

  Map<String, Object?> encode() => {
    'model_identifier': modelIdentifier.toTfJson(),
  };
}

/// Typed helper for the `evaluation_config.automated.dataset_metric_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfig {
  const BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfig({
    required this.metricNames,
    required this.taskType,
    this.dataset,
  });

  final TfArg<List<Object?>> metricNames;

  final TfArg<
    BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigTaskType
  >
  taskType;

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset
  >?
  dataset;

  Map<String, Object?> encode() => {
    'metric_names': metricNames.toTfJson(),
    'task_type': taskType.toTfJson(),
    if (dataset != null) 'dataset': [for (final e in dataset!) e.encode()],
  };
}

/// `task_type` — derived from the provider schema description.
enum BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigTaskType
    implements TerraformEnum {
  summarization('Summarization'),
  classification('Classification'),
  questionandanswer('QuestionAndAnswer'),
  generation('Generation'),
  custom('Custom');

  const BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigTaskType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_config.automated.dataset_metric_config.dataset` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset {
  const BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset({
    required this.name,
    this.datasetLocation,
  });

  final TfArg<String> name;

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation
  >?
  datasetLocation;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (datasetLocation != null)
      'dataset_location': [for (final e in datasetLocation!) e.encode()],
  };
}

/// Typed helper for the `evaluation_config.automated.dataset_metric_config.dataset.dataset_location` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation {
  const BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation({
    required this.s3Uri,
  });

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `evaluation_config.automated.evaluator_model_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig {
  const BedrockEvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig({
    this.bedrockEvaluatorModel,
  });

  final List<
    BedrockEvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel
  >?
  bedrockEvaluatorModel;

  Map<String, Object?> encode() => {
    if (bedrockEvaluatorModel != null)
      'bedrock_evaluator_model': [
        for (final e in bedrockEvaluatorModel!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.automated.evaluator_model_config.bedrock_evaluator_model` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel {
  const BedrockEvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel({
    required this.modelIdentifier,
  });

  final TfArg<String> modelIdentifier;

  Map<String, Object?> encode() => {
    'model_identifier': modelIdentifier.toTfJson(),
  };
}

/// Typed helper for the `evaluation_config.human` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigHuman {
  const BedrockEvaluationJobEvaluationConfigHuman({
    this.customMetric,
    this.datasetMetricConfig,
    this.humanWorkflowConfig,
  });

  final List<BedrockEvaluationJobEvaluationConfigHumanCustomMetric>?
  customMetric;

  final List<BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfig>?
  datasetMetricConfig;

  final List<BedrockEvaluationJobEvaluationConfigHumanHumanWorkflowConfig>?
  humanWorkflowConfig;

  Map<String, Object?> encode() => {
    if (customMetric != null)
      'custom_metric': [for (final e in customMetric!) e.encode()],
    if (datasetMetricConfig != null)
      'dataset_metric_config': [
        for (final e in datasetMetricConfig!) e.encode(),
      ],
    if (humanWorkflowConfig != null)
      'human_workflow_config': [
        for (final e in humanWorkflowConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.human.custom_metric` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigHumanCustomMetric {
  const BedrockEvaluationJobEvaluationConfigHumanCustomMetric({
    this.description,
    required this.name,
    required this.ratingMethod,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<BedrockEvaluationJobEvaluationConfigHumanCustomMetricRatingMethod>
  ratingMethod;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    'rating_method': ratingMethod.toTfJson(),
  };
}

/// `rating_method` — derived from the provider schema description.
enum BedrockEvaluationJobEvaluationConfigHumanCustomMetricRatingMethod
    implements TerraformEnum {
  thumbsupdown('ThumbsUpDown'),
  individuallikertscale('IndividualLikertScale'),
  comparisonlikertscale('ComparisonLikertScale'),
  comparisonchoice('ComparisonChoice'),
  comparisonrank('ComparisonRank');

  const BedrockEvaluationJobEvaluationConfigHumanCustomMetricRatingMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_config.human.dataset_metric_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfig {
  const BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfig({
    required this.metricNames,
    required this.taskType,
    this.dataset,
  });

  final TfArg<List<Object?>> metricNames;

  final TfArg<
    BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigTaskType
  >
  taskType;

  final List<
    BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigDataset
  >?
  dataset;

  Map<String, Object?> encode() => {
    'metric_names': metricNames.toTfJson(),
    'task_type': taskType.toTfJson(),
    if (dataset != null) 'dataset': [for (final e in dataset!) e.encode()],
  };
}

/// `task_type` — derived from the provider schema description.
enum BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigTaskType
    implements TerraformEnum {
  summarization('Summarization'),
  classification('Classification'),
  questionandanswer('QuestionAndAnswer'),
  generation('Generation'),
  custom('Custom');

  const BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigTaskType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_config.human.dataset_metric_config.dataset` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigDataset {
  const BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigDataset({
    required this.name,
    this.datasetLocation,
  });

  final TfArg<String> name;

  final List<
    BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation
  >?
  datasetLocation;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (datasetLocation != null)
      'dataset_location': [for (final e in datasetLocation!) e.encode()],
  };
}

/// Typed helper for the `evaluation_config.human.dataset_metric_config.dataset.dataset_location` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation {
  const BedrockEvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation({
    required this.s3Uri,
  });

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `evaluation_config.human.human_workflow_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfigHumanHumanWorkflowConfig {
  const BedrockEvaluationJobEvaluationConfigHumanHumanWorkflowConfig({
    required this.flowDefinitionArn,
    this.instructions,
  });

  final TfArg<String> flowDefinitionArn;

  final TfArg<String>? instructions;

  Map<String, Object?> encode() => {
    'flow_definition_arn': flowDefinitionArn.toTfJson(),
    if (instructions != null) 'instructions': instructions!.toTfJson(),
  };
}

/// Typed helper for the `inference_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfig {
  const BedrockEvaluationJobInferenceConfig({required this.modelOrRagConfig});

  final BedrockEvaluationJobInferenceConfigModelOrRagConfig modelOrRagConfig;

  Map<String, Object?> encode() => {...modelOrRagConfig.encode()};
}

/// Exactly one of `model`, `rag_config` on the `inference_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobInferenceConfigModelOrRagConfig {
  const BedrockEvaluationJobInferenceConfigModelOrRagConfig();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `model` (one of the [BedrockEvaluationJobInferenceConfigModelOrRagConfig] choices).
final class BedrockEvaluationJobInferenceConfigModelOption
    extends BedrockEvaluationJobInferenceConfigModelOrRagConfig {
  const BedrockEvaluationJobInferenceConfigModelOption({required this.model});

  final List<BedrockEvaluationJobInferenceConfigModel> model;

  @override
  String get blockKey => 'model';

  @override
  Map<String, Object?> encode() => {
    'model': [for (final e in model) e.encode()],
  };
}

/// Sets `rag_config` (one of the [BedrockEvaluationJobInferenceConfigModelOrRagConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigOption
    extends BedrockEvaluationJobInferenceConfigModelOrRagConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigOption({
    required this.ragConfig,
  });

  final List<BedrockEvaluationJobInferenceConfigRagConfig> ragConfig;

  @override
  String get blockKey => 'rag_config';

  @override
  Map<String, Object?> encode() => {
    'rag_config': [for (final e in ragConfig) e.encode()],
  };
}

/// Typed helper for the `inference_config.model` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigModel {
  const BedrockEvaluationJobInferenceConfigModel({
    required this.bedrockModelOrPrecomputedInferenceSource,
  });

  final BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource
  bedrockModelOrPrecomputedInferenceSource;

  Map<String, Object?> encode() => {
    ...bedrockModelOrPrecomputedInferenceSource.encode(),
  };
}

/// Exactly one of `bedrock_model`, `precomputed_inference_source` on the `inference_config.model` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource {
  const BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `bedrock_model` (one of the [BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource] choices).
final class BedrockEvaluationJobInferenceConfigModelBedrockModelOption
    extends
        BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource {
  const BedrockEvaluationJobInferenceConfigModelBedrockModelOption({
    required this.bedrockModel,
  });

  final List<BedrockEvaluationJobInferenceConfigModelBedrockModel> bedrockModel;

  @override
  String get blockKey => 'bedrock_model';

  @override
  Map<String, Object?> encode() => {
    'bedrock_model': [for (final e in bedrockModel) e.encode()],
  };
}

/// Sets `precomputed_inference_source` (one of the [BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource] choices).
final class BedrockEvaluationJobInferenceConfigModelPrecomputedInferenceSourceOption
    extends
        BedrockEvaluationJobInferenceConfigModelBedrockModelOrPrecomputedInferenceSource {
  const BedrockEvaluationJobInferenceConfigModelPrecomputedInferenceSourceOption({
    required this.precomputedInferenceSource,
  });

  final List<BedrockEvaluationJobInferenceConfigModelPrecomputedInferenceSource>
  precomputedInferenceSource;

  @override
  String get blockKey => 'precomputed_inference_source';

  @override
  Map<String, Object?> encode() => {
    'precomputed_inference_source': [
      for (final e in precomputedInferenceSource) e.encode(),
    ],
  };
}

/// Typed helper for the `inference_config.model.bedrock_model` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigModelBedrockModel {
  const BedrockEvaluationJobInferenceConfigModelBedrockModel({
    this.inferenceParams,
    required this.modelIdentifier,
    this.performanceConfig,
  });

  final TfArg<String>? inferenceParams;

  final TfArg<String> modelIdentifier;

  final List<
    BedrockEvaluationJobInferenceConfigModelBedrockModelPerformanceConfig
  >?
  performanceConfig;

  Map<String, Object?> encode() => {
    if (inferenceParams != null)
      'inference_params': inferenceParams!.toTfJson(),
    'model_identifier': modelIdentifier.toTfJson(),
    if (performanceConfig != null)
      'performance_config': [for (final e in performanceConfig!) e.encode()],
  };
}

/// Typed helper for the `inference_config.model.bedrock_model.performance_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigModelBedrockModelPerformanceConfig {
  const BedrockEvaluationJobInferenceConfigModelBedrockModelPerformanceConfig({
    this.latency,
  });

  final TfArg<
    BedrockEvaluationJobInferenceConfigModelBedrockModelPerformanceConfigLatency
  >?
  latency;

  Map<String, Object?> encode() => {
    if (latency != null) 'latency': latency!.toTfJson(),
  };
}

/// `latency` — derived from the provider schema description.
enum BedrockEvaluationJobInferenceConfigModelBedrockModelPerformanceConfigLatency
    implements TerraformEnum {
  standard('standard'),
  optimized('optimized');

  const BedrockEvaluationJobInferenceConfigModelBedrockModelPerformanceConfigLatency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inference_config.model.precomputed_inference_source` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigModelPrecomputedInferenceSource {
  const BedrockEvaluationJobInferenceConfigModelPrecomputedInferenceSource({
    required this.inferenceSourceIdentifier,
  });

  final TfArg<String> inferenceSourceIdentifier;

  Map<String, Object?> encode() => {
    'inference_source_identifier': inferenceSourceIdentifier.toTfJson(),
  };
}

/// Typed helper for the `inference_config.rag_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfig {
  const BedrockEvaluationJobInferenceConfigRagConfig({
    required this.knowledgeBaseConfigOrPrecomputedRagSourceConfig,
  });

  final BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig
  knowledgeBaseConfigOrPrecomputedRagSourceConfig;

  Map<String, Object?> encode() => {
    ...knowledgeBaseConfigOrPrecomputedRagSourceConfig.encode(),
  };
}

/// Exactly one of `knowledge_base_config`, `precomputed_rag_source_config` on the `inference_config.rag_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `knowledge_base_config` (one of the [BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOption
    extends
        BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOption({
    required this.knowledgeBaseConfig,
  });

  final List<BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig>
  knowledgeBaseConfig;

  @override
  String get blockKey => 'knowledge_base_config';

  @override
  Map<String, Object?> encode() => {
    'knowledge_base_config': [for (final e in knowledgeBaseConfig) e.encode()],
  };
}

/// Sets `precomputed_rag_source_config` (one of the [BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigOption
    extends
        BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigOrPrecomputedRagSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigOption({
    required this.precomputedRagSourceConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig
  >
  precomputedRagSourceConfig;

  @override
  String get blockKey => 'precomputed_rag_source_config';

  @override
  Map<String, Object?> encode() => {
    'precomputed_rag_source_config': [
      for (final e in precomputedRagSourceConfig) e.encode(),
    ],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig({
    required this.retrieveAndGenerateConfigOrRetrieveConfig,
  });

  final BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig
  retrieveAndGenerateConfigOrRetrieveConfig;

  Map<String, Object?> encode() => {
    ...retrieveAndGenerateConfigOrRetrieveConfig.encode(),
  };
}

/// Exactly one of `retrieve_and_generate_config`, `retrieve_config` on the `inference_config.rag_config.knowledge_base_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `retrieve_and_generate_config` (one of the [BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOption
    extends
        BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOption({
    required this.retrieveAndGenerateConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig
  >
  retrieveAndGenerateConfig;

  @override
  String get blockKey => 'retrieve_and_generate_config';

  @override
  Map<String, Object?> encode() => {
    'retrieve_and_generate_config': [
      for (final e in retrieveAndGenerateConfig) e.encode(),
    ],
  };
}

/// Sets `retrieve_config` (one of the [BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigOption
    extends
        BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigOrRetrieveConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigOption({
    required this.retrieveConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig
  >
  retrieveConfig;

  @override
  String get blockKey => 'retrieve_config';

  @override
  Map<String, Object?> encode() => {
    'retrieve_config': [for (final e in retrieveConfig) e.encode()],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_and_generate_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig({
    required this.knowledgeBaseId,
    required this.modelArn,
    this.retrievalConfiguration,
  });

  final TfArg<String> knowledgeBaseId;

  final TfArg<String> modelArn;

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration
  >?
  retrievalConfiguration;

  Map<String, Object?> encode() => {
    'knowledge_base_id': knowledgeBaseId.toTfJson(),
    'model_arn': modelArn.toTfJson(),
    if (retrievalConfiguration != null)
      'retrieval_configuration': [
        for (final e in retrievalConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_and_generate_config.retrieval_configuration` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfiguration({
    this.vectorSearchConfiguration,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration
  >?
  vectorSearchConfiguration;

  Map<String, Object?> encode() => {
    if (vectorSearchConfiguration != null)
      'vector_search_configuration': [
        for (final e in vectorSearchConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_and_generate_config.retrieval_configuration.vector_search_configuration` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfigRetrievalConfigurationVectorSearchConfiguration({
    this.numberOfResults,
  });

  final TfArg<num>? numberOfResults;

  Map<String, Object?> encode() => {
    if (numberOfResults != null)
      'number_of_results': numberOfResults!.toTfJson(),
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig({
    required this.knowledgeBaseId,
    this.knowledgeBaseRetrievalConfiguration,
  });

  final TfArg<String> knowledgeBaseId;

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration
  >?
  knowledgeBaseRetrievalConfiguration;

  Map<String, Object?> encode() => {
    'knowledge_base_id': knowledgeBaseId.toTfJson(),
    if (knowledgeBaseRetrievalConfiguration != null)
      'knowledge_base_retrieval_configuration': [
        for (final e in knowledgeBaseRetrievalConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_config.knowledge_base_retrieval_configuration` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfiguration({
    this.vectorSearchConfiguration,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfigurationVectorSearchConfiguration
  >?
  vectorSearchConfiguration;

  Map<String, Object?> encode() => {
    if (vectorSearchConfiguration != null)
      'vector_search_configuration': [
        for (final e in vectorSearchConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_config.knowledge_base_retrieval_configuration.vector_search_configuration` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfigurationVectorSearchConfiguration {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfigKnowledgeBaseRetrievalConfigurationVectorSearchConfiguration({
    this.numberOfResults,
  });

  final TfArg<num>? numberOfResults;

  Map<String, Object?> encode() => {
    if (numberOfResults != null)
      'number_of_results': numberOfResults!.toTfJson(),
  };
}

/// Typed helper for the `inference_config.rag_config.precomputed_rag_source_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig({
    required this.retrieveAndGenerateSourceConfigOrRetrieveSourceConfig,
  });

  final BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig
  retrieveAndGenerateSourceConfigOrRetrieveSourceConfig;

  Map<String, Object?> encode() => {
    ...retrieveAndGenerateSourceConfigOrRetrieveSourceConfig.encode(),
  };
}

/// Exactly one of `retrieve_and_generate_source_config`, `retrieve_source_config` on the `inference_config.rag_config.precomputed_rag_source_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `retrieve_and_generate_source_config` (one of the [BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOption
    extends
        BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOption({
    required this.retrieveAndGenerateSourceConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig
  >
  retrieveAndGenerateSourceConfig;

  @override
  String get blockKey => 'retrieve_and_generate_source_config';

  @override
  Map<String, Object?> encode() => {
    'retrieve_and_generate_source_config': [
      for (final e in retrieveAndGenerateSourceConfig) e.encode(),
    ],
  };
}

/// Sets `retrieve_source_config` (one of the [BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig] choices).
final class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfigOption
    extends
        BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfigOrRetrieveSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfigOption({
    required this.retrieveSourceConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig
  >
  retrieveSourceConfig;

  @override
  String get blockKey => 'retrieve_source_config';

  @override
  Map<String, Object?> encode() => {
    'retrieve_source_config': [
      for (final e in retrieveSourceConfig) e.encode(),
    ],
  };
}

/// Typed helper for the `inference_config.rag_config.precomputed_rag_source_config.retrieve_and_generate_source_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig({
    required this.ragSourceIdentifier,
  });

  final TfArg<String> ragSourceIdentifier;

  Map<String, Object?> encode() => {
    'rag_source_identifier': ragSourceIdentifier.toTfJson(),
  };
}

/// Typed helper for the `inference_config.rag_config.precomputed_rag_source_config.retrieve_source_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig({
    required this.ragSourceIdentifier,
  });

  final TfArg<String> ragSourceIdentifier;

  Map<String, Object?> encode() => {
    'rag_source_identifier': ragSourceIdentifier.toTfJson(),
  };
}

/// Typed helper for the `output_data_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobOutputDataConfig {
  const BedrockEvaluationJobOutputDataConfig({required this.s3Uri});

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Factory wrapper for `aws_bedrock_evaluation_job`.
final class AwsBedrockEvaluationJob extends Resource {
  static const String tfType = 'aws_bedrock_evaluation_job';

  AwsBedrockEvaluationJob({
    required super.localName,
    TfArg<BedrockEvaluationJobApplicationType>? applicationType,
    TfArg<String>? customerEncryptionKeyId,
    TfArg<String>? jobDescription,
    required TfArg<String> jobName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    List<BedrockEvaluationJobEvaluationConfig>? evaluationConfig,
    List<BedrockEvaluationJobInferenceConfig>? inferenceConfig,
    List<BedrockEvaluationJobOutputDataConfig>? outputDataConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applicationType != null) 'application_type': applicationType,
           if (customerEncryptionKeyId != null)
             'customer_encryption_key_id': customerEncryptionKeyId,
           if (jobDescription != null) 'job_description': jobDescription,
           'job_name': jobName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
           if (evaluationConfig != null)
             'evaluation_config': TfArg.literal([
               for (final e in evaluationConfig) e.encode(),
             ]),
           if (inferenceConfig != null)
             'inference_config': TfArg.literal([
               for (final e in inferenceConfig) e.encode(),
             ]),
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal([
               for (final e in outputDataConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockEvaluationJobSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `failure_messages` attribute.
  TfRef<List<String>> get failureMessages =>
      TfRef.attribute<List<String>>(this, 'failure_messages');

  /// Reference to `job_arn` attribute.
  TfRef<String> get jobArn => TfRef.attribute<String>(this, 'job_arn');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobType => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
