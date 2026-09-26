// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_evaluation_job`.
const Set<String> _awsBedrockEvaluationJobSensitive = <String>{};

/// Typed helper for the `evaluation_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobEvaluationConfig {
  const BedrockEvaluationJobEvaluationConfig({this.automated, this.human});

  final List<BedrockEvaluationJobEvaluationConfigAutomated>? automated;

  final List<BedrockEvaluationJobEvaluationConfigHuman>? human;

  Map<String, Object?> encode() => {
    if (automated != null)
      'automated': [for (final e in automated!) e.encode()],
    if (human != null) 'human': [for (final e in human!) e.encode()],
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
    this.floatValue,
    this.stringValue,
  });

  final TfArg<num>? floatValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (floatValue != null) 'float_value': floatValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
  };
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

  final TfArg<String> taskType;

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

  final TfArg<String> ratingMethod;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    'rating_method': ratingMethod.toTfJson(),
  };
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

  final TfArg<String> taskType;

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
  const BedrockEvaluationJobInferenceConfig({this.model, this.ragConfig});

  final List<BedrockEvaluationJobInferenceConfigModel>? model;

  final List<BedrockEvaluationJobInferenceConfigRagConfig>? ragConfig;

  Map<String, Object?> encode() => {
    if (model != null) 'model': [for (final e in model!) e.encode()],
    if (ragConfig != null)
      'rag_config': [for (final e in ragConfig!) e.encode()],
  };
}

/// Typed helper for the `inference_config.model` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigModel {
  const BedrockEvaluationJobInferenceConfigModel({
    this.bedrockModel,
    this.precomputedInferenceSource,
  });

  final List<BedrockEvaluationJobInferenceConfigModelBedrockModel>?
  bedrockModel;

  final List<
    BedrockEvaluationJobInferenceConfigModelPrecomputedInferenceSource
  >?
  precomputedInferenceSource;

  Map<String, Object?> encode() => {
    if (bedrockModel != null)
      'bedrock_model': [for (final e in bedrockModel!) e.encode()],
    if (precomputedInferenceSource != null)
      'precomputed_inference_source': [
        for (final e in precomputedInferenceSource!) e.encode(),
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

  final TfArg<String>? latency;

  Map<String, Object?> encode() => {
    if (latency != null) 'latency': latency!.toTfJson(),
  };
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
    this.knowledgeBaseConfig,
    this.precomputedRagSourceConfig,
  });

  final List<BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig>?
  knowledgeBaseConfig;

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig
  >?
  precomputedRagSourceConfig;

  Map<String, Object?> encode() => {
    if (knowledgeBaseConfig != null)
      'knowledge_base_config': [
        for (final e in knowledgeBaseConfig!) e.encode(),
      ],
    if (precomputedRagSourceConfig != null)
      'precomputed_rag_source_config': [
        for (final e in precomputedRagSourceConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `inference_config.rag_config.knowledge_base_config` block of
/// `aws_bedrock_evaluation_job` (derived from provider schema).
@immutable
final class BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig {
  const BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfig({
    this.retrieveAndGenerateConfig,
    this.retrieveConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveAndGenerateConfig
  >?
  retrieveAndGenerateConfig;

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigKnowledgeBaseConfigRetrieveConfig
  >?
  retrieveConfig;

  Map<String, Object?> encode() => {
    if (retrieveAndGenerateConfig != null)
      'retrieve_and_generate_config': [
        for (final e in retrieveAndGenerateConfig!) e.encode(),
      ],
    if (retrieveConfig != null)
      'retrieve_config': [for (final e in retrieveConfig!) e.encode()],
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
    this.retrieveAndGenerateSourceConfig,
    this.retrieveSourceConfig,
  });

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig
  >?
  retrieveAndGenerateSourceConfig;

  final List<
    BedrockEvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig
  >?
  retrieveSourceConfig;

  Map<String, Object?> encode() => {
    if (retrieveAndGenerateSourceConfig != null)
      'retrieve_and_generate_source_config': [
        for (final e in retrieveAndGenerateSourceConfig!) e.encode(),
      ],
    if (retrieveSourceConfig != null)
      'retrieve_source_config': [
        for (final e in retrieveSourceConfig!) e.encode(),
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
    TfArg<String>? applicationType,
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
