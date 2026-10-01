// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_image_pipeline`.
const Set<String> _awsImagebuilderImagePipelineSensitive = <String>{};

/// Imagebuilder Image Pipeline enum for `status`.
enum ImagebuilderImagePipelineStatus implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const ImagebuilderImagePipelineStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `container_recipe_arn`, `image_recipe_arn` on `aws_imagebuilder_image_pipeline`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.containerRecipeArn(...)`.
sealed class ImagebuilderImagePipelineRecipeArn {
  const ImagebuilderImagePipelineRecipeArn();

  /// Sets `container_recipe_arn`.
  const factory ImagebuilderImagePipelineRecipeArn.containerRecipeArn(
    TfArg<String> containerRecipeArn,
  ) = ImagebuilderImagePipelineContainerRecipeArn;

  /// Sets `image_recipe_arn`.
  const factory ImagebuilderImagePipelineRecipeArn.imageRecipeArn(
    TfArg<String> imageRecipeArn,
  ) = ImagebuilderImagePipelineImageRecipeArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ImagebuilderImagePipelineRecipeArn.containerRecipeArn] choice: sets `container_recipe_arn`.
final class ImagebuilderImagePipelineContainerRecipeArn
    extends ImagebuilderImagePipelineRecipeArn {
  const ImagebuilderImagePipelineContainerRecipeArn(this.containerRecipeArn);

  final TfArg<String> containerRecipeArn;

  @override
  String get blockKey => 'container_recipe_arn';

  @override
  Map<String, Object?> encode() => {
    'container_recipe_arn': containerRecipeArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'container_recipe_arn': containerRecipeArn,
  };
}

/// The [ImagebuilderImagePipelineRecipeArn.imageRecipeArn] choice: sets `image_recipe_arn`.
final class ImagebuilderImagePipelineImageRecipeArn
    extends ImagebuilderImagePipelineRecipeArn {
  const ImagebuilderImagePipelineImageRecipeArn(this.imageRecipeArn);

  final TfArg<String> imageRecipeArn;

  @override
  String get blockKey => 'image_recipe_arn';

  @override
  Map<String, Object?> encode() => {
    'image_recipe_arn': imageRecipeArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'image_recipe_arn': imageRecipeArn,
  };
}

/// Typed helper for the `image_scanning_configuration` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineImageScanningConfiguration {
  const ImagebuilderImagePipelineImageScanningConfiguration({
    this.imageScanningEnabled,
    this.ecrConfiguration,
  });

  final TfArg<bool>? imageScanningEnabled;

  final ImagebuilderImagePipelineEcrConfiguration? ecrConfiguration;

  Map<String, Object?> encode() => {
    'image_scanning_enabled': ?imageScanningEnabled?.toTfJson(),
    'ecr_configuration': ?ecrConfiguration?.encode(),
  };
}

/// Typed helper for the `image_scanning_configuration.ecr_configuration` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineEcrConfiguration {
  const ImagebuilderImagePipelineEcrConfiguration({
    this.containerTags,
    this.repositoryName,
  });

  final TfArg<List<String>>? containerTags;

  final TfArg<String>? repositoryName;

  Map<String, Object?> encode() => {
    'container_tags': ?containerTags?.toTfJson(),
    'repository_name': ?repositoryName?.toTfJson(),
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
    'image_tests_enabled': ?imageTestsEnabled?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
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
    'image_log_group_name': ?imageLogGroupName?.toTfJson(),
    'pipeline_log_group_name': ?pipelineLogGroupName?.toTfJson(),
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

  final TfArg<ImagebuilderImagePipelineExecutionStartCondition>?
  pipelineExecutionStartCondition;

  final TfArg<String> scheduleExpression;

  final TfArg<String>? timezone;

  Map<String, Object?> encode() => {
    'pipeline_execution_start_condition': ?pipelineExecutionStartCondition
        ?.toTfJson(),
    'schedule_expression': scheduleExpression.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
  };
}

/// `pipeline_execution_start_condition` — derived from the provider schema description.
enum ImagebuilderImagePipelineExecutionStartCondition implements TerraformEnum {
  expressionMatchOnly('EXPRESSION_MATCH_ONLY'),
  expressionMatchAndDependencyUpdatesAvailable(
    'EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE',
  );

  const ImagebuilderImagePipelineExecutionStartCondition(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<ImagebuilderImagePipelineOnFailure>? onFailure;

  final TfArg<String>? parallelGroup;

  final TfArg<String> workflowArn;

  final List<ImagebuilderImagePipelineParameter>? parameter;

  Map<String, Object?> encode() => {
    'on_failure': ?onFailure?.toTfJson(),
    'parallel_group': ?parallelGroup?.toTfJson(),
    'workflow_arn': workflowArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// `on_failure` — derived from the provider schema description.
enum ImagebuilderImagePipelineOnFailure implements TerraformEnum {
  continueCase('CONTINUE'),
  abort('ABORT');

  const ImagebuilderImagePipelineOnFailure(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.parameter` block of
/// `aws_imagebuilder_image_pipeline` (derived from provider schema).
@immutable
final class ImagebuilderImagePipelineParameter {
  const ImagebuilderImagePipelineParameter({
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
    required ImagebuilderImagePipelineRecipeArn recipeArn,
    TfArg<String>? description,
    TfArg<String>? distributionConfigurationArn,
    TfArg<bool>? enhancedImageMetadataEnabled,
    TfArg<String>? executionRole,
    required TfArg<String> infrastructureConfigurationArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<ImagebuilderImagePipelineStatus>? status,
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
           ...recipeArn.argMap,
           'description': ?description,
           'distribution_configuration_arn': ?distributionConfigurationArn,
           'enhanced_image_metadata_enabled': ?enhancedImageMetadataEnabled,
           'execution_role': ?executionRole,
           'infrastructure_configuration_arn': infrastructureConfigurationArn,
           'name': name,
           'region': ?region,
           'status': ?status,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderImagePipeline>`.
  RefTo<AwsImagebuilderImagePipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `container_recipe_arn` attribute.
  TfRef<String> get containerRecipeArn =>
      TfRef.attribute<String>(this, 'container_recipe_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `distribution_configuration_arn` attribute.
  TfRef<String> get distributionConfigurationArn =>
      TfRef.attribute<String>(this, 'distribution_configuration_arn');

  /// Reference to `enhanced_image_metadata_enabled` attribute.
  TfRef<bool> get enhancedImageMetadataEnabled =>
      TfRef.attribute<bool>(this, 'enhanced_image_metadata_enabled');

  /// Reference to `execution_role` attribute.
  TfRef<String> get executionRole =>
      TfRef.attribute<String>(this, 'execution_role');

  /// Reference to `image_recipe_arn` attribute.
  TfRef<String> get imageRecipeArn =>
      TfRef.attribute<String>(this, 'image_recipe_arn');

  /// Reference to `infrastructure_configuration_arn` attribute.
  TfRef<String> get infrastructureConfigurationArn =>
      TfRef.attribute<String>(this, 'infrastructure_configuration_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
