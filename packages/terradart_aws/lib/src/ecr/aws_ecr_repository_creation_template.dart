// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_ecr_repository_creation_template`.
const Set<String> _awsEcrRepositoryCreationTemplateSensitive = <String>{};

/// Ecr Repository Creation Template Applied enum for `applied_for`.
enum EcrRepositoryCreationTemplateAppliedFor implements TerraformEnum {
  replication('REPLICATION'),
  pullThroughCache('PULL_THROUGH_CACHE'),
  createOnPush('CREATE_ON_PUSH');

  const EcrRepositoryCreationTemplateAppliedFor(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecr Repository Creation Template Image Tag enum for `image_tag_mutability`.
enum EcrRepositoryCreationTemplateImageTagMutability implements TerraformEnum {
  mutable('MUTABLE'),
  immutable('IMMUTABLE'),
  immutableWithExclusion('IMMUTABLE_WITH_EXCLUSION'),
  mutableWithExclusion('MUTABLE_WITH_EXCLUSION');

  const EcrRepositoryCreationTemplateImageTagMutability(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_ecr_repository_creation_template` (derived from provider schema).
@immutable
final class EcrRepositoryCreationTemplateEncryptionConfiguration {
  const EcrRepositoryCreationTemplateEncryptionConfiguration({
    this.encryptionType,
    this.kmsKey,
  });

  final TfArg<
    EcrRepositoryCreationTemplateEncryptionConfigurationEncryptionType
  >?
  encryptionType;

  final RefTo<AwsKmsKey>? kmsKey;

  Map<String, Object?> encode() => {
    if (encryptionType != null) 'encryption_type': encryptionType!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum EcrRepositoryCreationTemplateEncryptionConfigurationEncryptionType
    implements TerraformEnum {
  aes256('AES256'),
  kms('KMS'),
  kmsDsse('KMS_DSSE');

  const EcrRepositoryCreationTemplateEncryptionConfigurationEncryptionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    EcrRepositoryCreationTemplateImageTagMutabilityExclusionFilterFilterType
  >
  filterType;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum EcrRepositoryCreationTemplateImageTagMutabilityExclusionFilterFilterType
    implements TerraformEnum {
  wildcard('WILDCARD');

  const EcrRepositoryCreationTemplateImageTagMutabilityExclusionFilterFilterType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ecr_repository_creation_template`.
final class AwsEcrRepositoryCreationTemplate extends Resource {
  static const String tfType = 'aws_ecr_repository_creation_template';

  AwsEcrRepositoryCreationTemplate({
    required super.localName,
    required List<TfArg<EcrRepositoryCreationTemplateAppliedFor>> appliedFor,
    TfArg<String>? customRoleArn,
    TfArg<String>? description,
    TfArg<EcrRepositoryCreationTemplateImageTagMutability>? imageTagMutability,
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
           if (customRoleArn != null) 'custom_role_arn': customRoleArn,
           if (description != null) 'description': description,
           if (imageTagMutability != null)
             'image_tag_mutability': imageTagMutability,
           if (lifecyclePolicy != null) 'lifecycle_policy': lifecyclePolicy,
           'prefix': prefix,
           if (region != null) 'region': region,
           if (repositoryPolicy != null) 'repository_policy': repositoryPolicy,
           if (resourceTags != null) 'resource_tags': resourceTags,
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
}
