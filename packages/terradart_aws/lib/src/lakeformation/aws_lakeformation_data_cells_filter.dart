// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_data_cells_filter`.
const Set<String> _awsLakeformationDataCellsFilterSensitive = <String>{};

/// Typed helper for the `table_data` block of
/// `aws_lakeformation_data_cells_filter` (derived from provider schema).
@immutable
final class LakeformationDataCellsFilterTableData {
  const LakeformationDataCellsFilterTableData({
    this.columnNames,
    required this.databaseName,
    required this.name,
    required this.tableCatalogId,
    required this.tableName,
    this.versionId,
    this.columnWildcard,
    this.rowFilter,
  });

  final TfArg<List<Object?>>? columnNames;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final TfArg<String> tableCatalogId;

  final TfArg<String> tableName;

  final TfArg<String>? versionId;

  final List<LakeformationDataCellsFilterTableDataColumnWildcard>?
  columnWildcard;

  final List<LakeformationDataCellsFilterTableDataRowFilter>? rowFilter;

  Map<String, Object?> encode() => {
    if (columnNames != null) 'column_names': columnNames!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    'table_catalog_id': tableCatalogId.toTfJson(),
    'table_name': tableName.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
    if (columnWildcard != null)
      'column_wildcard': [for (final e in columnWildcard!) e.encode()],
    if (rowFilter != null)
      'row_filter': [for (final e in rowFilter!) e.encode()],
  };
}

/// Typed helper for the `table_data.column_wildcard` block of
/// `aws_lakeformation_data_cells_filter` (derived from provider schema).
@immutable
final class LakeformationDataCellsFilterTableDataColumnWildcard {
  const LakeformationDataCellsFilterTableDataColumnWildcard({
    this.excludedColumnNames,
  });

  final TfArg<List<Object?>>? excludedColumnNames;

  Map<String, Object?> encode() => {
    if (excludedColumnNames != null)
      'excluded_column_names': excludedColumnNames!.toTfJson(),
  };
}

/// Typed helper for the `table_data.row_filter` block of
/// `aws_lakeformation_data_cells_filter` (derived from provider schema).
@immutable
final class LakeformationDataCellsFilterTableDataRowFilter {
  const LakeformationDataCellsFilterTableDataRowFilter({
    this.filterExpression,
    this.allRowsWildcard,
  });

  final TfArg<String>? filterExpression;

  final List<LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcard>?
  allRowsWildcard;

  Map<String, Object?> encode() => {
    if (filterExpression != null)
      'filter_expression': filterExpression!.toTfJson(),
    if (allRowsWildcard != null)
      'all_rows_wildcard': [for (final e in allRowsWildcard!) e.encode()],
  };
}

/// Typed helper for the `table_data.row_filter.all_rows_wildcard` block of
/// `aws_lakeformation_data_cells_filter` (derived from provider schema).
@immutable
final class LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcard {
  const LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcard();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_lakeformation_data_cells_filter`.
final class AwsLakeformationDataCellsFilter extends Resource {
  static const String tfType = 'aws_lakeformation_data_cells_filter';

  AwsLakeformationDataCellsFilter({
    required super.localName,
    TfArg<String>? region,
    List<LakeformationDataCellsFilterTableData>? tableData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tableData != null)
             'table_data': TfArg.literal([
               for (final e in tableData) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationDataCellsFilterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
