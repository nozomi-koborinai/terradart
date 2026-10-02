// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_ecr_repository_creation_template`.
const Set<String> _awsEcrRepositoryCreationTemplateSensitive = <String>{};

/// Ecr Repository Creation Template Applied enum for `applied_for`.
extension type const EcrRepositoryCreationTemplateAppliedFor._(TfArg<String> _)
    implements TfArg<String> {
  EcrRepositoryCreationTemplateAppliedFor.variable(String name)
    : this._(TfArg.variable(name));
  EcrRepositoryCreationTemplateAppliedFor.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRepositoryCreationTemplateAppliedFor.arg(TfArg<String> arg)
    : this._(arg);

  static const replication = EcrRepositoryCreationTemplateAppliedFor._(
    TfArgLiteral('REPLICATION'),
  );
  static const pullThroughCache = EcrRepositoryCreationTemplateAppliedFor._(
    TfArgLiteral('PULL_THROUGH_CACHE'),
  );
  static const createOnPush = EcrRepositoryCreationTemplateAppliedFor._(
    TfArgLiteral('CREATE_ON_PUSH'),
  );

  static const List<EcrRepositoryCreationTemplateAppliedFor> values = [
    replication,
    pullThroughCache,
    createOnPush,
  ];
}

/// Ecr Repository Creation Template Image Tag enum for `image_tag_mutability`.
extension type const EcrRepositoryCreationTemplateImageTagMutability._(
  TfArg<String> _
) implements TfArg<String> {
  EcrRepositoryCreationTemplateImageTagMutability.variable(String name)
    : this._(TfArg.variable(name));
  EcrRepositoryCreationTemplateImageTagMutability.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRepositoryCreationTemplateImageTagMutability.arg(TfArg<String> arg)
    : this._(arg);

  static const mutable = EcrRepositoryCreationTemplateImageTagMutability._(
    TfArgLiteral('MUTABLE'),
  );
  static const immutable = EcrRepositoryCreationTemplateImageTagMutability._(
    TfArgLiteral('IMMUTABLE'),
  );
  static const immutableWithExclusion =
      EcrRepositoryCreationTemplateImageTagMutability._(
        TfArgLiteral('IMMUTABLE_WITH_EXCLUSION'),
      );
  static const mutableWithExclusion =
      EcrRepositoryCreationTemplateImageTagMutability._(
        TfArgLiteral('MUTABLE_WITH_EXCLUSION'),
      );

  static const List<EcrRepositoryCreationTemplateImageTagMutability> values = [
    mutable,
    immutable,
    immutableWithExclusion,
    mutableWithExclusion,
  ];
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_ecr_repository_creation_template` (derived from provider schema).
@immutable
final class EcrRepositoryCreationTemplateEncryptionConfiguration {
  const EcrRepositoryCreationTemplateEncryptionConfiguration({
    this.encryptionType,
    this.kmsKey,
  });

  final EcrRepositoryCreationTemplateEncryptionType? encryptionType;

  final RefTo<AwsKmsKey>? kmsKey;

  @internal
  Map<String, Object?> encode() => {
    'encryption_type': ?encryptionType?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
extension type const EcrRepositoryCreationTemplateEncryptionType._(
  TfArg<String> _
) implements TfArg<String> {
  EcrRepositoryCreationTemplateEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  EcrRepositoryCreationTemplateEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRepositoryCreationTemplateEncryptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const aes256 = EcrRepositoryCreationTemplateEncryptionType._(
    TfArgLiteral('AES256'),
  );
  static const kms = EcrRepositoryCreationTemplateEncryptionType._(
    TfArgLiteral('KMS'),
  );
  static const kmsDsse = EcrRepositoryCreationTemplateEncryptionType._(
    TfArgLiteral('KMS_DSSE'),
  );

  static const List<EcrRepositoryCreationTemplateEncryptionType> values = [
    aes256,
    kms,
    kmsDsse,
  ];
}

/// Typed helper for the `image_tag_mutability_exclusion_filter` block of
/// `aws_ecr_repository_creation_template` (derived from provider schema).
@immutable
final class EcrRepositoryCreationTemplateImageTagMutabilityExclusionFilter {
  const EcrRepositoryCreationTemplateImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  final TfArg<String> filter;

  final EcrRepositoryCreationTemplateFilterType filterType;

  @internal
  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
extension type const EcrRepositoryCreationTemplateFilterType._(TfArg<String> _)
    implements TfArg<String> {
  EcrRepositoryCreationTemplateFilterType.variable(String name)
    : this._(TfArg.variable(name));
  EcrRepositoryCreationTemplateFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRepositoryCreationTemplateFilterType.arg(TfArg<String> arg)
    : this._(arg);

  static const wildcard = EcrRepositoryCreationTemplateFilterType._(
    TfArgLiteral('WILDCARD'),
  );

  static const List<EcrRepositoryCreationTemplateFilterType> values = [
    wildcard,
  ];
}

/// Factory wrapper for `aws_ecr_repository_creation_template`.
final class AwsEcrRepositoryCreationTemplate extends Resource {
  static const String tfType = 'aws_ecr_repository_creation_template';

  AwsEcrRepositoryCreationTemplate(
    super.localName, {
    required List<EcrRepositoryCreationTemplateAppliedFor> appliedFor,
    TfArg<String>? customRoleArn,
    TfArg<String>? description,
    EcrRepositoryCreationTemplateImageTagMutability? imageTagMutability,
    TfArg<String>? lifecyclePolicy,
    required TfArg<String> prefix,
    TfArg<String>? region,
    TfArg<String>? repositoryPolicy,
    TfArg<Map<String, String>>? resourceTags,
    List<EcrRepositoryCreationTemplateEncryptionConfiguration>?
    encryptionConfiguration,
    List<EcrRepositoryCreationTemplateImageTagMutabilityExclusionFilter>?
    imageTagMutabilityExclusionFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'applied_for': TfArg.literal([
             for (final e in appliedFor) e.toTfJson(),
           ]),
           'custom_role_arn': ?customRoleArn,
           'description': ?description,
           'image_tag_mutability': ?imageTagMutability,
           'lifecycle_policy': ?lifecyclePolicy,
           'prefix': prefix,
           'region': ?region,
           'repository_policy': ?repositoryPolicy,
           'resource_tags': ?resourceTags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
           if (imageTagMutabilityExclusionFilter != null)
             'image_tag_mutability_exclusion_filter': TfArg.literal([
               for (final e in imageTagMutabilityExclusionFilter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrRepositoryCreationTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrRepositoryCreationTemplate>`.
  RefTo<AwsEcrRepositoryCreationTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `applied_for` attribute.
  TfRef<List<String>> get appliedFor =>
      TfRef.attribute<List<String>>(this, 'applied_for');

  /// Reference to `custom_role_arn` attribute.
  TfRef<String> get customRoleArn =>
      TfRef.attribute<String>(this, 'custom_role_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `image_tag_mutability` attribute.
  TfRef<String> get imageTagMutability =>
      TfRef.attribute<String>(this, 'image_tag_mutability');

  /// Reference to `lifecycle_policy` attribute.
  TfRef<String> get lifecyclePolicy =>
      TfRef.attribute<String>(this, 'lifecycle_policy');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository_policy` attribute.
  TfRef<String> get repositoryPolicy =>
      TfRef.attribute<String>(this, 'repository_policy');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');
}
