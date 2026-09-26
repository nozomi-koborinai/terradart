// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_repository`.
const Set<String> _awsEcrRepositorySensitive = <String>{};

/// Factory wrapper for `aws_ecr_repository`.
final class DataAwsEcrRepository extends Data {
  static const String tfType = 'aws_ecr_repository';

  DataAwsEcrRepository({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? registryId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (registryId != null) 'registry_id': registryId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrRepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'encryption_configuration',
      );

  /// Reference to `image_scanning_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get imageScanningConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'image_scanning_configuration',
      );

  /// Reference to `image_tag_mutability` attribute.
  TfRef<String> get imageTagMutability =>
      TfRef.attribute<String>(this, 'image_tag_mutability');

  /// Reference to `image_tag_mutability_exclusion_filter` attribute.
  TfRef<List<Map<String, Object?>>> get imageTagMutabilityExclusionFilter =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'image_tag_mutability_exclusion_filter',
      );

  /// Reference to `most_recent_image_tags` attribute.
  TfRef<List<String>> get mostRecentImageTags =>
      TfRef.attribute<List<String>>(this, 'most_recent_image_tags');

  /// Reference to `repository_url` attribute.
  TfRef<String> get repositoryUrl =>
      TfRef.attribute<String>(this, 'repository_url');
}
