// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../vertex_ai/google_vertex_ai_dataset.dart' show GoogleVertexAiDataset;

/// Sensitive field paths for `google_vertex_ai_training_pipeline`.
const Set<String> _googleVertexAiTrainingPipelineSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiTrainingPipelineEncryptionSpec {
  const VertexAiTrainingPipelineEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `input_data_config` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineInputDataConfig {
  const VertexAiTrainingPipelineInputDataConfig({
    this.annotationSchemaUri,
    this.annotationsFilter,
    required this.datasetId,
    this.persistMlUseAssignment,
    this.savedQueryId,
    this.bigqueryDestination,
    this.filterSplit,
    this.fractionSplit,
    this.gcsDestination,
    this.predefinedSplit,
    this.stratifiedSplit,
    this.timestampSplit,
  });

  final TfArg<String>? annotationSchemaUri;

  final TfArg<String>? annotationsFilter;

  final RefTo<GoogleVertexAiDataset> datasetId;

  final TfArg<bool>? persistMlUseAssignment;

  final TfArg<String>? savedQueryId;

  final VertexAiTrainingPipelineBigqueryDestination? bigqueryDestination;

  final VertexAiTrainingPipelineFilterSplit? filterSplit;

  final VertexAiTrainingPipelineFractionSplit? fractionSplit;

  final VertexAiTrainingPipelineGcsDestination? gcsDestination;

  final VertexAiTrainingPipelinePredefinedSplit? predefinedSplit;

  final VertexAiTrainingPipelineStratifiedSplit? stratifiedSplit;

  final VertexAiTrainingPipelineTimestampSplit? timestampSplit;

  @internal
  Map<String, Object?> encode() => {
    'annotation_schema_uri': ?annotationSchemaUri?.toTfJson(),
    'annotations_filter': ?annotationsFilter?.toTfJson(),
    'dataset_id': datasetId.encodeAs('name').toTfJson(),
    'persist_ml_use_assignment': ?persistMlUseAssignment?.toTfJson(),
    'saved_query_id': ?savedQueryId?.toTfJson(),
    'bigquery_destination': ?bigqueryDestination?.encode(),
    'filter_split': ?filterSplit?.encode(),
    'fraction_split': ?fractionSplit?.encode(),
    'gcs_destination': ?gcsDestination?.encode(),
    'predefined_split': ?predefinedSplit?.encode(),
    'stratified_split': ?stratifiedSplit?.encode(),
    'timestamp_split': ?timestampSplit?.encode(),
  };
}

/// Typed helper for the `input_data_config.bigquery_destination` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineBigqueryDestination {
  const VertexAiTrainingPipelineBigqueryDestination({required this.outputUri});

  final TfArg<String> outputUri;

  @internal
  Map<String, Object?> encode() => {'output_uri': outputUri.toTfJson()};
}

