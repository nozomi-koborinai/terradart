// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_repository`.
const Set<String> _awsEcrRepositorySensitive = <String>{};

/// Ecr Repository Image Tag enum for `image_tag_mutability`.
enum EcrRepositoryImageTagMutability implements TerraformEnum {
  mutable('MUTABLE'),
  immutable('IMMUTABLE'),
  immutableWithExclusion('IMMUTABLE_WITH_EXCLUSION'),
  mutableWithExclusion('MUTABLE_WITH_EXCLUSION');

  const EcrRepositoryImageTagMutability(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_ecr_repository` (derived from provider schema).
@immutable
final class EcrRepositoryEncryptionConfiguration {
  const EcrRepositoryEncryptionConfiguration({
    this.encryptionType,
    this.kmsKey,
  });

  final TfArg<EcrRepositoryEncryptionConfigurationEncryptionType>?
  encryptionType;

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (encryptionType != null) 'encryption_type': encryptionType!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum EcrRepositoryEncryptionConfigurationEncryptionType
    implements TerraformEnum {
  aes256('AES256'),
  kms('KMS'),
  kmsDsse('KMS_DSSE');

  const EcrRepositoryEncryptionConfigurationEncryptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `image_scanning_configuration` block of
/// `aws_ecr_repository` (derived from provider schema).
@immutable
final class EcrRepositoryImageScanningConfiguration {
  const EcrRepositoryImageScanningConfiguration({required this.scanOnPush});

  final TfArg<bool> scanOnPush;

  Map<String, Object?> encode() => {'scan_on_push': scanOnPush.toTfJson()};
}

/// Typed helper for the `image_tag_mutability_exclusion_filter` block of
/// `aws_ecr_repository` (derived from provider schema).
@immutable
final class EcrRepositoryImageTagMutabilityExclusionFilter {
  const EcrRepositoryImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  final TfArg<String> filter;

  final TfArg<EcrRepositoryImageTagMutabilityExclusionFilterFilterType>
  filterType;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum EcrRepositoryImageTagMutabilityExclusionFilterFilterType
    implements TerraformEnum {
  wildcard('WILDCARD');

  const EcrRepositoryImageTagMutabilityExclusionFilterFilterType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ecr_repository`.
final class AwsEcrRepository extends Resource {
  static const String tfType = 'aws_ecr_repository';

  AwsEcrRepository({
    required super.localName,
    TfArg<bool>? forceDelete,
    TfArg<EcrRepositoryImageTagMutability>? imageTagMutability,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<EcrRepositoryEncryptionConfiguration>? encryptionConfiguration,
    EcrRepositoryImageScanningConfiguration? imageScanningConfiguration,
    List<EcrRepositoryImageTagMutabilityExclusionFilter>?
    imageTagMutabilityExclusionFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (forceDelete != null) 'force_delete': forceDelete,
           if (imageTagMutability != null)
             'image_tag_mutability': imageTagMutability,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
           if (imageScanningConfiguration != null)
             'image_scanning_configuration': TfArg.literal(
               imageScanningConfiguration.encode(),
             ),
           if (imageTagMutabilityExclusionFilter != null)
             'image_tag_mutability_exclusion_filter': TfArg.literal([
               for (final e in imageTagMutabilityExclusionFilter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrRepository>`.
  RefTo<AwsEcrRepository> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `repository_url` attribute.
  TfRef<String> get repositoryUrl =>
      TfRef.attribute<String>(this, 'repository_url');
}
