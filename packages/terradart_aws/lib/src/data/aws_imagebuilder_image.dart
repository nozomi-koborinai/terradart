// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_image`.
const Set<String> _awsImagebuilderImageSensitive = <String>{};

/// Factory wrapper for `aws_imagebuilder_image`.
final class DataAwsImagebuilderImage extends Data {
  static const String tfType = 'aws_imagebuilder_image';

  DataAwsImagebuilderImage({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_version_arn` attribute.
  TfRef<String> get buildVersionArn =>
      TfRef.attribute<String>(this, 'build_version_arn');

  /// Reference to `container_recipe_arn` attribute.
  TfRef<String> get containerRecipeArn =>
      TfRef.attribute<String>(this, 'container_recipe_arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `distribution_configuration_arn` attribute.
  TfRef<String> get distributionConfigurationArn =>
      TfRef.attribute<String>(this, 'distribution_configuration_arn');

  /// Reference to `enhanced_image_metadata_enabled` attribute.
  TfRef<bool> get enhancedImageMetadataEnabled =>
      TfRef.attribute<bool>(this, 'enhanced_image_metadata_enabled');

  /// Reference to `image_recipe_arn` attribute.
  TfRef<String> get imageRecipeArn =>
      TfRef.attribute<String>(this, 'image_recipe_arn');

  /// Reference to `image_scanning_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get imageScanningConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'image_scanning_configuration',
      );

  /// Reference to `image_tests_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get imageTestsConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'image_tests_configuration',
      );

  /// Reference to `infrastructure_configuration_arn` attribute.
  TfRef<String> get infrastructureConfigurationArn =>
      TfRef.attribute<String>(this, 'infrastructure_configuration_arn');

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
