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
           if (dnsSuffix != null) 'dns_suffix': dnsSuffix,
           if (imageTag != null) 'image_tag': imageTag,
           if (region != null) 'region': region,
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
}
