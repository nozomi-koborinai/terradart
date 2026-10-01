// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_sagemaker_pipeline`.
const Set<String> _awsSagemakerPipelineSensitive = <String>{};

/// Exactly one of `pipeline_definition`, `pipeline_definition_s3_location` on `aws_sagemaker_pipeline`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pipelineDefinition(...)`.
sealed class SagemakerPipelineDefinition {
  const SagemakerPipelineDefinition();

  /// Sets `pipeline_definition`.
  const factory SagemakerPipelineDefinition.pipelineDefinition(
    TfArg<String> pipelineDefinition,
  ) = SagemakerPipelineDefinitionChoice;

  /// Sets `pipeline_definition_s3_location`.
  const factory SagemakerPipelineDefinition.pipelineDefinitionS3Location(
    SagemakerPipelinePipelineDefinitionS3Location pipelineDefinitionS3Location,
  ) = SagemakerPipelineDefinitionS3Location;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SagemakerPipelineDefinition.pipelineDefinition] choice: sets `pipeline_definition`.
final class SagemakerPipelineDefinitionChoice
    extends SagemakerPipelineDefinition {
  const SagemakerPipelineDefinitionChoice(this.pipelineDefinition);

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

/// The [SagemakerPipelineDefinition.pipelineDefinitionS3Location] choice: sets `pipeline_definition_s3_location`.
final class SagemakerPipelineDefinitionS3Location
    extends SagemakerPipelineDefinition {
  const SagemakerPipelineDefinitionS3Location(
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

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String> objectKey;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'object_key': objectKey.toTfJson(),
    'version_id': ?versionId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_pipeline`.
final class AwsSagemakerPipeline extends Resource {
  static const String tfType = 'aws_sagemaker_pipeline';

  AwsSagemakerPipeline(
    super.localName, {
    required SagemakerPipelineDefinition pipelineDefinition,
    TfArg<String>? pipelineDescription,
    required TfArg<String> pipelineDisplayName,
    required TfArg<String> pipelineName,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<Map<String, String>>? tags,
    SagemakerPipelineParallelismConfiguration? parallelismConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...pipelineDefinition.argMap,
           'pipeline_description': ?pipelineDescription,
           'pipeline_display_name': pipelineDisplayName,
           'pipeline_name': pipelineName,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'tags': ?tags,
           if (parallelismConfiguration != null)
             'parallelism_configuration': TfArg.literal(
               parallelismConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerPipeline>`.
  RefTo<AwsSagemakerPipeline> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `pipeline_definition` attribute.
  TfRef<String> get pipelineDefinition =>
      TfRef.attribute<String>(this, 'pipeline_definition');

  /// Reference to `pipeline_description` attribute.
  TfRef<String> get pipelineDescription =>
      TfRef.attribute<String>(this, 'pipeline_description');

  /// Reference to `pipeline_display_name` attribute.
  TfRef<String> get pipelineDisplayName =>
      TfRef.attribute<String>(this, 'pipeline_display_name');

  /// Reference to `pipeline_name` attribute.
  TfRef<String> get pipelineName =>
      TfRef.attribute<String>(this, 'pipeline_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
