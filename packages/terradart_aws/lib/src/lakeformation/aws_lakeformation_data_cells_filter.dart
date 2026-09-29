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
    required this.column,
    required this.databaseName,
    required this.name,
    required this.tableCatalogId,
    required this.tableName,
    this.versionId,
    this.rowFilter,
  });

  final LakeformationDataCellsFilterTableDataColumn column;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final TfArg<String> tableCatalogId;

  final TfArg<String> tableName;

  final TfArg<String>? versionId;

  final List<LakeformationDataCellsFilterTableDataRowFilter>? rowFilter;

  Map<String, Object?> encode() => {
    ...column.encode(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    'table_catalog_id': tableCatalogId.toTfJson(),
    'table_name': tableName.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
    if (rowFilter != null)
      'row_filter': [for (final e in rowFilter!) e.encode()],
  };
}

/// Exactly one of `column_names`, `column_wildcard` on the `table_data` block of `aws_lakeformation_data_cells_filter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.columnNames(...)`.
sealed class LakeformationDataCellsFilterTableDataColumn {
  const LakeformationDataCellsFilterTableDataColumn();

  /// Sets `column_names`.
  const factory LakeformationDataCellsFilterTableDataColumn.columnNames(
    TfArg<List<Object?>> columnNames,
  ) = LakeformationDataCellsFilterTableDataColumnColumnNames;

  /// Sets `column_wildcard`.
  const factory LakeformationDataCellsFilterTableDataColumn.columnWildcard(
    List<LakeformationDataCellsFilterTableDataColumnWildcard> columnWildcard,
  ) = LakeformationDataCellsFilterTableDataColumnColumnWildcard;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationDataCellsFilterTableDataColumn.columnNames] choice: sets `column_names`.
final class LakeformationDataCellsFilterTableDataColumnColumnNames
    extends LakeformationDataCellsFilterTableDataColumn {
  const LakeformationDataCellsFilterTableDataColumnColumnNames(
    this.columnNames,
  );

  final TfArg<List<Object?>> columnNames;

  @override
  String get blockKey => 'column_names';

  @override
  Map<String, Object?> encode() => {'column_names': columnNames.toTfJson()};
}

/// The [LakeformationDataCellsFilterTableDataColumn.columnWildcard] choice: sets `column_wildcard`.
final class LakeformationDataCellsFilterTableDataColumnColumnWildcard
    extends LakeformationDataCellsFilterTableDataColumn {
  const LakeformationDataCellsFilterTableDataColumnColumnWildcard(
    this.columnWildcard,
  );

  final List<LakeformationDataCellsFilterTableDataColumnWildcard>
  columnWildcard;

  @override
  String get blockKey => 'column_wildcard';

  @override
  Map<String, Object?> encode() => {
    'column_wildcard': [for (final e in columnWildcard) e.encode()],
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
    required this.rowFilter,
  });

  final LakeformationDataCellsFilterTableDataRowFilterRowFilter rowFilter;

  Map<String, Object?> encode() => {...rowFilter.encode()};
}

/// Exactly one of `all_rows_wildcard`, `filter_expression` on the `table_data.row_filter` block of `aws_lakeformation_data_cells_filter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allRowsWildcard(...)`.
sealed class LakeformationDataCellsFilterTableDataRowFilterRowFilter {
  const LakeformationDataCellsFilterTableDataRowFilterRowFilter();

  /// Sets `all_rows_wildcard`.
  const factory LakeformationDataCellsFilterTableDataRowFilterRowFilter.allRowsWildcard(
    List<LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcard>
    allRowsWildcard,
  ) = LakeformationDataCellsFilterTableDataRowFilterRowFilterAllRowsWildcard;

  /// Sets `filter_expression`.
  const factory LakeformationDataCellsFilterTableDataRowFilterRowFilter.filterExpression(
    TfArg<String> filterExpression,
  ) = LakeformationDataCellsFilterTableDataRowFilterRowFilterFilterExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationDataCellsFilterTableDataRowFilterRowFilter.allRowsWildcard] choice: sets `all_rows_wildcard`.
final class LakeformationDataCellsFilterTableDataRowFilterRowFilterAllRowsWildcard
    extends LakeformationDataCellsFilterTableDataRowFilterRowFilter {
  const LakeformationDataCellsFilterTableDataRowFilterRowFilterAllRowsWildcard(
    this.allRowsWildcard,
  );

  final List<LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcard>
  allRowsWildcard;

  @override
  String get blockKey => 'all_rows_wildcard';

  @override
  Map<String, Object?> encode() => {
    'all_rows_wildcard': [for (final e in allRowsWildcard) e.encode()],
  };
}

/// The [LakeformationDataCellsFilterTableDataRowFilterRowFilter.filterExpression] choice: sets `filter_expression`.
final class LakeformationDataCellsFilterTableDataRowFilterRowFilterFilterExpression
    extends LakeformationDataCellsFilterTableDataRowFilterRowFilter {
  const LakeformationDataCellsFilterTableDataRowFilterRowFilterFilterExpression(
    this.filterExpression,
  );

  final TfArg<String> filterExpression;

  @override
  String get blockKey => 'filter_expression';

  @override
  Map<String, Object?> encode() => {
    'filter_expression': filterExpression.toTfJson(),
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
