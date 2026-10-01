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
    List<LakeformationOptInCatalog> catalog,
  ) = LakeformationOptInResourceDataCatalog;

  /// Sets `data_cells_filter`.
  const factory LakeformationOptInResourceData.dataCellsFilter(
    List<LakeformationOptInDataCellsFilter> dataCellsFilter,
  ) = LakeformationOptInResourceDataCellsFilter;

  /// Sets `data_location`.
  const factory LakeformationOptInResourceData.dataLocation(
    List<LakeformationOptInDataLocation> dataLocation,
  ) = LakeformationOptInResourceDataLocation;

  /// Sets `database`.
  const factory LakeformationOptInResourceData.database(
    List<LakeformationOptInDatabase> database,
  ) = LakeformationOptInResourceDataDatabase;

  /// Sets `lf_tag`.
  const factory LakeformationOptInResourceData.lfTag(
    List<LakeformationOptInLfTag> lfTag,
  ) = LakeformationOptInResourceDataLfTag;

  /// Sets `lf_tag_expression`.
  const factory LakeformationOptInResourceData.lfTagExpression(
    List<LakeformationOptInLfTagExpression> lfTagExpression,
  ) = LakeformationOptInResourceDataLfTagExpression;

  /// Sets `lf_tag_policy`.
  const factory LakeformationOptInResourceData.lfTagPolicy(
    List<LakeformationOptInLfTagPolicy> lfTagPolicy,
  ) = LakeformationOptInResourceDataLfTagPolicy;

  /// Sets `table`.
  const factory LakeformationOptInResourceData.table(
    List<LakeformationOptInTable> table,
  ) = LakeformationOptInResourceDataTable;

  /// Sets `table_with_columns`.
  const factory LakeformationOptInResourceData.tableWithColumns(
    List<LakeformationOptInTableWithColumns> tableWithColumns,
  ) = LakeformationOptInResourceDataTableWithColumns;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationOptInResourceData.catalog] choice: sets `catalog`.
final class LakeformationOptInResourceDataCatalog
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataCatalog(this.catalog);

  final List<LakeformationOptInCatalog> catalog;

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

  final List<LakeformationOptInDataCellsFilter> dataCellsFilter;

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

  final List<LakeformationOptInDataLocation> dataLocation;

  @override
  String get blockKey => 'data_location';

  @override
  Map<String, Object?> encode() => {
    'data_location': [for (final e in dataLocation) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.database] choice: sets `database`.
final class LakeformationOptInResourceDataDatabase
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataDatabase(this.database);

  final List<LakeformationOptInDatabase> database;

  @override
  String get blockKey => 'database';

  @override
  Map<String, Object?> encode() => {
    'database': [for (final e in database) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.lfTag] choice: sets `lf_tag`.
final class LakeformationOptInResourceDataLfTag
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLfTag(this.lfTag);

  final List<LakeformationOptInLfTag> lfTag;

  @override
  String get blockKey => 'lf_tag';

  @override
  Map<String, Object?> encode() => {
    'lf_tag': [for (final e in lfTag) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.lfTagExpression] choice: sets `lf_tag_expression`.
final class LakeformationOptInResourceDataLfTagExpression
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLfTagExpression(this.lfTagExpression);

  final List<LakeformationOptInLfTagExpression> lfTagExpression;

  @override
  String get blockKey => 'lf_tag_expression';

  @override
  Map<String, Object?> encode() => {
    'lf_tag_expression': [for (final e in lfTagExpression) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.lfTagPolicy] choice: sets `lf_tag_policy`.
final class LakeformationOptInResourceDataLfTagPolicy
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataLfTagPolicy(this.lfTagPolicy);

  final List<LakeformationOptInLfTagPolicy> lfTagPolicy;

  @override
  String get blockKey => 'lf_tag_policy';

  @override
  Map<String, Object?> encode() => {
    'lf_tag_policy': [for (final e in lfTagPolicy) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.table] choice: sets `table`.
final class LakeformationOptInResourceDataTable
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataTable(this.table);

  final List<LakeformationOptInTable> table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {
    'table': [for (final e in table) e.encode()],
  };
}

/// The [LakeformationOptInResourceData.tableWithColumns] choice: sets `table_with_columns`.
final class LakeformationOptInResourceDataTableWithColumns
    extends LakeformationOptInResourceData {
  const LakeformationOptInResourceDataTableWithColumns(this.tableWithColumns);

  final List<LakeformationOptInTableWithColumns> tableWithColumns;

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
final class LakeformationOptInCatalog {
  const LakeformationOptInCatalog({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Typed helper for the `resource_data.data_cells_filter` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInDataCellsFilter {
  const LakeformationOptInDataCellsFilter({
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
    'database_name': ?databaseName?.toTfJson(),
    'name': ?name?.toTfJson(),
    'table_catalog_id': ?tableCatalogId?.toTfJson(),
    'table_name': ?tableName?.toTfJson(),
  };
}

/// Typed helper for the `resource_data.data_location` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInDataLocation {
  const LakeformationOptInDataLocation({
    this.catalogId,
    required this.resourceArn,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
  };
}

/// Typed helper for the `resource_data.database` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInDatabase {
  const LakeformationOptInDatabase({this.catalogId, required this.name});

  final TfArg<String>? catalogId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `resource_data.lf_tag` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInLfTag {
  const LakeformationOptInLfTag({
    this.catalogId,
    required this.key,
    required this.values,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> key;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `resource_data.lf_tag_expression` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInLfTagExpression {
  const LakeformationOptInLfTagExpression({this.catalogId, required this.name});

  final TfArg<String>? catalogId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `resource_data.lf_tag_policy` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInLfTagPolicy {
  const LakeformationOptInLfTagPolicy({
    this.catalogId,
    this.expression,
    this.expressionName,
    required this.resourceType,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<String>>? expression;

  final TfArg<String>? expressionName;

  final TfArg<String> resourceType;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'expression_name': ?expressionName?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Typed helper for the `resource_data.table` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInTable {
  const LakeformationOptInTable({
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
    'catalog_id': ?catalogId?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': ?name?.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
  };
}

/// Typed helper for the `resource_data.table_with_columns` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInTableWithColumns {
  const LakeformationOptInTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    required this.name,
    this.columnWildcard,
  });

  final TfArg<String>? catalogId;

  final TfArg<List<String>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final List<LakeformationOptInColumnWildcard>? columnWildcard;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'column_names': ?columnNames?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    if (columnWildcard != null)
      'column_wildcard': [for (final e in columnWildcard!) e.encode()],
  };
}

/// Typed helper for the `resource_data.table_with_columns.column_wildcard` block of
/// `aws_lakeformation_opt_in` (derived from provider schema).
@immutable
final class LakeformationOptInColumnWildcard {
  const LakeformationOptInColumnWildcard({this.excludedColumnNames});

  final TfArg<List<String>>? excludedColumnNames;

  Map<String, Object?> encode() => {
    'excluded_column_names': ?excludedColumnNames?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_opt_in`.
final class AwsLakeformationOptIn extends Resource {
  static const String tfType = 'aws_lakeformation_opt_in';

  AwsLakeformationOptIn(
    super.localName, {
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
           'region': ?region,
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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
