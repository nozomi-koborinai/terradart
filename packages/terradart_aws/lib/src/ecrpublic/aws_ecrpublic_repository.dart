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

  final TfArg<List<String>>? architectures;

  final TfArg<String>? description;

  final TfArg<String>? logoImageBlob;

  final TfArg<List<String>>? operatingSystems;

  final TfArg<String>? usageText;

  Map<String, Object?> encode() => {
    'about_text': ?aboutText?.toTfJson(),
    'architectures': ?architectures?.toTfJson(),
    'description': ?description?.toTfJson(),
    'logo_image_blob': ?logoImageBlob?.toTfJson(),
    'operating_systems': ?operatingSystems?.toTfJson(),
    'usage_text': ?usageText?.toTfJson(),
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
           'force_destroy': ?forceDestroy,
           'region': ?region,
           'repository_name': repositoryName,
           'tags': ?tags,
           if (catalogData != null)
             'catalog_data': TfArg.literal(catalogData.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrpublicRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrpublicRepository>`.
  RefTo<AwsEcrpublicRepository> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `repository_uri` attribute.
  TfRef<String> get repositoryUri =>
      TfRef.attribute<String>(this, 'repository_uri');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository_name` attribute.
  TfRef<String> get repositoryName =>
      TfRef.attribute<String>(this, 'repository_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
