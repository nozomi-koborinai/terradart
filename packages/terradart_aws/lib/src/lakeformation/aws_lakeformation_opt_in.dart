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
    required this.catalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns,
  });

  final LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns
  catalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns;

  Map<String, Object?> encode() => {
    ...catalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns
        .encode(),
  };
}

/// Exactly one of `catalog`, `data_cells_filter`, `data_location`, `database`, `lf_tag`, `lf_tag_expression`, `lf_tag_policy`, `table`, `table_with_columns` on the `resource_data` block of `aws_lakeformation_opt_in`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `catalog` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataCatalogOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataCatalogOption({required this.catalog});

  final List<LakeformationOptInResourceDataCatalog> catalog;

  @override
  String get blockKey => 'catalog';

  @override
  Map<String, Object?> encode() => {
    'catalog': [for (final e in catalog) e.encode()],
  };
}

/// Sets `data_cells_filter` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataDataCellsFilterOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataDataCellsFilterOption({
    required this.dataCellsFilter,
  });

  final List<LakeformationOptInResourceDataDataCellsFilter> dataCellsFilter;

  @override
  String get blockKey => 'data_cells_filter';

  @override
  Map<String, Object?> encode() => {
    'data_cells_filter': [for (final e in dataCellsFilter) e.encode()],
  };
}

/// Sets `data_location` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataDataLocationOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataDataLocationOption({
    required this.dataLocation,
  });

  final List<LakeformationOptInResourceDataDataLocation> dataLocation;

  @override
  String get blockKey => 'data_location';

  @override
  Map<String, Object?> encode() => {
    'data_location': [for (final e in dataLocation) e.encode()],
  };
}

/// Sets `database` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataDatabaseOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataDatabaseOption({required this.database});

  final List<LakeformationOptInResourceDataDatabase> database;

  @override
  String get blockKey => 'database';

  @override
  Map<String, Object?> encode() => {
    'database': [for (final e in database) e.encode()],
  };
}

/// Sets `lf_tag` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataLfTagOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataLfTagOption({required this.lfTag});

  final List<LakeformationOptInResourceDataLfTag> lfTag;

  @override
  String get blockKey => 'lf_tag';

  @override
  Map<String, Object?> encode() => {
    'lf_tag': [for (final e in lfTag) e.encode()],
  };
}

/// Sets `lf_tag_expression` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataLfTagExpressionOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataLfTagExpressionOption({
    required this.lfTagExpression,
  });

  final List<LakeformationOptInResourceDataLfTagExpression> lfTagExpression;

  @override
  String get blockKey => 'lf_tag_expression';

  @override
  Map<String, Object?> encode() => {
    'lf_tag_expression': [for (final e in lfTagExpression) e.encode()],
  };
}

/// Sets `lf_tag_policy` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataLfTagPolicyOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataLfTagPolicyOption({
    required this.lfTagPolicy,
  });

  final List<LakeformationOptInResourceDataLfTagPolicy> lfTagPolicy;

  @override
  String get blockKey => 'lf_tag_policy';

  @override
  Map<String, Object?> encode() => {
    'lf_tag_policy': [for (final e in lfTagPolicy) e.encode()],
  };
}

/// Sets `table` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataTableOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataTableOption({required this.table});

  final List<LakeformationOptInResourceDataTable> table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {
    'table': [for (final e in table) e.encode()],
  };
}

/// Sets `table_with_columns` (one of the [LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns] choices).
final class LakeformationOptInResourceDataTableWithColumnsOption
    extends
        LakeformationOptInResourceDataCatalogOrDataCellsFilterOrDataLocationOrDatabaseOrLfTagOrLfTagExpressionOrLfTagPolicyOrTableOrTableWithColumns {
  const LakeformationOptInResourceDataTableWithColumnsOption({
    required this.tableWithColumns,
  });

  final List<LakeformationOptInResourceDataTableWithColumns> tableWithColumns;

  @override
  String get blockKey => 'table_with_columns';

  @override
  Map<String, Object?> encode() => {
    'table_with_columns': [for (final e in tableWithColumns) e.encode()],
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
