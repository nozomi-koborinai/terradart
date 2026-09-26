// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_opt_in`.
const Set<String> _awsLakeformationOptInSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInCondition {
  const LakeformationOptInCondition();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `principal` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInPrincipal {
  const LakeformationOptInPrincipal({
    required this.dataLakePrincipalIdentifier,
  });

  final TfArg<String> dataLakePrincipalIdentifier;

  Map<String, Object?> encode() => {
    'data_lake_principal_identifier': dataLakePrincipalIdentifier.toTfJson(),
  };
}

/// Typed helper for the `resource_data` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceData {
  const LakeformationOptInResourceData({
    this.catalog,
    this.dataCellsFilter,
    this.dataLocation,
    this.database,
    this.lfTag,
    this.lfTagExpression,
    this.lfTagPolicy,
    this.table,
    this.tableWithColumns,
  });

  final List<LakeformationOptInResourceDataCatalog>? catalog;

  final List<LakeformationOptInResourceDataDataCellsFilter>? dataCellsFilter;

  final List<LakeformationOptInResourceDataDataLocation>? dataLocation;

  final List<LakeformationOptInResourceDataDatabase>? database;

  final List<LakeformationOptInResourceDataLfTag>? lfTag;

  final List<LakeformationOptInResourceDataLfTagExpression>? lfTagExpression;

  final List<LakeformationOptInResourceDataLfTagPolicy>? lfTagPolicy;

  final List<LakeformationOptInResourceDataTable>? table;

  final List<LakeformationOptInResourceDataTableWithColumns>? tableWithColumns;

  Map<String, Object?> encode() => {
    if (catalog != null) 'catalog': [for (final e in catalog!) e.encode()],
    if (dataCellsFilter != null)
      'data_cells_filter': [for (final e in dataCellsFilter!) e.encode()],
    if (dataLocation != null)
      'data_location': [for (final e in dataLocation!) e.encode()],
    if (database != null) 'database': [for (final e in database!) e.encode()],
    if (lfTag != null) 'lf_tag': [for (final e in lfTag!) e.encode()],
    if (lfTagExpression != null)
      'lf_tag_expression': [for (final e in lfTagExpression!) e.encode()],
    if (lfTagPolicy != null)
      'lf_tag_policy': [for (final e in lfTagPolicy!) e.encode()],
    if (table != null) 'table': [for (final e in table!) e.encode()],
    if (tableWithColumns != null)
      'table_with_columns': [for (final e in tableWithColumns!) e.encode()],
  };
}

/// Typed helper for the `resource_data.catalog` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataCatalog {
  const LakeformationOptInResourceDataCatalog({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
}

/// Typed helper for the `resource_data.data_cells_filter` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataDataCellsFilter {
  const LakeformationOptInResourceDataDataCellsFilter({
    this.databaseName,
    this.name,
    this.tableCatalogId,
    this.tableName,
  });

  final TfArg<String>? databaseName;

  final TfArg<String>? name;

  final TfArg<String>? tableCatalogId;

  final TfArg<String>? tableName;

  Map<String, Object?> encode() => {
    if (databaseName != null) 'database_name': databaseName!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (tableCatalogId != null) 'table_catalog_id': tableCatalogId!.toTfJson(),
    if (tableName != null) 'table_name': tableName!.toTfJson(),
  };
}

/// Typed helper for the `resource_data.data_location` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataDataLocation {
  const LakeformationOptInResourceDataDataLocation({
    this.catalogId,
    required this.resourceArn,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
  };
}

/// Typed helper for the `resource_data.database` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataDatabase {
  const LakeformationOptInResourceDataDatabase({
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

/// Typed helper for the `resource_data.lf_tag` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataLfTag {
  const LakeformationOptInResourceDataLfTag({
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

/// Typed helper for the `resource_data.lf_tag_expression` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataLfTagExpression {
  const LakeformationOptInResourceDataLfTagExpression({
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

/// Typed helper for the `resource_data.lf_tag_policy` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataLfTagPolicy {
  const LakeformationOptInResourceDataLfTagPolicy({
    this.catalogId,
    this.expression,
    this.expressionName,
    required this.resourceType,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<Object?>>? expression;

  final TfArg<String>? expressionName;

  final TfArg<String> resourceType;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (expressionName != null) 'expression_name': expressionName!.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Typed helper for the `resource_data.table` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataTable {
  const LakeformationOptInResourceDataTable({
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

/// Typed helper for the `resource_data.table_with_columns` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataTableWithColumns {
  const LakeformationOptInResourceDataTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    required this.name,
    this.columnWildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<Object?>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final List<LakeformationOptInResourceDataTableWithColumnsColumnWildcard>?
  columnWildcard;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    if (columnNames != null) 'column_names': columnNames!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    if (columnWildcard != null)
      'column_wildcard': [for (final e in columnWildcard!) e.encode()],
  };
}

/// Typed helper for the `resource_data.table_with_columns.column_wildcard` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInResourceDataTableWithColumnsColumnWildcard {
  const LakeformationOptInResourceDataTableWithColumnsColumnWildcard({
    this.excludedColumnNames,
  });

  final TfArg<List<Object?>>? excludedColumnNames;

  Map<String, Object?> encode() => {
    if (excludedColumnNames != null)
      'excluded_column_names': excludedColumnNames!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_opt_in`.
final class AwsLakeformationOptIn extends Resource {
  static const String tfType = 'aws_lakeformation_opt_in';

  AwsLakeformationOptIn({
    required super.localName,
    TfArg<String>? region,
    List<LakeformationOptInCondition>? condition,
    List<LakeformationOptInPrincipal>? principal,
    List<LakeformationOptInResourceData>? resourceData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (condition != null)
             'condition': TfArg.literal([
               for (final e in condition) e.encode(),
             ]),
           if (principal != null)
             'principal': TfArg.literal([
               for (final e in principal) e.encode(),
             ]),
           if (resourceData != null)
             'resource_data': TfArg.literal([
               for (final e in resourceData) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationOptInSensitive;

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `last_updated_by` attribute.
  TfRef<String> get lastUpdatedBy =>
      TfRef.attribute<String>(this, 'last_updated_by');
}
