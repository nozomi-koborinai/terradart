// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_image_pipeline`.
const Set<String> _awsImagebuilderImagePipelineSensitive = <String>{};

/// Typed helper for the `image_scanning_configuration` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineImageScanningConfiguration {
  const ImagebuilderImagePipelineImageScanningConfiguration({
    this.imageScanningEnabled,
    this.ecrConfiguration,
  });

  final TfArg<bool>? imageScanningEnabled;

  final ImagebuilderImagePipelineImageScanningConfigurationEcrConfiguration?
  ecrConfiguration;

  Map<String, Object?> encode() => {
    if (imageScanningEnabled != null)
      'image_scanning_enabled': imageScanningEnabled!.toTfJson(),
    if (ecrConfiguration != null)
      'ecr_configuration': ecrConfiguration!.encode(),
  };
}

/// Typed helper for the `image_scanning_configuration.ecr_configuration` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineImageScanningConfigurationEcrConfiguration {
  const ImagebuilderImagePipelineImageScanningConfigurationEcrConfiguration({
    this.containerTags,
    this.repositoryName,
  });

  final TfArg<List<Object?>>? containerTags;

  final TfArg<String>? repositoryName;

  Map<String, Object?> encode() => {
    if (containerTags != null) 'container_tags': containerTags!.toTfJson(),
    if (repositoryName != null) 'repository_name': repositoryName!.toTfJson(),
  };
}

/// Typed helper for the `image_tests_configuration` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineImageTestsConfiguration {
  const ImagebuilderImagePipelineImageTestsConfiguration({
    this.imageTestsEnabled,
    this.timeoutMinutes,
  });

  final TfArg<bool>? imageTestsEnabled;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    if (imageTestsEnabled != null)
      'image_tests_enabled': imageTestsEnabled!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `logging_configuration` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineLoggingConfiguration {
  const ImagebuilderImagePipelineLoggingConfiguration({
    this.imageLogGroupName,
    this.pipelineLogGroupName,
  });

  final TfArg<String>? imageLogGroupName;

  final TfArg<String>? pipelineLogGroupName;

  Map<String, Object?> encode() => {
    if (imageLogGroupName != null)
      'image_log_group_name': imageLogGroupName!.toTfJson(),
    if (pipelineLogGroupName != null)
      'pipeline_log_group_name': pipelineLogGroupName!.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineSchedule {
  const ImagebuilderImagePipelineSchedule({
    this.pipelineExecutionStartCondition,
    required this.scheduleExpression,
    this.timezone,
  });

  final TfArg<String>? pipelineExecutionStartCondition;

  final TfArg<String> scheduleExpression;

  final TfArg<String>? timezone;

  Map<String, Object?> encode() => {
    if (pipelineExecutionStartCondition != null)
      'pipeline_execution_start_condition': pipelineExecutionStartCondition!
          .toTfJson(),
    'schedule_expression': scheduleExpression.toTfJson(),
    if (timezone != null) 'timezone': timezone!.toTfJson(),
  };
}

/// Typed helper for the `workflow` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineWorkflow {
  const ImagebuilderImagePipelineWorkflow({
    this.onFailure,
    this.parallelGroup,
    required this.workflowArn,
    this.parameter,
  });

  final TfArg<String>? onFailure;

  final TfArg<String>? parallelGroup;

  final TfArg<String> workflowArn;

  final List<ImagebuilderImagePipelineWorkflowParameter>? parameter;

  Map<String, Object?> encode() => {
    if (onFailure != null) 'on_failure': onFailure!.toTfJson(),
    if (parallelGroup != null) 'parallel_group': parallelGroup!.toTfJson(),
    'workflow_arn': workflowArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `workflow.parameter` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineWorkflowParameter {
  const ImagebuilderImagePipelineWorkflowParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_image_pipeline`.
final class AwsImagebuilderImagePipeline extends Resource {
  static const String tfType = 'aws_imagebuilder_image_pipeline';

  AwsImagebuilderImagePipeline({
    required super.localName,
    TfArg<String>? containerRecipeArn,
    TfArg<String>? description,
    TfArg<String>? distributionConfigurationArn,
    TfArg<bool>? enhancedImageMetadataEnabled,
    TfArg<String>? executionRole,
    TfArg<String>? imageRecipeArn,
    required TfArg<String> infrastructureConfigurationArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    ImagebuilderImagePipelineImageScanningConfiguration?
    imageScanningConfiguration,
    ImagebuilderImagePipelineImageTestsConfiguration? imageTestsConfiguration,
    ImagebuilderImagePipelineLoggingConfiguration? loggingConfiguration,
    ImagebuilderImagePipelineSchedule? schedule,
    List<ImagebuilderImagePipelineWorkflow>? workflow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (containerRecipeArn != null)
             'container_recipe_arn': containerRecipeArn,
           if (description != null) 'description': description,
           if (distributionConfigurationArn != null)
             'distribution_configuration_arn': distributionConfigurationArn,
           if (enhancedImageMetadataEnabled != null)
             'enhanced_image_metadata_enabled': enhancedImageMetadataEnabled,
           if (executionRole != null) 'execution_role': executionRole,
           if (imageRecipeArn != null) 'image_recipe_arn': imageRecipeArn,
           'infrastructure_configuration_arn': infrastructureConfigurationArn,
           'name': name,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (imageScanningConfiguration != null)
             'image_scanning_configuration': TfArg.literal(
               imageScanningConfiguration.encode(),
             ),
           if (imageTestsConfiguration != null)
             'image_tests_configuration': TfArg.literal(
               imageTestsConfiguration.encode(),
             ),
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
           if (workflow != null)
             'workflow': TfArg.literal([for (final e in workflow) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderImagePipelineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `date_last_run` attribute.
  TfRef<String> get dateLastRun =>
      TfRef.attribute<String>(this, 'date_last_run');

  /// Reference to `date_next_run` attribute.
  TfRef<String> get dateNextRun =>
      TfRef.attribute<String>(this, 'date_next_run');

  /// Reference to `date_updated` attribute.
  TfRef<String> get dateUpdated =>
      TfRef.attribute<String>(this, 'date_updated');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');
}
