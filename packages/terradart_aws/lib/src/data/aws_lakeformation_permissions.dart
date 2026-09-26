// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_permissions`.
const Set<String> _awsLakeformationPermissionsSensitive = <String>{};

/// Typed helper for the `data_cells_filter` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class DataLakeformationPermissionsDataCellsFilter {
  const DataLakeformationPermissionsDataCellsFilter({
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
final class DataLakeformationPermissionsDataLocation {
  const DataLakeformationPermissionsDataLocation({
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
final class DataLakeformationPermissionsDatabase {
  const DataLakeformationPermissionsDatabase({
    this.catalogId,
    required this.name,
  });

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
final class DataLakeformationPermissionsLfTag {
  const DataLakeformationPermissionsLfTag({
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
final class DataLakeformationPermissionsLfTagPolicy {
  const DataLakeformationPermissionsLfTagPolicy({
    this.catalogId,
    required this.resourceType,
    required this.expression,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> resourceType;

  final List<DataLakeformationPermissionsLfTagPolicyExpression> expression;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'expression': [for (final e in expression) e.encode()],
  };
}

/// Typed helper for the `lf_tag_policy.expression` block of
/// `aws_lakeformation_permissions` (derived from provider schema).
@immutable
final class DataLakeformationPermissionsLfTagPolicyExpression {
  const DataLakeformationPermissionsLfTagPolicyExpression({
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
final class DataLakeformationPermissionsTable {
  const DataLakeformationPermissionsTable({
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
final class DataLakeformationPermissionsTableWithColumns {
  const DataLakeformationPermissionsTableWithColumns({
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
final class DataAwsLakeformationPermissions extends Data {
  static const String tfType = 'aws_lakeformation_permissions';

  DataAwsLakeformationPermissions({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<bool>? catalogResource,
    required TfArg<String> principal,
    TfArg<String>? region,
    DataLakeformationPermissionsDataCellsFilter? dataCellsFilter,
    DataLakeformationPermissionsDataLocation? dataLocation,
    DataLakeformationPermissionsDatabase? database,
    DataLakeformationPermissionsLfTag? lfTag,
    DataLakeformationPermissionsLfTagPolicy? lfTagPolicy,
    DataLakeformationPermissionsTable? table,
    DataLakeformationPermissionsTableWithColumns? tableWithColumns,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (catalogResource != null) 'catalog_resource': catalogResource,
           'principal': principal,
           if (region != null) 'region': region,
           if (dataCellsFilter != null)
             'data_cells_filter': TfArg.literal(dataCellsFilter.encode()),
           if (dataLocation != null)
             'data_location': TfArg.literal(dataLocation.encode()),
           if (database != null) 'database': TfArg.literal(database.encode()),
           if (lfTag != null) 'lf_tag': TfArg.literal(lfTag.encode()),
           if (lfTagPolicy != null)
             'lf_tag_policy': TfArg.literal(lfTagPolicy.encode()),
           if (table != null) 'table': TfArg.literal(table.encode()),
           if (tableWithColumns != null)
             'table_with_columns': TfArg.literal(tableWithColumns.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationPermissionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `permissions_with_grant_option` attribute.
  TfRef<List<String>> get permissionsWithGrantOption =>
      TfRef.attribute<List<String>>(this, 'permissions_with_grant_option');
}
