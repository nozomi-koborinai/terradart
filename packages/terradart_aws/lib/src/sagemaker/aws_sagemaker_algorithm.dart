// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_algorithm`.
const Set<String> _awsSagemakerAlgorithmSensitive = <String>{};

/// Typed helper for the `inference_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecification {
  const SagemakerAlgorithmInferenceSpecification({
    this.supportedContentTypes,
    this.supportedRealtimeInferenceInstanceTypes,
    this.supportedResponseMimeTypes,
    this.supportedTransformInstanceTypes,
    this.containers,
  });

  final TfArg<List<Object?>>? supportedContentTypes;

  final TfArg<List<Object?>>? supportedRealtimeInferenceInstanceTypes;

  final TfArg<List<Object?>>? supportedResponseMimeTypes;

  final TfArg<List<Object?>>? supportedTransformInstanceTypes;

  final List<SagemakerAlgorithmInferenceSpecificationContainers>? containers;

  Map<String, Object?> encode() => {
    if (supportedContentTypes != null)
      'supported_content_types': supportedContentTypes!.toTfJson(),
    if (supportedRealtimeInferenceInstanceTypes != null)
      'supported_realtime_inference_instance_types':
          supportedRealtimeInferenceInstanceTypes!.toTfJson(),
    if (supportedResponseMimeTypes != null)
      'supported_response_mime_types': supportedResponseMimeTypes!.toTfJson(),
    if (supportedTransformInstanceTypes != null)
      'supported_transform_instance_types': supportedTransformInstanceTypes!
          .toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
  };
}

/// Typed helper for the `inference_specification.containers` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainers {
  const SagemakerAlgorithmInferenceSpecificationContainers({
    this.containerHostname,
    this.environment,
    this.framework,
    this.frameworkVersion,
    this.image,
    this.imageDigest,
    this.isCheckpoint,
    this.modelDataEtag,
    this.modelDataUrl,
    this.nearestModelName,
    this.productId,
    this.additionalS3DataSource,
    this.baseModel,
    this.modelDataSource,
    this.modelInput,
  });

  final TfArg<String>? containerHostname;

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? framework;

  final TfArg<String>? frameworkVersion;

  final TfArg<String>? image;

  final TfArg<String>? imageDigest;

  final TfArg<bool>? isCheckpoint;

  final TfArg<String>? modelDataEtag;

  final TfArg<String>? modelDataUrl;

  final TfArg<String>? nearestModelName;

  final TfArg<String>? productId;

  final List<
    SagemakerAlgorithmInferenceSpecificationContainersAdditionalS3DataSource
  >?
  additionalS3DataSource;

  final List<SagemakerAlgorithmInferenceSpecificationContainersBaseModel>?
  baseModel;

  final List<SagemakerAlgorithmInferenceSpecificationContainersModelDataSource>?
  modelDataSource;

  final List<SagemakerAlgorithmInferenceSpecificationContainersModelInput>?
  modelInput;

  Map<String, Object?> encode() => {
    if (containerHostname != null)
      'container_hostname': containerHostname!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (framework != null) 'framework': framework!.toTfJson(),
    if (frameworkVersion != null)
      'framework_version': frameworkVersion!.toTfJson(),
    if (image != null) 'image': image!.toTfJson(),
    if (imageDigest != null) 'image_digest': imageDigest!.toTfJson(),
    if (isCheckpoint != null) 'is_checkpoint': isCheckpoint!.toTfJson(),
    if (modelDataEtag != null) 'model_data_etag': modelDataEtag!.toTfJson(),
    if (modelDataUrl != null) 'model_data_url': modelDataUrl!.toTfJson(),
    if (nearestModelName != null)
      'nearest_model_name': nearestModelName!.toTfJson(),
    if (productId != null) 'product_id': productId!.toTfJson(),
    if (additionalS3DataSource != null)
      'additional_s3_data_source': [
        for (final e in additionalS3DataSource!) e.encode(),
      ],
    if (baseModel != null)
      'base_model': [for (final e in baseModel!) e.encode()],
    if (modelDataSource != null)
      'model_data_source': [for (final e in modelDataSource!) e.encode()],
    if (modelInput != null)
      'model_input': [for (final e in modelInput!) e.encode()],
  };
}

