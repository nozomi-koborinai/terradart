// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_catalog`.
const Set<String> _awsGlueCatalogSensitive = <String>{};

/// Typed helper for the `catalog_properties` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCatalogProperties {
  const GlueCatalogCatalogProperties({
    this.customProperties,
    this.dataLakeAccessProperties,
    this.icebergOptimizationProperties,
  });

  final TfArg<Map<String, String>>? customProperties;

  final List<GlueCatalogCatalogPropertiesDataLakeAccessProperties>?
  dataLakeAccessProperties;

  final List<GlueCatalogCatalogPropertiesIcebergOptimizationProperties>?
  icebergOptimizationProperties;

  Map<String, Object?> encode() => {
    if (customProperties != null)
      'custom_properties': customProperties!.toTfJson(),
    if (dataLakeAccessProperties != null)
      'data_lake_access_properties': [
        for (final e in dataLakeAccessProperties!) e.encode(),
      ],
    if (icebergOptimizationProperties != null)
      'iceberg_optimization_properties': [
        for (final e in icebergOptimizationProperties!) e.encode(),
      ],
  };
}

/// Typed helper for the `catalog_properties.data_lake_access_properties` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCatalogPropertiesDataLakeAccessProperties {
  const GlueCatalogCatalogPropertiesDataLakeAccessProperties({
    this.catalogType,
    this.dataLakeAccess,
    this.dataTransferRole,
    this.kmsKey,
  });

  final TfArg<String>? catalogType;

  final TfArg<bool>? dataLakeAccess;

  final TfArg<String>? dataTransferRole;

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (catalogType != null) 'catalog_type': catalogType!.toTfJson(),
    if (dataLakeAccess != null) 'data_lake_access': dataLakeAccess!.toTfJson(),
    if (dataTransferRole != null)
      'data_transfer_role': dataTransferRole!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// Typed helper for the `catalog_properties.iceberg_optimization_properties` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCatalogPropertiesIcebergOptimizationProperties {
  const GlueCatalogCatalogPropertiesIcebergOptimizationProperties({
    this.compaction,
    this.orphanFileDeletion,
    this.retention,
    this.roleArn,
  });

  final TfArg<Map<String, String>>? compaction;

  final TfArg<Map<String, String>>? orphanFileDeletion;

  final TfArg<Map<String, String>>? retention;

  final TfArg<String>? roleArn;

  Map<String, Object?> encode() => {
    if (compaction != null) 'compaction': compaction!.toTfJson(),
    if (orphanFileDeletion != null)
      'orphan_file_deletion': orphanFileDeletion!.toTfJson(),
    if (retention != null) 'retention': retention!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
  };
}

/// Typed helper for the `create_database_default_permissions` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCreateDatabaseDefaultPermissions {
  const GlueCatalogCreateDatabaseDefaultPermissions({
    this.permissions,
    this.principal,
  });

  final TfArg<List<Object?>>? permissions;

  final List<GlueCatalogCreateDatabaseDefaultPermissionsPrincipal>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `create_database_default_permissions.principal` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCreateDatabaseDefaultPermissionsPrincipal {
  const GlueCatalogCreateDatabaseDefaultPermissionsPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  final TfArg<String>? dataLakePrincipalIdentifier;

  Map<String, Object?> encode() => {
    if (dataLakePrincipalIdentifier != null)
      'data_lake_principal_identifier': dataLakePrincipalIdentifier!.toTfJson(),
  };
}

/// Typed helper for the `create_table_default_permissions` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCreateTableDefaultPermissions {
  const GlueCatalogCreateTableDefaultPermissions({
    this.permissions,
    this.principal,
  });

  final TfArg<List<Object?>>? permissions;

  final List<GlueCatalogCreateTableDefaultPermissionsPrincipal>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `create_table_default_permissions.principal` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogCreateTableDefaultPermissionsPrincipal {
  const GlueCatalogCreateTableDefaultPermissionsPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  final TfArg<String>? dataLakePrincipalIdentifier;

  Map<String, Object?> encode() => {
    if (dataLakePrincipalIdentifier != null)
      'data_lake_principal_identifier': dataLakePrincipalIdentifier!.toTfJson(),
  };
}

/// Typed helper for the `federated_catalog` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogFederatedCatalog {
  const GlueCatalogFederatedCatalog({
    this.connectionName,
    this.connectionType,
    this.identifier,
  });

  final TfArg<String>? connectionName;

  final TfArg<String>? connectionType;

  final TfArg<String>? identifier;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    if (connectionType != null) 'connection_type': connectionType!.toTfJson(),
    if (identifier != null) 'identifier': identifier!.toTfJson(),
  };
}

/// Typed helper for the `target_redshift_catalog` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogTargetRedshiftCatalog {
  const GlueCatalogTargetRedshiftCatalog({required this.catalogArn});

  final TfArg<String> catalogArn;

  Map<String, Object?> encode() => {'catalog_arn': catalogArn.toTfJson()};
}

/// Factory wrapper for `aws_glue_catalog`.
final class AwsGlueCatalog extends Resource {
  static const String tfType = 'aws_glue_catalog';

  AwsGlueCatalog({
    required super.localName,
    TfArg<String>? allowFullTableExternalDataAccess,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? overwriteChildResourcePermissionsWithDefault,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<GlueCatalogCatalogProperties>? catalogProperties,
    List<GlueCatalogCreateDatabaseDefaultPermissions>?
    createDatabaseDefaultPermissions,
    List<GlueCatalogCreateTableDefaultPermissions>?
    createTableDefaultPermissions,
    List<GlueCatalogFederatedCatalog>? federatedCatalog,
    List<GlueCatalogTargetRedshiftCatalog>? targetRedshiftCatalog,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowFullTableExternalDataAccess != null)
             'allow_full_table_external_data_access':
                 allowFullTableExternalDataAccess,
           if (description != null) 'description': description,
           'name': name,
           if (overwriteChildResourcePermissionsWithDefault != null)
             'overwrite_child_resource_permissions_with_default':
                 overwriteChildResourcePermissionsWithDefault,
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (catalogProperties != null)
             'catalog_properties': TfArg.literal([
               for (final e in catalogProperties) e.encode(),
             ]),
           if (createDatabaseDefaultPermissions != null)
             'create_database_default_permissions': TfArg.literal([
               for (final e in createDatabaseDefaultPermissions) e.encode(),
             ]),
           if (createTableDefaultPermissions != null)
             'create_table_default_permissions': TfArg.literal([
               for (final e in createTableDefaultPermissions) e.encode(),
             ]),
           if (federatedCatalog != null)
             'federated_catalog': TfArg.literal([
               for (final e in federatedCatalog) e.encode(),
             ]),
           if (targetRedshiftCatalog != null)
             'target_redshift_catalog': TfArg.literal([
               for (final e in targetRedshiftCatalog) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCatalogSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