/// Typed helper for the `input_data_config.filter_split` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineFilterSplit {
  const VertexAiTrainingPipelineFilterSplit({
    required this.testFilter,
    required this.trainingFilter,
    required this.validationFilter,
  });

  final TfArg<String> testFilter;

  final TfArg<String> trainingFilter;

  final TfArg<String> validationFilter;

  @internal
  Map<String, Object?> encode() => {
    'test_filter': testFilter.toTfJson(),
    'training_filter': trainingFilter.toTfJson(),
    'validation_filter': validationFilter.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.fraction_split` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineFractionSplit {
  const VertexAiTrainingPipelineFractionSplit({
    this.testFraction,
    this.trainingFraction,
    this.validationFraction,
  });

  final TfArg<num>? testFraction;

  final TfArg<num>? trainingFraction;

  final TfArg<num>? validationFraction;

  @internal
  Map<String, Object?> encode() => {
    'test_fraction': ?testFraction?.toTfJson(),
    'training_fraction': ?trainingFraction?.toTfJson(),
    'validation_fraction': ?validationFraction?.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.gcs_destination` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineGcsDestination {
  const VertexAiTrainingPipelineGcsDestination({required this.outputUriPrefix});

  final TfArg<String> outputUriPrefix;

  @internal
  Map<String, Object?> encode() => {
    'output_uri_prefix': outputUriPrefix.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.predefined_split` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelinePredefinedSplit {
  const VertexAiTrainingPipelinePredefinedSplit({required this.key});

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `input_data_config.stratified_split` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineStratifiedSplit {
  const VertexAiTrainingPipelineStratifiedSplit({
    required this.key,
    this.testFraction,
    this.trainingFraction,
    this.validationFraction,
  });

  final TfArg<String> key;

  final TfArg<num>? testFraction;

  final TfArg<num>? trainingFraction;

  final TfArg<num>? validationFraction;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'test_fraction': ?testFraction?.toTfJson(),
    'training_fraction': ?trainingFraction?.toTfJson(),
    'validation_fraction': ?validationFraction?.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.timestamp_split` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineTimestampSplit {
  const VertexAiTrainingPipelineTimestampSplit({
    required this.key,
    this.testFraction,
    this.trainingFraction,
    this.validationFraction,
  });

  final TfArg<String> key;

  final TfArg<num>? testFraction;

  final TfArg<num>? trainingFraction;

  final TfArg<num>? validationFraction;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'test_fraction': ?testFraction?.toTfJson(),
    'training_fraction': ?trainingFraction?.toTfJson(),
    'validation_fraction': ?validationFraction?.toTfJson(),
  };
}

/// Typed helper for the `model_to_upload` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineModelToUpload {
  const VertexAiTrainingPipelineModelToUpload({
    this.artifactUri,
    this.description,
    required this.displayName,
    this.labels,
    this.versionAliases,
    this.versionDescription,
    this.containerSpec,
    this.encryptionSpec,
    this.explanationSpec,
  });

  final TfArg<String>? artifactUri;

  final TfArg<String>? description;

  final TfArg<String> displayName;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<String>>? versionAliases;

  final TfArg<String>? versionDescription;

  final VertexAiTrainingPipelineContainerSpec? containerSpec;

  final VertexAiTrainingPipelineEncryptionSpec? encryptionSpec;

  final VertexAiTrainingPipelineExplanationSpec? explanationSpec;

  @internal
  Map<String, Object?> encode() => {
    'artifact_uri': ?artifactUri?.toTfJson(),
    'description': ?description?.toTfJson(),
    'display_name': displayName.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'version_aliases': ?versionAliases?.toTfJson(),
    'version_description': ?versionDescription?.toTfJson(),
    'container_spec': ?containerSpec?.encode(),
    'encryption_spec': ?encryptionSpec?.encode(),
    'explanation_spec': ?explanationSpec?.encode(),
  };
}

/// Typed helper for the `model_to_upload.container_spec` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineContainerSpec {
  const VertexAiTrainingPipelineContainerSpec({
    this.args,
    this.command,
    this.deploymentTimeout,
    this.healthRoute,
    required this.imageUri,
    this.predictRoute,
    this.sharedMemorySizeMb,
    this.env,
    this.grpcPorts,
    this.healthProbe,
    this.ports,
    this.startupProbe,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String>? deploymentTimeout;

  final TfArg<String>? healthRoute;

  final TfArg<String> imageUri;

  final TfArg<String>? predictRoute;

  final TfArg<String>? sharedMemorySizeMb;

  final List<VertexAiTrainingPipelineEnv>? env;

  final List<VertexAiTrainingPipelineGrpcPorts>? grpcPorts;

  final VertexAiTrainingPipelineHealthProbe? healthProbe;

  final List<VertexAiTrainingPipelinePorts>? ports;

  final VertexAiTrainingPipelineStartupProbe? startupProbe;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'deployment_timeout': ?deploymentTimeout?.toTfJson(),
    'health_route': ?healthRoute?.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    'predict_route': ?predictRoute?.toTfJson(),
    'shared_memory_size_mb': ?sharedMemorySizeMb?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (grpcPorts != null)
      'grpc_ports': [for (final e in grpcPorts!) e.encode()],
    'health_probe': ?healthProbe?.encode(),
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    'startup_probe': ?startupProbe?.encode(),
  };
}

/// Typed helper for the `model_to_upload.container_spec.env` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineEnv {
  const VertexAiTrainingPipelineEnv({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `model_to_upload.container_spec.grpc_ports` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineGrpcPorts {
  const VertexAiTrainingPipelineGrpcPorts({required this.containerPort});

  final TfArg<num> containerPort;

  @internal
  Map<String, Object?> encode() => {'container_port': containerPort.toTfJson()};
}

/// Typed helper for the `model_to_upload.container_spec.health_probe` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineHealthProbe {
  const VertexAiTrainingPipelineHealthProbe({
    this.periodSeconds,
    this.timeoutSeconds,
    this.exec,
  });

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final VertexAiTrainingPipelineExec? exec;

  @internal
  Map<String, Object?> encode() => {
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'exec': ?exec?.encode(),
  };
}

/// Typed helper for the `model_to_upload.container_spec.health_probe.exec` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiTrainingPipelineExec {
  const VertexAiTrainingPipelineExec({this.command});

  final TfArg<List<String>>? command;

  @internal
  Map<String, Object?> encode() => {'command': ?command?.toTfJson()};
}

/// Typed helper for the `model_to_upload.container_spec.ports` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelinePorts {
  const VertexAiTrainingPipelinePorts({required this.containerPort});

  final TfArg<num> containerPort;

  @internal
  Map<String, Object?> encode() => {'container_port': containerPort.toTfJson()};
}

