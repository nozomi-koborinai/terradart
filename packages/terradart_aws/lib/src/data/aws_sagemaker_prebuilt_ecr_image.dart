// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_prebuilt_ecr_image`.
const Set<String> _awsSagemakerPrebuiltEcrImageSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_prebuilt_ecr_image`.
final class DataAwsSagemakerPrebuiltEcrImage extends Data {
  static const String tfType = 'aws_sagemaker_prebuilt_ecr_image';

  DataAwsSagemakerPrebuiltEcrImage({
    required super.localName,
    TfArg<String>? dnsSuffix,
    TfArg<String>? imageTag,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_suffix': ?dnsSuffix,
           'image_tag': ?imageTag,
           'region': ?region,
           'repository_name': repositoryName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerPrebuiltEcrImageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `registry_path` attribute.
  TfRef<String> get registryPath =>
      TfRef.attribute<String>(this, 'registry_path');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffixRef => TfRef.attribute<String>(this, 'dns_suffix');

  /// Reference to `image_tag` attribute.
  TfRef<String> get imageTagRef => TfRef.attribute<String>(this, 'image_tag');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository_name` attribute.
  TfRef<String> get repositoryNameRef =>
      TfRef.attribute<String>(this, 'repository_name');
}
