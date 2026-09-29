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

/// Exactly one of `catalog`, `data_cells_filter`, `data_location`, `database`, `lf_tag`, `lf_tag_expression`, `lf_tag_policy`, `table`, `table_with_columns` on the `resource_data` block of `aws_lakeformation_opt_in`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.catalog(...)`.
sealed class LakeformationOptInResourceData {
  const LakeformationOptInResourceData();

  /// Sets `catalog`.
  const factory LakeformationOptInResourceData.catalog(
    List<LakeformationOptInResourceDataCatalog> catalog,
  ) = LakeformationOptInResourceDataCatalogChoice;

  /// Sets `data_cells_filter`.
  const factory LakeformationOptInResourceData.dataCellsFilter(
    List<LakeformationOptInResourceDataDataCellsFilter> dataCellsFilter,
  ) = LakeformationOptInResourceDataCellsFilter;

  /// Sets `data_location`.
  const factory LakeformationOptInResourceData.dataLocation(
    List<LakeformationOptInResourceDataDataLocation> dataLocation,
  ) = LakeformationOptInResourceDataLocation;

  /// Sets `database`.
  const factory LakeformationOptInResourceData.database(
    List<LakeformationOptInResourceDataDatabase> database,
  ) = LakeformationOptInResourceDataDatabaseChoice;

  /// Sets `lf_tag`.
  const factory LakeformationOptInResourceData.lfTag(
    List<LakeformationOptInResourceDataLfTag> lfTag,
  ) = LakeformationOptInResourceDataLfTagChoice;

  /// Sets `lf_tag_expression`.
  const factory LakeformationOptInResourceData.lfTagExpression(
    List<LakeformationOptInResourceDataLfTagExpression> lfTagExpression,
  ) = LakeformationOptInResourceDataLfTagExpressionChoice;

  /// Sets `lf_tag_policy`.
  const factory LakeformationOptInResourceData.lfTagPolicy(
    List<LakeformationOptInResourceDataLfTagPolicy> lfTagPolicy,
  ) = LakeformationOptInResourceDataLfTagPolicyChoice;

  /// Sets `table`.
  const factory LakeformationOptInResourceData.table(
    List<LakeformationOptInResourceDataTable> table,
  ) = LakeformationOptInResourceDataTableChoice;

  /// Sets `table_with_columns`.
  const factory LakeformationOptInResourceData.tableWithColumns(
    List<LakeformationOptInResourceDataTableWithColumns> tableWithColumns,
  ) = LakeformationOptInResourceDataTableWithColumnsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationOptInResourceData.catalog] choice: sets `catalog`.
final class LakeformationOptInResourceDataCatalogChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataCatalogChoice(this.catalog);

  final List<LakeformationOptInResourceDataCatalog> catalog;

  @override
  String get blockKey => 'catalog';

  @override
  Map<String, Object?> encode() => {
    'catalog': [for (final e in catalog) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.dataCellsFilter] choice: sets `data_cells_filter`.
final class LakeformationOptInResourceDataCellsFilter
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataCellsFilter(this.dataCellsFilter);

  final List<LakeformationOptInResourceDataDataCellsFilter> dataCellsFilter;

  @override
  String get blockKey => 'data_cells_filter';

  @override
  Map<String, Object?> encode() => {
    'data_cells_filter': [for (final e in dataCellsFilter) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.dataLocation] choice: sets `data_location`.
final class LakeformationOptInResourceDataLocation
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLocation(this.dataLocation);

  final List<LakeformationOptInResourceDataDataLocation> dataLocation;

  @override
  String get blockKey => 'data_location';

  @override
  Map<String, Object?> encode() => {
    'data_location': [for (final e in dataLocation) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.database] choice: sets `database`.
final class LakeformationOptInResourceDataDatabaseChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataDatabaseChoice(this.database);

  final List<LakeformationOptInResourceDataDatabase> database;

  @override
  String get blockKey => 'database';

  @override
  Map<String, Object?> encode() => {
    'database': [for (final e in database) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.lfTag] choice: sets `lf_tag`.
final class LakeformationOptInResourceDataLfTagChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLfTagChoice(this.lfTag);

  final List<LakeformationOptInResourceDataLfTag> lfTag;

  @override
  String get blockKey => 'lf_tag';

  @override
  Map<String, Object?> encode() => {
    'lf_tag': [for (final e in lfTag) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.lfTagExpression] choice: sets `lf_tag_expression`.
final class LakeformationOptInResourceDataLfTagExpressionChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLfTagExpressionChoice(
    this.lfTagExpression,
  );

  final List<LakeformationOptInResourceDataLfTagExpression> lfTagExpression;

  @override
  String get blockKey => 'lf_tag_expression';

  @override
  Map<String, Object?> encode() => {
    'lf_tag_expression': [for (final e in lfTagExpression) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.lfTagPolicy] choice: sets `lf_tag_policy`.
final class LakeformationOptInResourceDataLfTagPolicyChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLfTagPolicyChoice(this.lfTagPolicy);

  final List<LakeformationOptInResourceDataLfTagPolicy> lfTagPolicy;

  @override
  String get blockKey => 'lf_tag_policy';

  @override
  Map<String, Object?> encode() => {
    'lf_tag_policy': [for (final e in lfTagPolicy) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.table] choice: sets `table`.
final class LakeformationOptInResourceDataTableChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataTableChoice(this.table);

  final List<LakeformationOptInResourceDataTable> table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {
    'table': [for (final e in table) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.tableWithColumns] choice: sets `table_with_columns`.
final class LakeformationOptInResourceDataTableWithColumnsChoice
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataTableWithColumnsChoice(
    this.tableWithColumns,
  );

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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationOptIn>`.
  RefTo<AwsLakeformationOptIn> get ref => RefTo.of(this);

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `last_updated_by` attribute.
  TfRef<String> get lastUpdatedBy =>
      TfRef.attribute<String>(this, 'last_updated_by');
}
