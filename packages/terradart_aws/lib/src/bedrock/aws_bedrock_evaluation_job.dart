// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

/// Exactly one of `automated`, `human` on the `evaluation_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.automated(...)`.
sealed class BedrockEvaluationJobEvaluationConfig {
  const BedrockEvaluationJobEvaluationConfig();

  /// Sets `automated`.
  const factory BedrockEvaluationJobEvaluationConfig.automated(
    List<BedrockEvaluationJobAutomated> automated,
  ) = BedrockEvaluationJobEvaluationConfigAutomated;

  /// Sets `human`.
  const factory BedrockEvaluationJobEvaluationConfig.human(
    List<BedrockEvaluationJobHuman> human,
  ) = BedrockEvaluationJobEvaluationConfigHuman;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobEvaluationConfig.automated] choice: sets `automated`.
final class BedrockEvaluationJobEvaluationConfigAutomated
    extends BedrockEvaluationJobEvaluationConfig {
  const BedrockEvaluationJobEvaluationConfigAutomated(this.automated);

  final List<BedrockEvaluationJobAutomated> automated;

  @override
  String get blockKey => 'automated';

  @override
  Map<String, Object?> encode() => {
    'automated': [for (final e in automated) e.encode()],
  };
}

/// The [BedrockEvaluationJobEvaluationConfig.human] choice: sets `human`.
final class BedrockEvaluationJobEvaluationConfigHuman
    extends BedrockEvaluationJobEvaluationConfig {
  const BedrockEvaluationJobEvaluationConfigHuman(this.human);

  final List<BedrockEvaluationJobHuman> human;

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
final class BedrockEvaluationJobAutomated {
  const BedrockEvaluationJobAutomated({
    this.customMetricConfig,
    this.datasetMetricConfig,
    this.evaluatorModelConfig,
  });

  final List<BedrockEvaluationJobCustomMetricConfig>? customMetricConfig;

  final List<BedrockEvaluationJobDatasetMetricConfig>? datasetMetricConfig;

  final List<BedrockEvaluationJobEvaluatorModelConfig>? evaluatorModelConfig;

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
final class BedrockEvaluationJobCustomMetricConfig {
  const BedrockEvaluationJobCustomMetricConfig({
    this.customMetric,
    this.evaluatorModelConfig,
  });

  final List<BedrockEvaluationJobCustomMetricConfigCustomMetric>? customMetric;

  final List<BedrockEvaluationJobEvaluatorModelConfig>? evaluatorModelConfig;

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
final class BedrockEvaluationJobCustomMetricConfigCustomMetric {
  const BedrockEvaluationJobCustomMetricConfigCustomMetric({
    this.customMetricDefinition,
  });

  final List<BedrockEvaluationJobCustomMetricDefinition>?
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
final class BedrockEvaluationJobCustomMetricDefinition {
  const BedrockEvaluationJobCustomMetricDefinition({
    required this.instructions,
    required this.name,
    this.ratingScale,
  });

  final TfArg<String> instructions;

  final TfArg<String> name;

  final List<BedrockEvaluationJobRatingScale>? ratingScale;

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
final class BedrockEvaluationJobRatingScale {
  const BedrockEvaluationJobRatingScale({required this.definition, this.value});

  final TfArg<String> definition;

  final List<BedrockEvaluationJobValue>? value;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Exactly one of `float_value`, `string_value` on the `evaluation_config.automated.custom_metric_config.custom_metric.custom_metric_definition.rating_scale.value` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.floatValue(...)`.
sealed class BedrockEvaluationJobValue {
  const BedrockEvaluationJobValue();

  /// Sets `float_value`.
  const factory BedrockEvaluationJobValue.floatValue(TfArg<num> floatValue) =
      BedrockEvaluationJobFloatValue;

  /// Sets `string_value`.
  const factory BedrockEvaluationJobValue.stringValue(
    TfArg<String> stringValue,
  ) = BedrockEvaluationJobStringValue;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobValue.floatValue] choice: sets `float_value`.
final class BedrockEvaluationJobFloatValue extends BedrockEvaluationJobValue {
  const BedrockEvaluationJobFloatValue(this.floatValue);

  final TfArg<num> floatValue;

  @override
  String get blockKey => 'float_value';

  @override
  Map<String, Object?> encode() => {'float_value': floatValue.toTfJson()};
}

/// The [BedrockEvaluationJobValue.stringValue] choice: sets `string_value`.
final class BedrockEvaluationJobStringValue extends BedrockEvaluationJobValue {
  const BedrockEvaluationJobStringValue(this.stringValue);

  final TfArg<String> stringValue;

  @override
  String get blockKey => 'string_value';

  @override
  Map<String, Object?> encode() => {'string_value': stringValue.toTfJson()};
}

/// Typed helper for the `evaluation_config.automated.evaluator_model_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockEvaluationJobEvaluatorModelConfig {
  const BedrockEvaluationJobEvaluatorModelConfig({this.bedrockEvaluatorModel});

  final List<BedrockEvaluationJobBedrockEvaluatorModel>? bedrockEvaluatorModel;

  Map<String, Object?> encode() => {
    if (bedrockEvaluatorModel != null)
      'bedrock_evaluator_model': [
        for (final e in bedrockEvaluatorModel!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluation_config.automated.evaluator_model_config.bedrock_evaluator_model` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockEvaluationJobBedrockEvaluatorModel {
  const BedrockEvaluationJobBedrockEvaluatorModel({
    required this.modelIdentifier,
  });

  final TfArg<String> modelIdentifier;

  Map<String, Object?> encode() => {
    'model_identifier': modelIdentifier.toTfJson(),
  };
}

/// Typed helper for the `evaluation_config.automated.dataset_metric_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockEvaluationJobDatasetMetricConfig {
  const BedrockEvaluationJobDatasetMetricConfig({
    required this.metricNames,
    required this.taskType,
    this.dataset,
  });

  final TfArg<List<String>> metricNames;

  final TfArg<BedrockEvaluationJobTaskType> taskType;

  final List<BedrockEvaluationJobDataset>? dataset;

  Map<String, Object?> encode() => {
    'metric_names': metricNames.toTfJson(),
    'task_type': taskType.toTfJson(),
    if (dataset != null) 'dataset': [for (final e in dataset!) e.encode()],
  };
}

/// `task_type` — derived from the provider schema description.
enum BedrockEvaluationJobTaskType implements TerraformEnum {
  summarization('Summarization'),
  classification('Classification'),
  questionandanswer('QuestionAndAnswer'),
  generation('Generation'),
  custom('Custom');

  const BedrockEvaluationJobTaskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_config.automated.dataset_metric_config.dataset` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockEvaluationJobDataset {
  const BedrockEvaluationJobDataset({required this.name, this.datasetLocation});

  final TfArg<String> name;

  final List<BedrockEvaluationJobDatasetLocation>? datasetLocation;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (datasetLocation != null)
      'dataset_location': [for (final e in datasetLocation!) e.encode()],
  };
}

/// Typed helper for the `evaluation_config.automated.dataset_metric_config.dataset.dataset_location` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockEvaluationJobDatasetLocation {
  const BedrockEvaluationJobDatasetLocation({required this.s3Uri});

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `evaluation_config.human` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobHuman {
  const BedrockEvaluationJobHuman({
    this.customMetric,
    this.datasetMetricConfig,
    this.humanWorkflowConfig,
  });

  final List<BedrockEvaluationJobCustomMetric>? customMetric;

  final List<BedrockEvaluationJobDatasetMetricConfig>? datasetMetricConfig;

  final List<BedrockEvaluationJobHumanWorkflowConfig>? humanWorkflowConfig;

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
final class BedrockEvaluationJobCustomMetric {
  const BedrockEvaluationJobCustomMetric({
    this.description,
    required this.name,
    required this.ratingMethod,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<BedrockEvaluationJobRatingMethod> ratingMethod;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'rating_method': ratingMethod.toTfJson(),
  };
}

/// `rating_method` — derived from the provider schema description.
enum BedrockEvaluationJobRatingMethod implements TerraformEnum {
  thumbsupdown('ThumbsUpDown'),
  individuallikertscale('IndividualLikertScale'),
  comparisonlikertscale('ComparisonLikertScale'),
  comparisonchoice('ComparisonChoice'),
  comparisonrank('ComparisonRank');

  const BedrockEvaluationJobRatingMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_config.human.human_workflow_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobHumanWorkflowConfig {
  const BedrockEvaluationJobHumanWorkflowConfig({
    required this.flowDefinitionArn,
    this.instructions,
  });

  final TfArg<String> flowDefinitionArn;

  final TfArg<String>? instructions;

  Map<String, Object?> encode() => {
    'flow_definition_arn': flowDefinitionArn.toTfJson(),
    'instructions': ?instructions?.toTfJson(),
  };
}

/// Exactly one of `model`, `rag_config` on the `inference_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.model(...)`.
sealed class BedrockEvaluationJobInferenceConfig {
  const BedrockEvaluationJobInferenceConfig();

  /// Sets `model`.
  const factory BedrockEvaluationJobInferenceConfig.model(
    List<BedrockEvaluationJobModel> model,
  ) = BedrockEvaluationJobInferenceConfigModel;

  /// Sets `rag_config`.
  const factory BedrockEvaluationJobInferenceConfig.ragConfig(
    List<BedrockEvaluationJobRagConfig> ragConfig,
  ) = BedrockEvaluationJobInferenceConfigRagConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobInferenceConfig.model] choice: sets `model`.
final class BedrockEvaluationJobInferenceConfigModel
    extends BedrockEvaluationJobInferenceConfig {
  const BedrockEvaluationJobInferenceConfigModel(this.model);

  final List<BedrockEvaluationJobModel> model;

  @override
  String get blockKey => 'model';

  @override
  Map<String, Object?> encode() => {
    'model': [for (final e in model) e.encode()],
  };
}

/// The [BedrockEvaluationJobInferenceConfig.ragConfig] choice: sets `rag_config`.
final class BedrockEvaluationJobInferenceConfigRagConfig
    extends BedrockEvaluationJobInferenceConfig {
  const BedrockEvaluationJobInferenceConfigRagConfig(this.ragConfig);

  final List<BedrockEvaluationJobRagConfig> ragConfig;

  @override
  String get blockKey => 'rag_config';

  @override
  Map<String, Object?> encode() => {
    'rag_config': [for (final e in ragConfig) e.encode()],
  };
}

/// Exactly one of `bedrock_model`, `precomputed_inference_source` on the `inference_config.model` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.bedrockModel(...)`.
sealed class BedrockEvaluationJobModel {
  const BedrockEvaluationJobModel();

  /// Sets `bedrock_model`.
  const factory BedrockEvaluationJobModel.bedrockModel(
    List<BedrockEvaluationJobBedrockModel> bedrockModel,
  ) = BedrockEvaluationJobBedrockModelChoice;

  /// Sets `precomputed_inference_source`.
  const factory BedrockEvaluationJobModel.precomputedInferenceSource(
    List<BedrockEvaluationJobPrecomputedInferenceSource>
    precomputedInferenceSource,
  ) = BedrockEvaluationJobModelPrecomputedInferenceSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobModel.bedrockModel] choice: sets `bedrock_model`.
final class BedrockEvaluationJobBedrockModelChoice
    extends BedrockEvaluationJobModel {
  const BedrockEvaluationJobBedrockModelChoice(this.bedrockModel);

  final List<BedrockEvaluationJobBedrockModel> bedrockModel;

  @override
  String get blockKey => 'bedrock_model';

  @override
  Map<String, Object?> encode() => {
    'bedrock_model': [for (final e in bedrockModel) e.encode()],
  };
}

/// The [BedrockEvaluationJobModel.precomputedInferenceSource] choice: sets `precomputed_inference_source`.
final class BedrockEvaluationJobModelPrecomputedInferenceSource
    extends BedrockEvaluationJobModel {
  const BedrockEvaluationJobModelPrecomputedInferenceSource(
    this.precomputedInferenceSource,
  );

  final List<BedrockEvaluationJobPrecomputedInferenceSource>
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
final class BedrockEvaluationJobBedrockModel {
  const BedrockEvaluationJobBedrockModel({
    this.inferenceParams,
    required this.modelIdentifier,
    this.performanceConfig,
  });

  final TfArg<String>? inferenceParams;

  final TfArg<String> modelIdentifier;

  final List<BedrockEvaluationJobPerformanceConfig>? performanceConfig;

  Map<String, Object?> encode() => {
    'inference_params': ?inferenceParams?.toTfJson(),
    'model_identifier': modelIdentifier.toTfJson(),
    if (performanceConfig != null)
      'performance_config': [for (final e in performanceConfig!) e.encode()],
  };
}

/// Typed helper for the `inference_config.model.bedrock_model.performance_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobPerformanceConfig {
  const BedrockEvaluationJobPerformanceConfig({this.latency});

  final TfArg<BedrockEvaluationJobLatency>? latency;

  Map<String, Object?> encode() => {'latency': ?latency?.toTfJson()};
}

/// `latency` — derived from the provider schema description.
enum BedrockEvaluationJobLatency implements TerraformEnum {
  standard('standard'),
  optimized('optimized');

  const BedrockEvaluationJobLatency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inference_config.model.precomputed_inference_source` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobPrecomputedInferenceSource {
  const BedrockEvaluationJobPrecomputedInferenceSource({
    required this.inferenceSourceIdentifier,
  });

  final TfArg<String> inferenceSourceIdentifier;

  Map<String, Object?> encode() => {
    'inference_source_identifier': inferenceSourceIdentifier.toTfJson(),
  };
}

/// Exactly one of `knowledge_base_config`, `precomputed_rag_source_config` on the `inference_config.rag_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.knowledgeBaseConfig(...)`.
sealed class BedrockEvaluationJobRagConfig {
  const BedrockEvaluationJobRagConfig();

  /// Sets `knowledge_base_config`.
  const factory BedrockEvaluationJobRagConfig.knowledgeBaseConfig(
    List<BedrockEvaluationJobKnowledgeBaseConfig> knowledgeBaseConfig,
  ) = BedrockEvaluationJobRagConfigKnowledgeBaseConfig;

  /// Sets `precomputed_rag_source_config`.
  const factory BedrockEvaluationJobRagConfig.precomputedRagSourceConfig(
    List<BedrockEvaluationJobPrecomputedRagSourceConfig>
    precomputedRagSourceConfig,
  ) = BedrockEvaluationJobRagConfigPrecomputedRagSourceConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobRagConfig.knowledgeBaseConfig] choice: sets `knowledge_base_config`.
final class BedrockEvaluationJobRagConfigKnowledgeBaseConfig
    extends BedrockEvaluationJobRagConfig {
  const BedrockEvaluationJobRagConfigKnowledgeBaseConfig(
    this.knowledgeBaseConfig,
  );

  final List<BedrockEvaluationJobKnowledgeBaseConfig> knowledgeBaseConfig;

  @override
  String get blockKey => 'knowledge_base_config';

  @override
  Map<String, Object?> encode() => {
    'knowledge_base_config': [for (final e in knowledgeBaseConfig) e.encode()],
  };
}

/// The [BedrockEvaluationJobRagConfig.precomputedRagSourceConfig] choice: sets `precomputed_rag_source_config`.
final class BedrockEvaluationJobRagConfigPrecomputedRagSourceConfig
    extends BedrockEvaluationJobRagConfig {
  const BedrockEvaluationJobRagConfigPrecomputedRagSourceConfig(
    this.precomputedRagSourceConfig,
  );

  final List<BedrockEvaluationJobPrecomputedRagSourceConfig>
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

/// Exactly one of `retrieve_and_generate_config`, `retrieve_config` on the `inference_config.rag_config.knowledge_base_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.retrieveAndGenerateConfig(...)`.
sealed class BedrockEvaluationJobKnowledgeBaseConfig {
  const BedrockEvaluationJobKnowledgeBaseConfig();

  /// Sets `retrieve_and_generate_config`.
  const factory BedrockEvaluationJobKnowledgeBaseConfig.retrieveAndGenerateConfig(
    List<BedrockEvaluationJobRetrieveAndGenerateConfig>
    retrieveAndGenerateConfig,
  ) = BedrockEvaluationJobKnowledgeBaseConfigRetrieveAndGenerateConfig;

  /// Sets `retrieve_config`.
  const factory BedrockEvaluationJobKnowledgeBaseConfig.retrieveConfig(
    List<BedrockEvaluationJobRetrieveConfig> retrieveConfig,
  ) = BedrockEvaluationJobKnowledgeBaseConfigRetrieveConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobKnowledgeBaseConfig.retrieveAndGenerateConfig] choice: sets `retrieve_and_generate_config`.
final class BedrockEvaluationJobKnowledgeBaseConfigRetrieveAndGenerateConfig
    extends BedrockEvaluationJobKnowledgeBaseConfig {
  const BedrockEvaluationJobKnowledgeBaseConfigRetrieveAndGenerateConfig(
    this.retrieveAndGenerateConfig,
  );

  final List<BedrockEvaluationJobRetrieveAndGenerateConfig>
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

/// The [BedrockEvaluationJobKnowledgeBaseConfig.retrieveConfig] choice: sets `retrieve_config`.
final class BedrockEvaluationJobKnowledgeBaseConfigRetrieveConfig
    extends BedrockEvaluationJobKnowledgeBaseConfig {
  const BedrockEvaluationJobKnowledgeBaseConfigRetrieveConfig(
    this.retrieveConfig,
  );

  final List<BedrockEvaluationJobRetrieveConfig> retrieveConfig;

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
final class BedrockEvaluationJobRetrieveAndGenerateConfig {
  const BedrockEvaluationJobRetrieveAndGenerateConfig({
    required this.knowledgeBaseId,
    required this.modelArn,
    this.retrievalConfiguration,
  });

  final TfArg<String> knowledgeBaseId;

  final TfArg<String> modelArn;

  final List<BedrockEvaluationJobRetrievalConfiguration>?
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
final class BedrockEvaluationJobRetrievalConfiguration {
  const BedrockEvaluationJobRetrievalConfiguration({
    this.vectorSearchConfiguration,
  });

  final List<BedrockEvaluationJobVectorSearchConfiguration>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockEvaluationJobVectorSearchConfiguration {
  const BedrockEvaluationJobVectorSearchConfiguration({this.numberOfResults});

  final TfArg<num>? numberOfResults;

  Map<String, Object?> encode() => {
    'number_of_results': ?numberOfResults?.toTfJson(),
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config.retrieve_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobRetrieveConfig {
  const BedrockEvaluationJobRetrieveConfig({
    required this.knowledgeBaseId,
    this.knowledgeBaseRetrievalConfiguration,
  });

  final TfArg<String> knowledgeBaseId;

  final List<BedrockEvaluationJobKnowledgeBaseRetrievalConfiguration>?
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
final class BedrockEvaluationJobKnowledgeBaseRetrievalConfiguration {
  const BedrockEvaluationJobKnowledgeBaseRetrievalConfiguration({
    this.vectorSearchConfiguration,
  });

  final List<BedrockEvaluationJobVectorSearchConfiguration>?
  vectorSearchConfiguration;

  Map<String, Object?> encode() => {
    if (vectorSearchConfiguration != null)
      'vector_search_configuration': [
        for (final e in vectorSearchConfiguration!) e.encode(),
      ],
  };
}

/// Exactly one of `retrieve_and_generate_source_config`, `retrieve_source_config` on the `inference_config.rag_config.precomputed_rag_source_config` block of `aws_bedrock_evaluation_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.retrieveAndGenerateSourceConfig(...)`.
sealed class BedrockEvaluationJobPrecomputedRagSourceConfig {
  const BedrockEvaluationJobPrecomputedRagSourceConfig();

  /// Sets `retrieve_and_generate_source_config`.
  const factory BedrockEvaluationJobPrecomputedRagSourceConfig.retrieveAndGenerateSourceConfig(
    List<BedrockEvaluationJobRetrieveAndGenerateSourceConfig>
    retrieveAndGenerateSourceConfig,
  ) = BedrockEvaluationJobPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig;

  /// Sets `retrieve_source_config`.
  const factory BedrockEvaluationJobPrecomputedRagSourceConfig.retrieveSourceConfig(
    List<BedrockEvaluationJobRetrieveSourceConfig> retrieveSourceConfig,
  ) = BedrockEvaluationJobPrecomputedRagSourceConfigRetrieveSourceConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockEvaluationJobPrecomputedRagSourceConfig.retrieveAndGenerateSourceConfig] choice: sets `retrieve_and_generate_source_config`.
final class BedrockEvaluationJobPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig
    extends BedrockEvaluationJobPrecomputedRagSourceConfig {
  const BedrockEvaluationJobPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig(
    this.retrieveAndGenerateSourceConfig,
  );

  final List<BedrockEvaluationJobRetrieveAndGenerateSourceConfig>
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

/// The [BedrockEvaluationJobPrecomputedRagSourceConfig.retrieveSourceConfig] choice: sets `retrieve_source_config`.
final class BedrockEvaluationJobPrecomputedRagSourceConfigRetrieveSourceConfig
    extends BedrockEvaluationJobPrecomputedRagSourceConfig {
  const BedrockEvaluationJobPrecomputedRagSourceConfigRetrieveSourceConfig(
    this.retrieveSourceConfig,
  );

  final List<BedrockEvaluationJobRetrieveSourceConfig> retrieveSourceConfig;

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
final class BedrockEvaluationJobRetrieveAndGenerateSourceConfig {
  const BedrockEvaluationJobRetrieveAndGenerateSourceConfig({
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
final class BedrockEvaluationJobRetrieveSourceConfig {
  const BedrockEvaluationJobRetrieveSourceConfig({
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
    required RefTo<AwsIamRole> roleArn,
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
           'application_type': ?applicationType,
           'customer_encryption_key_id': ?customerEncryptionKeyId,
           'job_description': ?jobDescription,
           'job_name': jobName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockEvaluationJob>`.
  RefTo<AwsBedrockEvaluationJob> get ref => RefTo.of(this);

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

  /// Reference to `application_type` attribute.
  TfRef<String> get applicationTypeRef =>
      TfRef.attribute<String>(this, 'application_type');

  /// Reference to `customer_encryption_key_id` attribute.
  TfRef<String> get customerEncryptionKeyIdRef =>
      TfRef.attribute<String>(this, 'customer_encryption_key_id');

  /// Reference to `job_description` attribute.
  TfRef<String> get jobDescriptionRef =>
      TfRef.attribute<String>(this, 'job_description');

  /// Reference to `job_name` attribute.
  TfRef<String> get jobNameRef => TfRef.attribute<String>(this, 'job_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroyRef => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
