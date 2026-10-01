// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ecr/aws_ecr_repository_creation_template.dart';

/// Sensitive field paths for `aws_ecr_repository_creation_template`.
const Set<String> _awsEcrRepositoryCreationTemplateSensitive = <String>{};

/// Factory wrapper for `aws_ecr_repository_creation_template`.
final class DataAwsEcrRepositoryCreationTemplate extends Data {
  static const String tfType = 'aws_ecr_repository_creation_template';

  DataAwsEcrRepositoryCreationTemplate({
    required super.localName,
    required TfArg<String> prefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? resourceTags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'prefix': prefix,
           'region': ?region,
           'resource_tags': ?resourceTags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrRepositoryCreationTemplateSensitive;

  /// A reference to the `aws_ecr_repository_creation_template` this data source reads, for
  /// arguments typed `RefTo<AwsEcrRepositoryCreationTemplate>`.
  RefTo<AwsEcrRepositoryCreationTemplate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `applied_for` attribute.
  TfRef<List<String>> get appliedFor =>
      TfRef.attribute<List<String>>(this, 'applied_for');

  /// Reference to `custom_role_arn` attribute.
  TfRef<String> get customRoleArn =>
      TfRef.attribute<String>(this, 'custom_role_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'encryption_configuration',
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

  /// Reference to `lifecycle_policy` attribute.
  TfRef<String> get lifecyclePolicy =>
      TfRef.attribute<String>(this, 'lifecycle_policy');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `repository_policy` attribute.
  TfRef<String> get repositoryPolicy =>
      TfRef.attribute<String>(this, 'repository_policy');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');
}
