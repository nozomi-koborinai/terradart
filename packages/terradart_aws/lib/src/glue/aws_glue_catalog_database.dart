// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_catalog_database`.
const Set<String> _awsGlueCatalogDatabaseSensitive = <String>{};

/// Typed helper for the `create_table_default_permission` block of
/// `aws_glue_catalog_database` (derived from provider schema).
@immutable
final class GlueCatalogDatabaseCreateTableDefaultPermission {
  const GlueCatalogDatabaseCreateTableDefaultPermission({
    this.permissions,
    this.principal,
  });

  final TfArg<List<Object?>>? permissions;

  final GlueCatalogDatabaseCreateTableDefaultPermissionPrincipal? principal;

  Map<String, Object?> encode() => {
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    if (principal != null) 'principal': principal!.encode(),
  };
}

/// Typed helper for the `create_table_default_permission.principal` block of
/// `aws_glue_catalog_database` (derived from provider schema).
@immutable
final class GlueCatalogDatabaseCreateTableDefaultPermissionPrincipal {
  const GlueCatalogDatabaseCreateTableDefaultPermissionPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  final TfArg<String>? dataLakePrincipalIdentifier;

  Map<String, Object?> encode() => {
    if (dataLakePrincipalIdentifier != null)
      'data_lake_principal_identifier': dataLakePrincipalIdentifier!.toTfJson(),
  };
}

/// Typed helper for the `federated_database` block of
/// `aws_glue_catalog_database` (derived from provider schema).
@immutable
final class GlueCatalogDatabaseFederatedDatabase {
  const GlueCatalogDatabaseFederatedDatabase({
    this.connectionName,
    this.identifier,
  });

  final TfArg<String>? connectionName;

  final TfArg<String>? identifier;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    if (identifier != null) 'identifier': identifier!.toTfJson(),
  };
}

/// Typed helper for the `target_database` block of
/// `aws_glue_catalog_database` (derived from provider schema).
@immutable
final class GlueCatalogDatabaseTargetDatabase {
  const GlueCatalogDatabaseTargetDatabase({
    required this.catalogId,
    required this.databaseName,
    this.region,
  });

  final TfArg<String> catalogId;

  final TfArg<String> databaseName;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    'catalog_id': catalogId.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_catalog_database`.
final class AwsGlueCatalogDatabase extends Resource {
  static const String tfType = 'aws_glue_catalog_database';

  AwsGlueCatalogDatabase({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<String>? description,
    TfArg<String>? locationUri,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<GlueCatalogDatabaseCreateTableDefaultPermission>?
    createTableDefaultPermission,
    GlueCatalogDatabaseFederatedDatabase? federatedDatabase,
    GlueCatalogDatabaseTargetDatabase? targetDatabase,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (description != null) 'description': description,
           if (locationUri != null) 'location_uri': locationUri,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (createTableDefaultPermission != null)
             'create_table_default_permission': TfArg.literal([
               for (final e in createTableDefaultPermission) e.encode(),
             ]),
           if (federatedDatabase != null)
             'federated_database': TfArg.literal(federatedDatabase.encode()),
           if (targetDatabase != null)
             'target_database': TfArg.literal(targetDatabase.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCatalogDatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
