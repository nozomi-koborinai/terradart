// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_image`.
const Set<String> _awsImagebuilderImageSensitive = <String>{};

/// Exactly one of `container_recipe_arn`, `image_recipe_arn` on `aws_imagebuilder_image`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.containerRecipeArn(...)`.
sealed class ImagebuilderImageRecipeArn {
  const ImagebuilderImageRecipeArn();

  /// Sets `container_recipe_arn`.
  const factory ImagebuilderImageRecipeArn.containerRecipeArn(
    TfArg<String> containerRecipeArn,
  ) = ImagebuilderImageRecipeArnContainerRecipeArn;

  /// Sets `image_recipe_arn`.
  const factory ImagebuilderImageRecipeArn.imageRecipeArn(
    TfArg<String> imageRecipeArn,
  ) = ImagebuilderImageRecipeArnImageRecipeArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ImagebuilderImageRecipeArn.containerRecipeArn] choice: sets `container_recipe_arn`.
final class ImagebuilderImageRecipeArnContainerRecipeArn
    extends ImagebuilderImageRecipeArn {
  const ImagebuilderImageRecipeArnContainerRecipeArn(this.containerRecipeArn);

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

/// The [ImagebuilderImageRecipeArn.imageRecipeArn] choice: sets `image_recipe_arn`.
final class ImagebuilderImageRecipeArnImageRecipeArn
    extends ImagebuilderImageRecipeArn {
  const ImagebuilderImageRecipeArnImageRecipeArn(this.imageRecipeArn);

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
/// `aws_imagebuilder_image` (derived from provider schema).
@immutable
final class ImagebuilderImageImageScanningConfiguration {
  const ImagebuilderImageImageScanningConfiguration({
    this.imageScanningEnabled,
    this.ecrConfiguration,
  });

  final TfArg<bool>? imageScanningEnabled;

  final ImagebuilderImageImageScanningConfigurationEcrConfiguration?
  ecrConfiguration;

  Map<String, Object?> encode() => {
    if (imageScanningEnabled != null)
      'image_scanning_enabled': imageScanningEnabled!.toTfJson(),
    if (ecrConfiguration != null)
      'ecr_configuration': ecrConfiguration!.encode(),
  };
}

/// Typed helper for the `image_scanning_configuration.ecr_configuration` block of
/// `aws_imagebuilder_image` (derived from provider schema).
@immutable
final class ImagebuilderImageImageScanningConfigurationEcrConfiguration {
  const ImagebuilderImageImageScanningConfigurationEcrConfiguration({
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
/// `aws_imagebuilder_image` (derived from provider schema).
@immutable
final class ImagebuilderImageImageTestsConfiguration {
  const ImagebuilderImageImageTestsConfiguration({
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
/// `aws_imagebuilder_image` (derived from provider schema).
@immutable
final class ImagebuilderImageLoggingConfiguration {
  const ImagebuilderImageLoggingConfiguration({required this.logGroupName});

  final TfArg<String> logGroupName;

  Map<String, Object?> encode() => {'log_group_name': logGroupName.toTfJson()};
}

/// Typed helper for the `workflow` block of
/// `aws_imagebuilder_image` (derived from provider schema).
@immutable
final class ImagebuilderImageWorkflow {
  const ImagebuilderImageWorkflow({
    this.onFailure,
    this.parallelGroup,
    required this.workflowArn,
    this.parameter,
  });

  final TfArg<ImagebuilderImageWorkflowOnFailure>? onFailure;

  final TfArg<String>? parallelGroup;

  final TfArg<String> workflowArn;

  final List<ImagebuilderImageWorkflowParameter>? parameter;

  Map<String, Object?> encode() => {
    if (onFailure != null) 'on_failure': onFailure!.toTfJson(),
    if (parallelGroup != null) 'parallel_group': parallelGroup!.toTfJson(),
    'workflow_arn': workflowArn.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// `on_failure` — derived from the provider schema description.
enum ImagebuilderImageWorkflowOnFailure implements TerraformEnum {
  continueCase('CONTINUE'),
  abort('ABORT');

  const ImagebuilderImageWorkflowOnFailure(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.parameter` block of
/// `aws_imagebuilder_image` (derived from provider schema).
@immutable
final class ImagebuilderImageWorkflowParameter {
  const ImagebuilderImageWorkflowParameter({
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

/// Factory wrapper for `aws_imagebuilder_image`.
final class AwsImagebuilderImage extends Resource {
  static const String tfType = 'aws_imagebuilder_image';

  AwsImagebuilderImage({
    required super.localName,
    required ImagebuilderImageRecipeArn recipeArn,
    TfArg<String>? distributionConfigurationArn,
    TfArg<bool>? enhancedImageMetadataEnabled,
    TfArg<String>? executionRole,
    required TfArg<String> infrastructureConfigurationArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ImagebuilderImageImageScanningConfiguration? imageScanningConfiguration,
    ImagebuilderImageImageTestsConfiguration? imageTestsConfiguration,
    ImagebuilderImageLoggingConfiguration? loggingConfiguration,
    List<ImagebuilderImageWorkflow>? workflow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...recipeArn.argMap,
           if (distributionConfigurationArn != null)
             'distribution_configuration_arn': distributionConfigurationArn,
           if (enhancedImageMetadataEnabled != null)
             'enhanced_image_metadata_enabled': enhancedImageMetadataEnabled,
           if (executionRole != null) 'execution_role': executionRole,
           'infrastructure_configuration_arn': infrastructureConfigurationArn,
           if (region != null) 'region': region,
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
           if (workflow != null)
             'workflow': TfArg.literal([for (final e in workflow) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderImage>`.
  RefTo<AwsImagebuilderImage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `os_version` attribute.
  TfRef<String> get osVersion => TfRef.attribute<String>(this, 'os_version');

  /// Reference to `output_resources` attribute.
  TfRef<List<Map<String, Object?>>> get outputResources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'output_resources');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
