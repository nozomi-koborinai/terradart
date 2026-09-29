// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_pipeline`.
const Set<String> _awsSagemakerPipelineSensitive = <String>{};

/// Exactly one of `pipeline_definition`, `pipeline_definition_s3_location` on `aws_sagemaker_pipeline`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pipelineDefinition(...)`.
sealed class SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location {
  const SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location();

  /// Sets `pipeline_definition`.
  const factory SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location.pipelineDefinition(
    TfArg<String> pipelineDefinition,
  ) = SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3LocationPipelineDefinition;

  /// Sets `pipeline_definition_s3_location`.
  const factory SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location.pipelineDefinitionS3Location(
    SagemakerPipelinePipelineDefinitionS3Location pipelineDefinitionS3Location,
  ) = SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3LocationPipelineDefinitionS3Location;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location.pipelineDefinition] choice: sets `pipeline_definition`.
final class SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3LocationPipelineDefinition
    extends SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location {
  const SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3LocationPipelineDefinition(
    this.pipelineDefinition,
  );

  final TfArg<String> pipelineDefinition;

  @override
  String get blockKey => 'pipeline_definition';

  @override
  Map<String, Object?> encode() => {
    'pipeline_definition': pipelineDefinition.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'pipeline_definition': pipelineDefinition,
  };
}

/// The [SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location.pipelineDefinitionS3Location] choice: sets `pipeline_definition_s3_location`.
final class SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3LocationPipelineDefinitionS3Location
    extends SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location {
  const SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3LocationPipelineDefinitionS3Location(
    this.pipelineDefinitionS3Location,
  );

  final SagemakerPipelinePipelineDefinitionS3Location
  pipelineDefinitionS3Location;

  @override
  String get blockKey => 'pipeline_definition_s3_location';

  @override
  Map<String, Object?> encode() => {
    'pipeline_definition_s3_location': pipelineDefinitionS3Location.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'pipeline_definition_s3_location': TfArg.literal(
      pipelineDefinitionS3Location.encode(),
    ),
  };
}

/// Typed helper for the `parallelism_configuration` block of
/// `aws_sagemaker_pipeline` (derived from provider schema).
@immutable
final class SagemakerPipelineParallelismConfiguration {
  const SagemakerPipelineParallelismConfiguration({
    required this.maxParallelExecutionSteps,
  });

  final TfArg<num> maxParallelExecutionSteps;

  Map<String, Object?> encode() => {
    'max_parallel_execution_steps': maxParallelExecutionSteps.toTfJson(),
  };
}

/// Typed helper for the `pipeline_definition_s3_location` block of
/// `aws_sagemaker_pipeline` (derived from provider schema).
@immutable
final class SagemakerPipelinePipelineDefinitionS3Location {
  const SagemakerPipelinePipelineDefinitionS3Location({
    required this.bucket,
    required this.objectKey,
    this.versionId,
  });

  final TfArg<String> bucket;

  final TfArg<String> objectKey;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'object_key': objectKey.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_pipeline`.
final class AwsSagemakerPipeline extends Resource {
  static const String tfType = 'aws_sagemaker_pipeline';

  AwsSagemakerPipeline({
    required super.localName,
    required SagemakerPipelinePipelineDefinitionOrPipelineDefinitionS3Location
    pipelineDefinitionOrPipelineDefinitionS3Location,
    TfArg<String>? pipelineDescription,
    required TfArg<String> pipelineDisplayName,
    required TfArg<String> pipelineName,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<Map<String, String>>? tags,
    SagemakerPipelineParallelismConfiguration? parallelismConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...pipelineDefinitionOrPipelineDefinitionS3Location.argMap,
           if (pipelineDescription != null)
             'pipeline_description': pipelineDescription,
           'pipeline_display_name': pipelineDisplayName,
           'pipeline_name': pipelineName,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (parallelismConfiguration != null)
             'parallelism_configuration': TfArg.literal(
               parallelismConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerPipelineSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
