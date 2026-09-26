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

  final TfArg<String> resourceType;

  final List<LakeformationPermissionsLfTagPolicyExpression> expression;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'expression': [for (final e in expression) e.encode()],
  };
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
    TfArg<bool>? catalogResource,
    required TfArg<List<String>> permissions,
    TfArg<List<String>>? permissionsWithGrantOption,
    required TfArg<String> principal,
    TfArg<String>? region,
    LakeformationPermissionsDataCellsFilter? dataCellsFilter,
    LakeformationPermissionsDataLocation? dataLocation,
    LakeformationPermissionsDatabase? database,
    LakeformationPermissionsLfTag? lfTag,
    LakeformationPermissionsLfTagPolicy? lfTagPolicy,
    LakeformationPermissionsTable? table,
    LakeformationPermissionsTableWithColumns? tableWithColumns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (catalogResource != null) 'catalog_resource': catalogResource,
           'permissions': permissions,
           if (permissionsWithGrantOption != null)
             'permissions_with_grant_option': permissionsWithGrantOption,
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
}