/// Typed helper for the `inference_specification.containers.additional_s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersAdditionalS3DataSource {
  const SagemakerAlgorithmInferenceSpecificationContainersAdditionalS3DataSource({
    this.compressionType,
    this.etag,
    required this.s3DataType,
    required this.s3Uri,
  });

  final TfArg<String>? compressionType;

  final TfArg<String>? etag;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (etag != null) 'etag': etag!.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `inference_specification.containers.base_model` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersBaseModel {
  const SagemakerAlgorithmInferenceSpecificationContainersBaseModel({
    this.hubContentName,
    this.hubContentVersion,
    this.recipeName,
  });

  final TfArg<String>? hubContentName;

  final TfArg<String>? hubContentVersion;

  final TfArg<String>? recipeName;

  Map<String, Object?> encode() => {
    if (hubContentName != null) 'hub_content_name': hubContentName!.toTfJson(),
    if (hubContentVersion != null)
      'hub_content_version': hubContentVersion!.toTfJson(),
    if (recipeName != null) 'recipe_name': recipeName!.toTfJson(),
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersModelDataSource {
  const SagemakerAlgorithmInferenceSpecificationContainersModelDataSource({
    this.s3DataSource,
  });

  final List<
    SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSource
  >?
  s3DataSource;

  Map<String, Object?> encode() => {
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSource {
  const SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSource({
    required this.compressionType,
    this.etag,
    this.manifestEtag,
    this.manifestS3Uri,
    required this.s3DataType,
    required this.s3Uri,
    this.hubAccessConfig,
    this.modelAccessConfig,
  });

  final TfArg<String> compressionType;

  final TfArg<String>? etag;

  final TfArg<String>? manifestEtag;

  final TfArg<String>? manifestS3Uri;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  final List<
    SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSourceHubAccessConfig
  >?
  hubAccessConfig;

  final List<
    SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSourceModelAccessConfig
  >?
  modelAccessConfig;

  Map<String, Object?> encode() => {
    'compression_type': compressionType.toTfJson(),
    if (etag != null) 'etag': etag!.toTfJson(),
    if (manifestEtag != null) 'manifest_etag': manifestEtag!.toTfJson(),
    if (manifestS3Uri != null) 'manifest_s3_uri': manifestS3Uri!.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (hubAccessConfig != null)
      'hub_access_config': [for (final e in hubAccessConfig!) e.encode()],
    if (modelAccessConfig != null)
      'model_access_config': [for (final e in modelAccessConfig!) e.encode()],
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSourceHubAccessConfig {
  const SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSourceHubAccessConfig({
    this.hubContentArn,
  });

  final TfArg<String>? hubContentArn;

  Map<String, Object?> encode() => {
    if (hubContentArn != null) 'hub_content_arn': hubContentArn!.toTfJson(),
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSourceModelAccessConfig {
  const SagemakerAlgorithmInferenceSpecificationContainersModelDataSourceS3DataSourceModelAccessConfig({
    this.acceptEula,
  });

  final TfArg<bool>? acceptEula;

  Map<String, Object?> encode() => {
    if (acceptEula != null) 'accept_eula': acceptEula!.toTfJson(),
  };
}

/// Typed helper for the `inference_specification.containers.model_input` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecificationContainersModelInput {
  const SagemakerAlgorithmInferenceSpecificationContainersModelInput({
    this.dataInputConfig,
  });

  final TfArg<String>? dataInputConfig;

  Map<String, Object?> encode() => {
    if (dataInputConfig != null)
      'data_input_config': dataInputConfig!.toTfJson(),
  };
}

/// Typed helper for the `training_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecification {
  const SagemakerAlgorithmTrainingSpecification({
    required this.supportedTrainingInstanceTypes,
    this.supportsDistributedTraining,
    required this.trainingImage,
    this.trainingImageDigest,
    this.additionalS3DataSource,
    this.metricDefinitions,
    this.supportedHyperParameters,
    this.supportedTuningJobObjectiveMetrics,
    this.trainingChannels,
  });

  final TfArg<List<Object?>> supportedTrainingInstanceTypes;

  final TfArg<bool>? supportsDistributedTraining;

  final TfArg<String> trainingImage;

  final TfArg<String>? trainingImageDigest;

  final List<SagemakerAlgorithmTrainingSpecificationAdditionalS3DataSource>?
  additionalS3DataSource;

  final List<SagemakerAlgorithmTrainingSpecificationMetricDefinitions>?
  metricDefinitions;

  final List<SagemakerAlgorithmTrainingSpecificationSupportedHyperParameters>?
  supportedHyperParameters;

  final List<
    SagemakerAlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetrics
  >?
  supportedTuningJobObjectiveMetrics;

  final List<SagemakerAlgorithmTrainingSpecificationTrainingChannels>?
  trainingChannels;

  Map<String, Object?> encode() => {
    'supported_training_instance_types': supportedTrainingInstanceTypes
        .toTfJson(),
    if (supportsDistributedTraining != null)
      'supports_distributed_training': supportsDistributedTraining!.toTfJson(),
    'training_image': trainingImage.toTfJson(),
    if (trainingImageDigest != null)
      'training_image_digest': trainingImageDigest!.toTfJson(),
    if (additionalS3DataSource != null)
      'additional_s3_data_source': [
        for (final e in additionalS3DataSource!) e.encode(),
      ],
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
    if (supportedHyperParameters != null)
      'supported_hyper_parameters': [
        for (final e in supportedHyperParameters!) e.encode(),
      ],
    if (supportedTuningJobObjectiveMetrics != null)
      'supported_tuning_job_objective_metrics': [
        for (final e in supportedTuningJobObjectiveMetrics!) e.encode(),
      ],
    if (trainingChannels != null)
      'training_channels': [for (final e in trainingChannels!) e.encode()],
  };
}

/// Typed helper for the `training_specification.additional_s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationAdditionalS3DataSource {
  const SagemakerAlgorithmTrainingSpecificationAdditionalS3DataSource({
    this.compressionType,
    this.etag,
    required this.s3DataType,
    required this.s3Uri,
  });

  final TfArg<String>? compressionType;

  final TfArg<String>? etag;

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (etag != null) 'etag': etag!.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `training_specification.metric_definitions` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationMetricDefinitions {
  const SagemakerAlgorithmTrainingSpecificationMetricDefinitions({
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

/// Typed helper for the `training_specification.supported_hyper_parameters` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationSupportedHyperParameters {
  const SagemakerAlgorithmTrainingSpecificationSupportedHyperParameters({
    this.defaultValue,
    this.description,
    this.isRequired,
    this.isTunable,
    required this.name,
    required this.type,
    this.range,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<bool>? isRequired;

  final TfArg<bool>? isTunable;

  final TfArg<String> name;

  final TfArg<String> type;

  final List<
    SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRange
  >?
  range;

  Map<String, Object?> encode() => {
    if (defaultValue != null) 'default_value': defaultValue!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (isRequired != null) 'is_required': isRequired!.toTfJson(),
    if (isTunable != null) 'is_tunable': isTunable!.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    if (range != null) 'range': [for (final e in range!) e.encode()],
  };
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRange {
  const SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRange({
    this.categoricalParameterRangeSpecification,
    this.continuousParameterRangeSpecification,
    this.integerParameterRangeSpecification,
  });

  final List<
    SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeCategoricalParameterRangeSpecification
  >?
  categoricalParameterRangeSpecification;

  final List<
    SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeContinuousParameterRangeSpecification
  >?
  continuousParameterRangeSpecification;

  final List<
    SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeIntegerParameterRangeSpecification
  >?
  integerParameterRangeSpecification;

  Map<String, Object?> encode() => {
    if (categoricalParameterRangeSpecification != null)
      'categorical_parameter_range_specification': [
        for (final e in categoricalParameterRangeSpecification!) e.encode(),
      ],
    if (continuousParameterRangeSpecification != null)
      'continuous_parameter_range_specification': [
        for (final e in continuousParameterRangeSpecification!) e.encode(),
      ],
    if (integerParameterRangeSpecification != null)
      'integer_parameter_range_specification': [
        for (final e in integerParameterRangeSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range.categorical_parameter_range_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeCategoricalParameterRangeSpecification {
  const SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeCategoricalParameterRangeSpecification({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range.continuous_parameter_range_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeContinuousParameterRangeSpecification {
  const SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeContinuousParameterRangeSpecification({
    required this.maxValue,
    required this.minValue,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
  };
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range.integer_parameter_range_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeIntegerParameterRangeSpecification {
  const SagemakerAlgorithmTrainingSpecificationSupportedHyperParametersRangeIntegerParameterRangeSpecification({
    required this.maxValue,
    required this.minValue,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
  };
}

/// Typed helper for the `training_specification.supported_tuning_job_objective_metrics` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetrics {
  const SagemakerAlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetrics({
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

/// Typed helper for the `training_specification.training_channels` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecificationTrainingChannels {
  const SagemakerAlgorithmTrainingSpecificationTrainingChannels({
    this.description,
    this.isRequired,
    required this.name,
    this.supportedCompressionTypes,
    required this.supportedContentTypes,
    required this.supportedInputModes,
  });

  final TfArg<String>? description;

  final TfArg<bool>? isRequired;

  final TfArg<String> name;

  final TfArg<List<Object?>>? supportedCompressionTypes;

  final TfArg<List<Object?>> supportedContentTypes;

  final TfArg<List<Object?>> supportedInputModes;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (isRequired != null) 'is_required': isRequired!.toTfJson(),
    'name': name.toTfJson(),
    if (supportedCompressionTypes != null)
      'supported_compression_types': supportedCompressionTypes!.toTfJson(),
    'supported_content_types': supportedContentTypes.toTfJson(),
    'supported_input_modes': supportedInputModes.toTfJson(),
  };
}

/// Typed helper for the `validation_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecification {
  const SagemakerAlgorithmValidationSpecification({
    required this.validationRole,
    this.validationProfiles,
  });

  final TfArg<String> validationRole;

  final List<SagemakerAlgorithmValidationSpecificationValidationProfiles>?
  validationProfiles;

  Map<String, Object?> encode() => {
    'validation_role': validationRole.toTfJson(),
    if (validationProfiles != null)
      'validation_profiles': [for (final e in validationProfiles!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfiles {
  const SagemakerAlgorithmValidationSpecificationValidationProfiles({
    required this.profileName,
    this.trainingJobDefinition,
    this.transformJobDefinition,
  });

  final TfArg<String> profileName;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition
  >?
  trainingJobDefinition;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinition
  >?
  transformJobDefinition;

  Map<String, Object?> encode() => {
    'profile_name': profileName.toTfJson(),
    if (trainingJobDefinition != null)
      'training_job_definition': [
        for (final e in trainingJobDefinition!) e.encode(),
      ],
    if (transformJobDefinition != null)
      'transform_job_definition': [
        for (final e in transformJobDefinition!) e.encode(),
      ],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition({
    this.hyperParameters,
    required this.trainingInputMode,
    this.inputDataConfig,
    this.outputDataConfig,
    this.resourceConfig,
    this.stoppingCondition,
  });

  final TfArg<Map<String, String>>? hyperParameters;

  final TfArg<String> trainingInputMode;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig
  >?
  inputDataConfig;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig
  >?
  outputDataConfig;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig
  >?
  resourceConfig;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition
  >?
  stoppingCondition;

  Map<String, Object?> encode() => {
    if (hyperParameters != null)
      'hyper_parameters': hyperParameters!.toTfJson(),
    'training_input_mode': trainingInputMode.toTfJson(),
    if (inputDataConfig != null)
      'input_data_config': [for (final e in inputDataConfig!) e.encode()],
    if (outputDataConfig != null)
      'output_data_config': [for (final e in outputDataConfig!) e.encode()],
    if (resourceConfig != null)
      'resource_config': [for (final e in resourceConfig!) e.encode()],
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig({
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
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource
  >?
  dataSource;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfig
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource
  >?
  fileSystemDataSource;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source.file_system_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource({
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource({
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
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig
  >?
  hubAccessConfig;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig({
    this.hubContentArn,
  });

  final TfArg<String>? hubContentArn;

  Map<String, Object?> encode() => {
    if (hubContentArn != null) 'hub_content_arn': hubContentArn!.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    this.acceptEula,
  });

  final TfArg<bool>? acceptEula;

  Map<String, Object?> encode() => {
    if (acceptEula != null) 'accept_eula': acceptEula!.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.shuffle_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfig({
    required this.seed,
  });

  final TfArg<num> seed;

  Map<String, Object?> encode() => {'seed': seed.toTfJson()};
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.output_data_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig({
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig({
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
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroups
  >?
  instanceGroups;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config.instance_groups` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroups {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroups({
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config.instance_placement_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecifications
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecifications {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecifications({
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

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.stopping_condition` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition({
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

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinition {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinition({
    this.batchStrategy,
    this.environment,
    this.maxConcurrentTransforms,
    this.maxPayloadInMb,
    this.transformInput,
    this.transformOutput,
    this.transformResources,
  });

  final TfArg<String>? batchStrategy;

  final TfArg<Map<String, String>>? environment;

  final TfArg<num>? maxConcurrentTransforms;

  final TfArg<num>? maxPayloadInMb;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput
  >?
  transformInput;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput
  >?
  transformOutput;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources
  >?
  transformResources;

  Map<String, Object?> encode() => {
    if (batchStrategy != null) 'batch_strategy': batchStrategy!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (maxConcurrentTransforms != null)
      'max_concurrent_transforms': maxConcurrentTransforms!.toTfJson(),
    if (maxPayloadInMb != null) 'max_payload_in_mb': maxPayloadInMb!.toTfJson(),
    if (transformInput != null)
      'transform_input': [for (final e in transformInput!) e.encode()],
    if (transformOutput != null)
      'transform_output': [for (final e in transformOutput!) e.encode()],
    if (transformResources != null)
      'transform_resources': [for (final e in transformResources!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput({
    this.compressionType,
    this.contentType,
    this.splitType,
    this.dataSource,
  });

  final TfArg<String>? compressionType;

  final TfArg<String>? contentType;

  final TfArg<String>? splitType;

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource
  >?
  dataSource;

  Map<String, Object?> encode() => {
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (splitType != null) 'split_type': splitType!.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input.data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource({
    this.s3DataSource,
  });

  final List<
    SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource
  >?
  s3DataSource;

  Map<String, Object?> encode() => {
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input.data_source.s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource({
    required this.s3DataType,
    required this.s3Uri,
  });

  final TfArg<String> s3DataType;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_output` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput({
    this.accept,
    this.assembleWith,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final TfArg<String>? accept;

  final TfArg<String>? assembleWith;

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    if (accept != null) 'accept': accept!.toTfJson(),
    if (assembleWith != null) 'assemble_with': assembleWith!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_resources` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources {
  const SagemakerAlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources({
    required this.instanceCount,
    required this.instanceType,
    this.transformAmiVersion,
    this.volumeKmsKeyId,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> instanceType;

  final TfArg<String>? transformAmiVersion;

  final TfArg<String>? volumeKmsKeyId;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    if (transformAmiVersion != null)
      'transform_ami_version': transformAmiVersion!.toTfJson(),
    if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_algorithm`.
final class AwsSagemakerAlgorithm extends Resource {
  static const String tfType = 'aws_sagemaker_algorithm';

  AwsSagemakerAlgorithm({
    required super.localName,
    TfArg<String>? algorithmDescription,
    required TfArg<String> algorithmName,
    TfArg<bool>? certifyForMarketplace,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SagemakerAlgorithmInferenceSpecification>? inferenceSpecification,
    List<SagemakerAlgorithmTrainingSpecification>? trainingSpecification,
    List<SagemakerAlgorithmValidationSpecification>? validationSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (algorithmDescription != null)
             'algorithm_description': algorithmDescription,
           'algorithm_name': algorithmName,
           if (certifyForMarketplace != null)
             'certify_for_marketplace': certifyForMarketplace,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (inferenceSpecification != null)
             'inference_specification': TfArg.literal([
               for (final e in inferenceSpecification) e.encode(),
             ]),
           if (trainingSpecification != null)
             'training_specification': TfArg.literal([
               for (final e in trainingSpecification) e.encode(),
             ]),
           if (validationSpecification != null)
             'validation_specification': TfArg.literal([
               for (final e in validationSpecification) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerAlgorithmSensitive;

  /// Reference to `algorithm_status` attribute.
  TfRef<String> get algorithmStatus =>
      TfRef.attribute<String>(this, 'algorithm_status');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
