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

  final List<TfArg<GlueCatalogDatabasePermissions>>? permissions;

  final GlueCatalogDatabasePrincipal? principal;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'principal': ?principal?.encode(),
  };
}

/// `permissions` — derived from the provider schema description.
enum GlueCatalogDatabasePermissions implements TerraformEnum {
  all('ALL'),
  select('SELECT'),
  alter('ALTER'),
  drop('DROP'),
  delete('DELETE'),
  insert('INSERT'),
  createDatabase('CREATE_DATABASE'),
  createTable('CREATE_TABLE'),
  dataLocationAccess('DATA_LOCATION_ACCESS');

  const GlueCatalogDatabasePermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `create_table_default_permission.principal` block of
/// `aws_glue_catalog_database` (derived from provider schema).
@immutable
final class GlueCatalogDatabasePrincipal {
  const GlueCatalogDatabasePrincipal({this.dataLakePrincipalIdentifier});

  final TfArg<String>? dataLakePrincipalIdentifier;

  Map<String, Object?> encode() => {
    'data_lake_principal_identifier': ?dataLakePrincipalIdentifier?.toTfJson(),
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
    'connection_name': ?connectionName?.toTfJson(),
    'identifier': ?identifier?.toTfJson(),
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
    'region': ?region?.toTfJson(),
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
           'catalog_id': ?catalogId,
           'description': ?description,
           'location_uri': ?locationUri,
           'name': name,
           'parameters': ?parameters,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueCatalogDatabase>`.
  RefTo<AwsGlueCatalogDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location_uri` attribute.
  TfRef<String> get locationUri =>
      TfRef.attribute<String>(this, 'location_uri');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
