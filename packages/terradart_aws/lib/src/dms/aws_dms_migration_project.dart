// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_migration_project`.
const Set<String> _awsDmsMigrationProjectSensitive = <String>{};

/// Typed helper for the `schema_conversion_application_attributes` block of
/// `aws_dms_migration_project` (derived from provider schema).
@immutable
final class DmsMigrationProjectSchemaConversionApplicationAttributes {
  const DmsMigrationProjectSchemaConversionApplicationAttributes({
    this.s3BucketPath,
    this.s3BucketRoleArn,
  });

  final TfArg<String>? s3BucketPath;

  final TfArg<String>? s3BucketRoleArn;

  Map<String, Object?> encode() => {
    if (s3BucketPath != null) 's3_bucket_path': s3BucketPath!.toTfJson(),
    if (s3BucketRoleArn != null)
      's3_bucket_role_arn': s3BucketRoleArn!.toTfJson(),
  };
}

/// Typed helper for the `source_data_provider_descriptor` block of
/// `aws_dms_migration_project` (derived from provider schema).
@immutable
final class DmsMigrationProjectSourceDataProviderDescriptor {
  const DmsMigrationProjectSourceDataProviderDescriptor({
    required this.dataProviderArn,
    this.secretsManagerAccessRoleArn,
    this.secretsManagerSecretId,
  });

  final TfArg<String> dataProviderArn;

  final TfArg<String>? secretsManagerAccessRoleArn;

  final TfArg<String>? secretsManagerSecretId;

  Map<String, Object?> encode() => {
    'data_provider_arn': dataProviderArn.toTfJson(),
    if (secretsManagerAccessRoleArn != null)
      'secrets_manager_access_role_arn': secretsManagerAccessRoleArn!
          .toTfJson(),
    if (secretsManagerSecretId != null)
      'secrets_manager_secret_id': secretsManagerSecretId!.toTfJson(),
  };
}

/// Typed helper for the `target_data_provider_descriptor` block of
/// `aws_dms_migration_project` (derived from provider schema).
@immutable
final class DmsMigrationProjectTargetDataProviderDescriptor {
  const DmsMigrationProjectTargetDataProviderDescriptor({
    required this.dataProviderArn,
    this.secretsManagerAccessRoleArn,
    this.secretsManagerSecretId,
  });

  final TfArg<String> dataProviderArn;

  final TfArg<String>? secretsManagerAccessRoleArn;

  final TfArg<String>? secretsManagerSecretId;

  Map<String, Object?> encode() => {
    'data_provider_arn': dataProviderArn.toTfJson(),
    if (secretsManagerAccessRoleArn != null)
      'secrets_manager_access_role_arn': secretsManagerAccessRoleArn!
          .toTfJson(),
    if (secretsManagerSecretId != null)
      'secrets_manager_secret_id': secretsManagerSecretId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dms_migration_project`.
final class AwsDmsMigrationProject extends Resource {
  static const String tfType = 'aws_dms_migration_project';

  AwsDmsMigrationProject({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> instanceProfileArn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transformationRules,
    List<DmsMigrationProjectSchemaConversionApplicationAttributes>?
    schemaConversionApplicationAttributes,
    List<DmsMigrationProjectSourceDataProviderDescriptor>?
    sourceDataProviderDescriptor,
    List<DmsMigrationProjectTargetDataProviderDescriptor>?
    targetDataProviderDescriptor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'instance_profile_arn': instanceProfileArn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transformationRules != null)
             'transformation_rules': transformationRules,
           if (schemaConversionApplicationAttributes != null)
             'schema_conversion_application_attributes': TfArg.literal([
               for (final e in schemaConversionApplicationAttributes)
                 e.encode(),
             ]),
           if (sourceDataProviderDescriptor != null)
             'source_data_provider_descriptor': TfArg.literal([
               for (final e in sourceDataProviderDescriptor) e.encode(),
             ]),
           if (targetDataProviderDescriptor != null)
             'target_data_provider_descriptor': TfArg.literal([
               for (final e in targetDataProviderDescriptor) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsMigrationProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `instance_profile_name` attribute.
  TfRef<String> get instanceProfileName =>
      TfRef.attribute<String>(this, 'instance_profile_name');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
