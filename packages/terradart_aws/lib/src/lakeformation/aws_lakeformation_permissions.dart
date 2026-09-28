// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_permissions`.
const Set<String> _awsLakeformationPermissionsSensitive = <String>{};

/// Lakeformation Permissions enum for `permissions`.
enum LakeformationPermissionsPermissions implements TerraformEnum {
  all('ALL'),
  select('SELECT'),
  alter('ALTER'),
  drop('DROP'),
  delete('DELETE'),
  insert('INSERT'),
  describe('DESCRIBE'),
  createDatabase('CREATE_DATABASE'),
  createTable('CREATE_TABLE'),
  dataLocationAccess('DATA_LOCATION_ACCESS'),
  createLfTag('CREATE_LF_TAG'),
  associate('ASSOCIATE'),
  grantWithLfTagExpression('GRANT_WITH_LF_TAG_EXPRESSION'),
  createLfTagExpression('CREATE_LF_TAG_EXPRESSION'),
  createCatalog('CREATE_CATALOG'),
  superUser('SUPER_USER');

  const LakeformationPermissionsPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lakeformation Permissions Permissions With Grant enum for `permissions_with_grant_option`.
enum LakeformationPermissionsPermissionsWithGrantOption
    implements TerraformEnum {
  all('ALL'),
  select('SELECT'),
  alter('ALTER'),
  drop('DROP'),
  delete('DELETE'),
  insert('INSERT'),
  describe('DESCRIBE'),
  createDatabase('CREATE_DATABASE'),
  createTable('CREATE_TABLE'),
  dataLocationAccess('DATA_LOCATION_ACCESS'),
  createLfTag('CREATE_LF_TAG'),
  associate('ASSOCIATE'),
  grantWithLfTagExpression('GRANT_WITH_LF_TAG_EXPRESSION'),
  createLfTagExpression('CREATE_LF_TAG_EXPRESSION'),
  createCatalog('CREATE_CATALOG'),
  superUser('SUPER_USER');

  const LakeformationPermissionsPermissionsWithGrantOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `catalog_resource`, `data_cells_filter`, `data_location`, `database`, `lf_tag`, `lf_tag_policy`, `table`, `table_with_columns` on `aws_lakeformation_permissions`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `catalog_resource` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsCatalogResourceOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsCatalogResourceOption({
    required this.catalogResource,
  });

  final TfArg<bool> catalogResource;

  @override
  String get blockKey => 'catalog_resource';

  @override
  Map<String, Object?> encode() => {
    'catalog_resource': catalogResource.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'catalog_resource': catalogResource,
  };
}

/// Sets `data_cells_filter` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsDataCellsFilterOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsDataCellsFilterOption({
    required this.dataCellsFilter,
  });

  final LakeformationPermissionsDataCellsFilter dataCellsFilter;

  @override
  String get blockKey => 'data_cells_filter';

  @override
  Map<String, Object?> encode() => {
    'data_cells_filter': dataCellsFilter.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_cells_filter': TfArg.literal(dataCellsFilter.encode()),
  };
}

/// Sets `data_location` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsDataLocationOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsDataLocationOption({
    required this.dataLocation,
  });

  final LakeformationPermissionsDataLocation dataLocation;

  @override
  String get blockKey => 'data_location';

  @override
  Map<String, Object?> encode() => {'data_location': dataLocation.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_location': TfArg.literal(dataLocation.encode()),
  };
}

/// Sets `database` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsDatabaseOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsDatabaseOption({required this.database});

  final LakeformationPermissionsDatabase database;

  @override
  String get blockKey => 'database';

  @override
  Map<String, Object?> encode() => {'database': database.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database': TfArg.literal(database.encode()),
  };
}

/// Sets `lf_tag` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsLfTagOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsLfTagOption({required this.lfTag});

  final LakeformationPermissionsLfTag lfTag;

  @override
  String get blockKey => 'lf_tag';

  @override
  Map<String, Object?> encode() => {'lf_tag': lfTag.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'lf_tag': TfArg.literal(lfTag.encode()),
  };
}

/// Sets `lf_tag_policy` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsLfTagPolicyOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsLfTagPolicyOption({required this.lfTagPolicy});

  final LakeformationPermissionsLfTagPolicy lfTagPolicy;

  @override
  String get blockKey => 'lf_tag_policy';

  @override
  Map<String, Object?> encode() => {'lf_tag_policy': lfTagPolicy.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'lf_tag_policy': TfArg.literal(lfTagPolicy.encode()),
  };
}

