// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_glue_catalog`.
const Set<String> _awsGlueCatalogSensitive = <String>{};

/// Glue Catalog Allow Full Table External Data enum for `allow_full_table_external_data_access`.
extension type const GlueCatalogAllowFullTableExternalDataAccess._(
  TfArg<String> _
) implements TfArg<String> {
  GlueCatalogAllowFullTableExternalDataAccess.variable(String name)
    : this._(TfArg.variable(name));
  GlueCatalogAllowFullTableExternalDataAccess.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCatalogAllowFullTableExternalDataAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const trueCase = GlueCatalogAllowFullTableExternalDataAccess._(
    TfArgLiteral('True'),
  );
  static const falseCase = GlueCatalogAllowFullTableExternalDataAccess._(
    TfArgLiteral('False'),
  );

  static const List<GlueCatalogAllowFullTableExternalDataAccess> values = [
    trueCase,
    falseCase,
  ];
}

/// Glue Catalog Overwrite Child Resource Permissions With enum for `overwrite_child_resource_permissions_with_default`.
extension type const GlueCatalogOverwriteChildResourcePermissionsWithDefault._(
  TfArg<String> _
) implements TfArg<String> {
  GlueCatalogOverwriteChildResourcePermissionsWithDefault.variable(String name)
    : this._(TfArg.variable(name));
  GlueCatalogOverwriteChildResourcePermissionsWithDefault.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GlueCatalogOverwriteChildResourcePermissionsWithDefault.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const accept =
      GlueCatalogOverwriteChildResourcePermissionsWithDefault._(
        TfArgLiteral('Accept'),
      );
  static const deny = GlueCatalogOverwriteChildResourcePermissionsWithDefault._(
    TfArgLiteral('Deny'),
  );

  static const List<GlueCatalogOverwriteChildResourcePermissionsWithDefault>
  values = [accept, deny];
}

/// Typed helper for the `catalog_properties` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogProperties {
  const GlueCatalogProperties({
    this.customProperties,
    this.dataLakeAccessProperties,
    this.icebergOptimizationProperties,
  });

  final TfArg<Map<String, String>>? customProperties;

  final List<GlueCatalogDataLakeAccessProperties>? dataLakeAccessProperties;

  final List<GlueCatalogIcebergOptimizationProperties>?
  icebergOptimizationProperties;

  @internal
  Map<String, Object?> encode() => {
    'custom_properties': ?customProperties?.toTfJson(),
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
final class GlueCatalogDataLakeAccessProperties {
  const GlueCatalogDataLakeAccessProperties({
    this.catalogType,
    this.dataLakeAccess,
    this.dataTransferRole,
    this.kmsKey,
  });

  final TfArg<String>? catalogType;

  final TfArg<bool>? dataLakeAccess;

  final TfArg<String>? dataTransferRole;

  final RefTo<AwsKmsKey>? kmsKey;

  @internal
  Map<String, Object?> encode() => {
    'catalog_type': ?catalogType?.toTfJson(),
    'data_lake_access': ?dataLakeAccess?.toTfJson(),
    'data_transfer_role': ?dataTransferRole?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `catalog_properties.iceberg_optimization_properties` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogIcebergOptimizationProperties {
  const GlueCatalogIcebergOptimizationProperties({
    this.compaction,
    this.orphanFileDeletion,
    this.retention,
    this.roleArn,
  });

  final TfArg<Map<String, String>>? compaction;

  final TfArg<Map<String, String>>? orphanFileDeletion;

  final TfArg<Map<String, String>>? retention;

  final RefTo<AwsIamRole>? roleArn;

  @internal
  Map<String, Object?> encode() => {
    'compaction': ?compaction?.toTfJson(),
    'orphan_file_deletion': ?orphanFileDeletion?.toTfJson(),
    'retention': ?retention?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
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

  final TfArg<List<String>>? permissions;

  final List<GlueCatalogPrincipal>? principal;

  @internal
  Map<String, Object?> encode() => {
    'permissions': ?permissions?.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `create_database_default_permissions.principal` block of
/// `aws_glue_catalog` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GlueCatalogPrincipal {
  const GlueCatalogPrincipal({this.dataLakePrincipalIdentifier});

  final TfArg<String>? dataLakePrincipalIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'data_lake_principal_identifier': ?dataLakePrincipalIdentifier?.toTfJson(),
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

  final TfArg<List<String>>? permissions;

  final List<GlueCatalogPrincipal>? principal;

  @internal
  Map<String, Object?> encode() => {
    'permissions': ?permissions?.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
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

  @internal
  Map<String, Object?> encode() => {
    'connection_name': ?connectionName?.toTfJson(),
    'connection_type': ?connectionType?.toTfJson(),
    'identifier': ?identifier?.toTfJson(),
  };
}

/// Typed helper for the `target_redshift_catalog` block of
/// `aws_glue_catalog` (derived from provider schema).
@immutable
final class GlueCatalogTargetRedshiftCatalog {
  const GlueCatalogTargetRedshiftCatalog({required this.catalogArn});

  final TfArg<String> catalogArn;

  @internal
  Map<String, Object?> encode() => {'catalog_arn': catalogArn.toTfJson()};
}

/// Factory wrapper for `aws_glue_catalog`.
final class AwsGlueCatalog extends Resource {
  static const String tfType = 'aws_glue_catalog';

  AwsGlueCatalog(
    super.localName, {
    GlueCatalogAllowFullTableExternalDataAccess?
    allowFullTableExternalDataAccess,
    TfArg<String>? description,
    required TfArg<String> name,
    GlueCatalogOverwriteChildResourcePermissionsWithDefault?
    overwriteChildResourcePermissionsWithDefault,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<GlueCatalogProperties>? catalogProperties,
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
           'allow_full_table_external_data_access':
               ?allowFullTableExternalDataAccess,
           'description': ?description,
           'name': name,
           'overwrite_child_resource_permissions_with_default':
               ?overwriteChildResourcePermissionsWithDefault,
           'parameters': ?parameters,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueCatalog>`.
  RefTo<AwsGlueCatalog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `allow_full_table_external_data_access` attribute.
  TfRef<String> get allowFullTableExternalDataAccess =>
      TfRef.attribute<String>(this, 'allow_full_table_external_data_access');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `overwrite_child_resource_permissions_with_default` attribute.
  TfRef<String> get overwriteChildResourcePermissionsWithDefault =>
      TfRef.attribute<String>(
        this,
        'overwrite_child_resource_permissions_with_default',
      );

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
