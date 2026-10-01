// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_permissions`.
const Set<String> _awsLakeformationPermissionsSensitive = <String>{};

/// Lakeformation enum for `permissions`.
extension type const LakeformationPermissions._(TfArg<String> _)
    implements TfArg<String> {
  LakeformationPermissions.variable(String name) : this._(TfArg.variable(name));
  LakeformationPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const LakeformationPermissions.arg(TfArg<String> arg) : this._(arg);

  static const all = LakeformationPermissions._(TfArgLiteral('ALL'));
  static const select = LakeformationPermissions._(TfArgLiteral('SELECT'));
  static const alter = LakeformationPermissions._(TfArgLiteral('ALTER'));
  static const drop = LakeformationPermissions._(TfArgLiteral('DROP'));
  static const delete = LakeformationPermissions._(TfArgLiteral('DELETE'));
  static const insert = LakeformationPermissions._(TfArgLiteral('INSERT'));
  static const describe = LakeformationPermissions._(TfArgLiteral('DESCRIBE'));
  static const createDatabase = LakeformationPermissions._(
    TfArgLiteral('CREATE_DATABASE'),
  );
  static const createTable = LakeformationPermissions._(
    TfArgLiteral('CREATE_TABLE'),
  );
  static const dataLocationAccess = LakeformationPermissions._(
    TfArgLiteral('DATA_LOCATION_ACCESS'),
  );
  static const createLfTag = LakeformationPermissions._(
    TfArgLiteral('CREATE_LF_TAG'),
  );
  static const associate = LakeformationPermissions._(
    TfArgLiteral('ASSOCIATE'),
  );
  static const grantWithLfTagExpression = LakeformationPermissions._(
    TfArgLiteral('GRANT_WITH_LF_TAG_EXPRESSION'),
  );
  static const createLfTagExpression = LakeformationPermissions._(
    TfArgLiteral('CREATE_LF_TAG_EXPRESSION'),
  );
  static const createCatalog = LakeformationPermissions._(
    TfArgLiteral('CREATE_CATALOG'),
  );
  static const superUser = LakeformationPermissions._(
    TfArgLiteral('SUPER_USER'),
  );

  static const List<LakeformationPermissions> values = [
    all,
    select,
    alter,
    drop,
    delete,
    insert,
    describe,
    createDatabase,
    createTable,
    dataLocationAccess,
    createLfTag,
    associate,
    grantWithLfTagExpression,
    createLfTagExpression,
    createCatalog,
    superUser,
  ];
}

/// Lakeformation Permissions With Grant enum for `permissions_with_grant_option`.
extension type const LakeformationPermissionsWithGrantOption._(TfArg<String> _)
    implements TfArg<String> {
  LakeformationPermissionsWithGrantOption.variable(String name)
    : this._(TfArg.variable(name));
  LakeformationPermissionsWithGrantOption.expression(String template)
    : this._(TfArg.expression(template));
  const LakeformationPermissionsWithGrantOption.arg(TfArg<String> arg)
    : this._(arg);

  static const all = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('ALL'),
  );
  static const select = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('SELECT'),
  );
  static const alter = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('ALTER'),
  );
  static const drop = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('DROP'),
  );
  static const delete = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('DELETE'),
  );
  static const insert = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('INSERT'),
  );
  static const describe = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('DESCRIBE'),
  );
  static const createDatabase = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('CREATE_DATABASE'),
  );
  static const createTable = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('CREATE_TABLE'),
  );
  static const dataLocationAccess = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('DATA_LOCATION_ACCESS'),
  );
  static const createLfTag = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('CREATE_LF_TAG'),
  );
  static const associate = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('ASSOCIATE'),
  );
  static const grantWithLfTagExpression =
      LakeformationPermissionsWithGrantOption._(
        TfArgLiteral('GRANT_WITH_LF_TAG_EXPRESSION'),
      );
  static const createLfTagExpression =
      LakeformationPermissionsWithGrantOption._(
        TfArgLiteral('CREATE_LF_TAG_EXPRESSION'),
      );
  static const createCatalog = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('CREATE_CATALOG'),
  );
  static const superUser = LakeformationPermissionsWithGrantOption._(
    TfArgLiteral('SUPER_USER'),
  );

  static const List<LakeformationPermissionsWithGrantOption> values = [
    all,
    select,
    alter,
    drop,
    delete,
    insert,
    describe,
    createDatabase,
    createTable,
    dataLocationAccess,
    createLfTag,
    associate,
    grantWithLfTagExpression,
    createLfTagExpression,
    createCatalog,
    superUser,
  ];
}