/// Sets `table` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsTableOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsTableOption({required this.table});

  final LakeformationPermissionsTable table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {'table': table.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table': TfArg.literal(table.encode()),
  };
}

/// Sets `table_with_columns` (one of the [LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationPermissionsTableWithColumnsOption
    extends
        LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationPermissionsTableWithColumnsOption({
    required this.tableWithColumns,
  });

  final LakeformationPermissionsTableWithColumns tableWithColumns;

  @override
  String get blockKey => 'table_with_columns';

  @override
  Map<String, Object?> encode() => {
    'table_with_columns': tableWithColumns.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table_with_columns': TfArg.literal(tableWithColumns.encode()),
  };
}

/// Typed helper for the `data_cells_filter` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsDataCellsFilter {
  const LakeformationPermissionsDataCellsFilter({
    required this.databaseName,
    required this.name,
    required this.tableCatalogId,
    required this.tableName,
  });

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final TfArg<String> tableCatalogId;

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    'table_catalog_id': tableCatalogId.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Typed helper for the `data_location` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsDataLocation {
  const LakeformationPermissionsDataLocation({
    required this.arn,
    this.catalogId,
  });

  final TfArg<String> arn;

  final TfArg<String>? catalogId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
  };
}

/// Typed helper for the `database` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsDatabase {
  const LakeformationPermissionsDatabase({this.catalogId, required this.name});

  final TfArg<String>? catalogId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `lf_tag` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsLfTag {
  const LakeformationPermissionsLfTag({
    this.catalogId,
    required this.key,
    required this.values,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `lf_tag_policy` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsLfTagPolicy {
  const LakeformationPermissionsLfTagPolicy({
    this.catalogId,
    required this.resourceType,
    required this.expression,
  });

  final TfArg<String>? catalogId;

  final TfArg<LakeformationPermissionsLfTagPolicyResourceType> resourceType;

  final List<LakeformationPermissionsLfTagPolicyExpression> expression;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'expression': [for (final e in expression) e.encode()],
  };
}

/// `resource_type` — derived from the provider schema description.
enum LakeformationPermissionsLfTagPolicyResourceType implements TerraformEnum {
  database('DATABASE'),
  table('TABLE');

  const LakeformationPermissionsLfTagPolicyResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `lf_tag_policy.expression` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsLfTagPolicyExpression {
  const LakeformationPermissionsLfTagPolicyExpression({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `table` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsTable {
  const LakeformationPermissionsTable({
    this.catalogId,
    required this.databaseName,
    this.name,
    this.wildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> databaseName;

  final TfArg<String>? name;

  final TfArg<bool>? wildcard;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
  };
}

/// Typed helper for the `table_with_columns` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsTableWithColumns {
  const LakeformationPermissionsTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    this.excludedColumnNames,
    required this.name,
    this.wildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<Object?>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<List<Object?>>? excludedColumnNames;

  final TfArg<String> name;

  final TfArg<bool>? wildcard;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    if (columnNames != null) 'column_names': columnNames!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (excludedColumnNames != null)
      'excluded_column_names': excludedColumnNames!.toTfJson(),
    'name': name.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_permissions`.
final class AwsLakeformationPermissions extends Resource {
  static const String tfType = 'aws_lakeformation_permissions';

  AwsLakeformationPermissions({
    required super.localName,
    TfArg<String>? catalogId,
    required LakeformationPermissionsCatalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns
    catalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns,
    required List<TfArg<LakeformationPermissionsPermissions>> permissions,
    List<TfArg<LakeformationPermissionsPermissionsWithGrantOption>>?
    permissionsWithGrantOption,
    required TfArg<String> principal,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           ...catalogResourceOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagPolicyOrTableOrTableWithColumns
               .argMap,
           'permissions': TfArg.literal([
             for (final e in permissions) e.toTfJson(),
           ]),
           if (permissionsWithGrantOption != null)
             'permissions_with_grant_option': TfArg.literal([
               for (final e in permissionsWithGrantOption) e.toTfJson(),
             ]),
           'principal': principal,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationPermissionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