/// Typed helper for the `model_to_upload.container_spec.startup_probe` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineStartupProbe {
  const VertexAiTrainingPipelineStartupProbe({
    this.periodSeconds,
    this.timeoutSeconds,
    this.exec,
  });

  final TfArg<num>? periodSeconds;

  final TfArg<num>? timeoutSeconds;

  final VertexAiTrainingPipelineExec? exec;

  @internal
  Map<String, Object?> encode() => {
    'period_seconds': ?periodSeconds?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'exec': ?exec?.encode(),
  };
}

/// Typed helper for the `model_to_upload.explanation_spec` block of
/// `google_vertex_ai_training_pipeline` (derived from provider schema).
@immutable
final class VertexAiTrainingPipelineExplanationSpec {
  const VertexAiTrainingPipelineExplanationSpec({
    this.metadata,
    this.parameters,
  });

  final TfArg<String>? metadata;

  final TfArg<String>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'metadata': ?metadata?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_training_pipeline`.
///
/// The TrainingPipeline orchestrates tasks associated with training a Model.
final class GoogleVertexAiTrainingPipeline extends Resource {
  static const String tfType = 'google_vertex_ai_training_pipeline';

  GoogleVertexAiTrainingPipeline(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> modelId,
    TfArg<String>? parentModel,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> trainingTaskDefinition,
    required TfArg<String> trainingTaskInputs,
    VertexAiTrainingPipelineEncryptionSpec? encryptionSpec,
    VertexAiTrainingPipelineInputDataConfig? inputDataConfig,
    VertexAiTrainingPipelineModelToUpload? modelToUpload,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'labels': ?labels,
           'model_id': modelId,
           'parent_model': ?parentModel,
           'project': ?project,
           'region': ?region,
           'training_task_definition': trainingTaskDefinition,
           'training_task_inputs': trainingTaskInputs,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (inputDataConfig != null)
             'input_data_config': TfArg.literal(inputDataConfig.encode()),
           if (modelToUpload != null)
             'model_to_upload': TfArg.literal(modelToUpload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiTrainingPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiTrainingPipeline>`.
  RefTo<GoogleVertexAiTrainingPipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `training_task_metadata` attribute.
  TfRef<String> get trainingTaskMetadata =>
      TfRef.attribute<String>(this, 'training_task_metadata');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `model_id` attribute.
  TfRef<String> get modelId => TfRef.attribute<String>(this, 'model_id');

  /// Reference to `parent_model` attribute.
  TfRef<String> get parentModel =>
      TfRef.attribute<String>(this, 'parent_model');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `training_task_definition` attribute.
  TfRef<String> get trainingTaskDefinition =>
      TfRef.attribute<String>(this, 'training_task_definition');

  /// Reference to `training_task_inputs` attribute.
  TfRef<String> get trainingTaskInputs =>
      TfRef.attribute<String>(this, 'training_task_inputs');
}
