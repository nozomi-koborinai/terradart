// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_pipeline`.
const Set<String> _awsSagemakerPipelineSensitive = <String>{};

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
    TfArg<String>? pipelineDefinition,
    TfArg<String>? pipelineDescription,
    required TfArg<String> pipelineDisplayName,
    required TfArg<String> pipelineName,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<Map<String, String>>? tags,
    SagemakerPipelineParallelismConfiguration? parallelismConfiguration,
    SagemakerPipelinePipelineDefinitionS3Location? pipelineDefinitionS3Location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (pipelineDefinition != null)
             'pipeline_definition': pipelineDefinition,
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
           if (pipelineDefinitionS3Location != null)
             'pipeline_definition_s3_location': TfArg.literal(
               pipelineDefinitionS3Location.encode(),
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
