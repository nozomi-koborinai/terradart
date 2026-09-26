// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_images`.
const Set<String> _awsEcrImagesSensitive = <String>{};

/// Factory wrapper for `aws_ecr_images`.
final class DataAwsEcrImages extends Data {
  static const String tfType = 'aws_ecr_images';

  DataAwsEcrImages({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? registryId,
    required TfArg<String> repositoryName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (registryId != null) 'registry_id': registryId,
           'repository_name': repositoryName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrImagesSensitive;

  /// Reference to `image_ids` attribute.
  TfRef<List<Map<String, Object?>>> get imageIds =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'image_ids');
}