/// Exactly one of `catalog_resource`, `data_cells_filter`, `data_location`, `database`, `lf_tag`, `lf_tag_policy`, `table`, `table_with_columns` on `aws_lakeformation_permissions`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.catalogResource(...)`.
sealed class LakeformationPermissionsResource {
  const LakeformationPermissionsResource();

  /// Sets `catalog_resource`.
  const factory LakeformationPermissionsResource.catalogResource(
    TfArg<bool> catalogResource,
  ) = LakeformationPermissionsCatalogResource;

  /// Sets `data_cells_filter`.
  const factory LakeformationPermissionsResource.dataCellsFilter(
    LakeformationPermissionsDataCellsFilter dataCellsFilter,
  ) = LakeformationPermissionsResourceDataCellsFilter;

  /// Sets `data_location`.
  const factory LakeformationPermissionsResource.dataLocation(
    LakeformationPermissionsDataLocation dataLocation,
  ) = LakeformationPermissionsResourceDataLocation;

  /// Sets `database`.
  const factory LakeformationPermissionsResource.database(
    LakeformationPermissionsDatabase database,
  ) = LakeformationPermissionsResourceDatabase;

  /// Sets `lf_tag`.
  const factory LakeformationPermissionsResource.lfTag(
    LakeformationPermissionsLfTag lfTag,
  ) = LakeformationPermissionsResourceLfTag;

  /// Sets `lf_tag_policy`.
  const factory LakeformationPermissionsResource.lfTagPolicy(
    LakeformationPermissionsLfTagPolicy lfTagPolicy,
  ) = LakeformationPermissionsResourceLfTagPolicy;

  /// Sets `table`.
  const factory LakeformationPermissionsResource.table(
    LakeformationPermissionsTable table,
  ) = LakeformationPermissionsResourceTable;

  /// Sets `table_with_columns`.
  const factory LakeformationPermissionsResource.tableWithColumns(
    LakeformationPermissionsTableWithColumns tableWithColumns,
  ) = LakeformationPermissionsResourceTableWithColumns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LakeformationPermissionsResource.catalogResource] choice: sets `catalog_resource`.
final class LakeformationPermissionsCatalogResource
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsCatalogResource(this.catalogResource);

  final TfArg<bool> catalogResource;

  @internal
  @override
  String get blockKey => 'catalog_resource';

  @internal
  @override
  Map<String, Object?> encode() => {
    'catalog_resource': catalogResource.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'catalog_resource': catalogResource,
  };
}

/// The [LakeformationPermissionsResource.dataCellsFilter] choice: sets `data_cells_filter`.
final class LakeformationPermissionsResourceDataCellsFilter
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceDataCellsFilter(this.dataCellsFilter);

  final LakeformationPermissionsDataCellsFilter dataCellsFilter;

  @internal
  @override
  String get blockKey => 'data_cells_filter';

  @internal
  @override
  Map<String, Object?> encode() => {
    'data_cells_filter': dataCellsFilter.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_cells_filter': TfArg.literal(dataCellsFilter.encode()),
  };
}

/// The [LakeformationPermissionsResource.dataLocation] choice: sets `data_location`.
final class LakeformationPermissionsResourceDataLocation
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceDataLocation(this.dataLocation);

  final LakeformationPermissionsDataLocation dataLocation;

  @internal
  @override
  String get blockKey => 'data_location';

  @internal
  @override
  Map<String, Object?> encode() => {'data_location': dataLocation.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_location': TfArg.literal(dataLocation.encode()),
  };
}

/// The [LakeformationPermissionsResource.database] choice: sets `database`.
final class LakeformationPermissionsResourceDatabase
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceDatabase(this.database);

  final LakeformationPermissionsDatabase database;

  @internal
  @override
  String get blockKey => 'database';

  @internal
  @override
  Map<String, Object?> encode() => {'database': database.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'database': TfArg.literal(database.encode()),
  };
}

/// The [LakeformationPermissionsResource.lfTag] choice: sets `lf_tag`.
final class LakeformationPermissionsResourceLfTag
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceLfTag(this.lfTag);

  final LakeformationPermissionsLfTag lfTag;

  @internal
  @override
  String get blockKey => 'lf_tag';

  @internal
  @override
  Map<String, Object?> encode() => {'lf_tag': lfTag.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'lf_tag': TfArg.literal(lfTag.encode()),
  };
}

