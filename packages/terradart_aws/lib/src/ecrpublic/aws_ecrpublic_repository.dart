// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecrpublic_repository`.
const Set<String> _awsEcrpublicRepositorySensitive = <String>{};

/// Typed helper for the `catalog_data` block of
/// `aws_ecrpublic_repository` (derived from provider schema).
@immutable
final class EcrpublicRepositoryCatalogData {
  const EcrpublicRepositoryCatalogData({
    this.aboutText,
    this.architectures,
    this.description,
    this.logoImageBlob,
    this.operatingSystems,
    this.usageText,
  });

  final TfArg<String>? aboutText;

  final TfArg<List<Object?>>? architectures;

  final TfArg<String>? description;

  final TfArg<String>? logoImageBlob;

  final TfArg<List<Object?>>? operatingSystems;

  final TfArg<String>? usageText;

  Map<String, Object?> encode() => {
    if (aboutText != null) 'about_text': aboutText!.toTfJson(),
    if (architectures != null) 'architectures': architectures!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (logoImageBlob != null) 'logo_image_blob': logoImageBlob!.toTfJson(),
    if (operatingSystems != null)
      'operating_systems': operatingSystems!.toTfJson(),
    if (usageText != null) 'usage_text': usageText!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecrpublic_repository`.
final class AwsEcrpublicRepository extends Resource {
  static const String tfType = 'aws_ecrpublic_repository';

  AwsEcrpublicRepository({
    required super.localName,
    TfArg<bool>? forceDestroy,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    TfArg<Map<String, String>>? tags,
    EcrpublicRepositoryCatalogData? catalogData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (region != null) 'region': region,
           'repository_name': repositoryName,
           if (tags != null) 'tags': tags,
           if (catalogData != null)
             'catalog_data': TfArg.literal(catalogData.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrpublicRepositorySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `repository_uri` attribute.
  TfRef<String> get repositoryUri =>
      TfRef.attribute<String>(this, 'repository_uri');
}
