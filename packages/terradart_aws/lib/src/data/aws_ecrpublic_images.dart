// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecrpublic_images`.
const Set<String> _awsEcrpublicImagesSensitive = <String>{};

/// Typed helper for the `image_ids` block of
/// `aws_ecrpublic_images` (derived from provider schema).
@immutable
final class DataEcrpublicImagesImageIds {
  const DataEcrpublicImagesImageIds({this.imageDigest, this.imageTag});

  final TfArg<String>? imageDigest;

  final TfArg<String>? imageTag;

  Map<String, Object?> encode() => {
    if (imageDigest != null) 'image_digest': imageDigest!.toTfJson(),
    if (imageTag != null) 'image_tag': imageTag!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecrpublic_images`.
///
/// Provides details about AWS ECR Public Images in a public repository.
final class DataAwsEcrpublicImages extends Data {
  static const String tfType = 'aws_ecrpublic_images';

  DataAwsEcrpublicImages({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? registryId,
    required TfArg<String> repositoryName,
    List<DataEcrpublicImagesImageIds>? imageIds,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (registryId != null) 'registry_id': registryId,
           'repository_name': repositoryName,
           if (imageIds != null)
             'image_ids': TfArg.literal([for (final e in imageIds) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrpublicImagesSensitive;

  /// Reference to `images` attribute.
  TfRef<List<Map<String, Object?>>> get images =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'images');
}