/// The [LakeformationPermissionsResource.lfTagPolicy] choice: sets `lf_tag_policy`.
final class LakeformationPermissionsResourceLfTagPolicy
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceLfTagPolicy(this.lfTagPolicy);

  final LakeformationPermissionsLfTagPolicy lfTagPolicy;

  @internal
  @override
  String get blockKey => 'lf_tag_policy';

  @internal
  @override
  Map<String, Object?> encode() => {'lf_tag_policy': lfTagPolicy.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'lf_tag_policy': TfArg.literal(lfTagPolicy.encode()),
  };
}

/// The [LakeformationPermissionsResource.table] choice: sets `table`.
final class LakeformationPermissionsResourceTable
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceTable(this.table);

  final LakeformationPermissionsTable table;

  @internal
  @override
  String get blockKey => 'table';

  @internal
  @override
  Map<String, Object?> encode() => {'table': table.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'table': TfArg.literal(table.encode()),
  };
}

/// The [LakeformationPermissionsResource.tableWithColumns] choice: sets `table_with_columns`.
final class LakeformationPermissionsResourceTableWithColumns
    extends LakeformationPermissionsResource {
  const LakeformationPermissionsResourceTableWithColumns(this.tableWithColumns);

  final LakeformationPermissionsTableWithColumns tableWithColumns;

  @internal
  @override
  String get blockKey => 'table_with_columns';

  @internal
  @override
  Map<String, Object?> encode() => {
    'table_with_columns': tableWithColumns.encode(),
  };

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'catalog_id': ?catalogId?.toTfJson(),
  };
}

/// Typed helper for the `database` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsDatabase {
  const LakeformationPermissionsDatabase({this.catalogId, required this.name});

  final TfArg<String>? catalogId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
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

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
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

  final LakeformationPermissionsResourceType resourceType;

  final List<LakeformationPermissionsExpression> expression;

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'expression': [for (final e in expression) e.encode()],
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const LakeformationPermissionsResourceType._(TfArg<String> _)
    implements TfArg<String> {
  LakeformationPermissionsResourceType.variable(String name)
    : this._(TfArg.variable(name));
  LakeformationPermissionsResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const LakeformationPermissionsResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const database = LakeformationPermissionsResourceType._(
    TfArgLiteral('DATABASE'),
  );
  static const table = LakeformationPermissionsResourceType._(
    TfArgLiteral('TABLE'),
  );

  static const List<LakeformationPermissionsResourceType> values = [
    database,
    table,
  ];
}

/// Typed helper for the `lf_tag_policy.expression` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class LakeformationPermissionsExpression {
  const LakeformationPermissionsExpression({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': ?name?.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
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

  final TfArg<List<String>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<List<String>>? excludedColumnNames;

  final TfArg<String> name;

  final TfArg<bool>? wildcard;

  @internal
  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'column_names': ?columnNames?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'excluded_column_names': ?excludedColumnNames?.toTfJson(),
    'name': name.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_permissions`.
final class AwsLakeformationPermissions extends Resource {
  static const String tfType = 'aws_lakeformation_permissions';

  AwsLakeformationPermissions(
    super.localName, {
    TfArg<String>? catalogId,
    required LakeformationPermissionsResource resource,
    required List<LakeformationPermissions> permissions,
    List<LakeformationPermissionsWithGrantOption>? permissionsWithGrantOption,
    required TfArg<String> principal,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           ...resource.argMap,
           'permissions': TfArg.literal([
             for (final e in permissions) e.toTfJson(),
           ]),
           if (permissionsWithGrantOption != null)
             'permissions_with_grant_option': TfArg.literal([
               for (final e in permissionsWithGrantOption) e.toTfJson(),
             ]),
           'principal': principal,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationPermissionsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationPermissions>`.
  RefTo<AwsLakeformationPermissions> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `catalog_resource` attribute.
  TfRef<bool> get catalogResource =>
      TfRef.attribute<bool>(this, 'catalog_resource');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `permissions_with_grant_option` attribute.
  TfRef<List<String>> get permissionsWithGrantOption =>
      TfRef.attribute<List<String>>(this, 'permissions_with_grant_option');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
