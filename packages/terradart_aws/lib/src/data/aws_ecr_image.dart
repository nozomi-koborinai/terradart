// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_image`.
const Set<String> _awsEcrImageSensitive = <String>{};

/// Factory wrapper for `aws_ecr_image`.
final class DataAwsEcrImage extends Data {
  static const String tfType = 'aws_ecr_image';

  DataAwsEcrImage({
    required super.localName,
    TfArg<String>? imageDigest,
    TfArg<String>? imageTag,
    TfArg<bool>? mostRecent,
    TfArg<String>? region,
    TfArg<String>? registryId,
    required TfArg<String> repositoryName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (imageDigest != null) 'image_digest': imageDigest,
           if (imageTag != null) 'image_tag': imageTag,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (region != null) 'region': region,
           if (registryId != null) 'registry_id': registryId,
           'repository_name': repositoryName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrImageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `image_pushed_at` attribute.
  TfRef<num> get imagePushedAt => TfRef.attribute<num>(this, 'image_pushed_at');

  /// Reference to `image_size_in_bytes` attribute.
  TfRef<num> get imageSizeInBytes =>
      TfRef.attribute<num>(this, 'image_size_in_bytes');

  /// Reference to `image_tags` attribute.
  TfRef<List<String>> get imageTags =>
      TfRef.attribute<List<String>>(this, 'image_tags');

  /// Reference to `image_uri` attribute.
  TfRef<String> get imageUri => TfRef.attribute<String>(this, 'image_uri');
}
