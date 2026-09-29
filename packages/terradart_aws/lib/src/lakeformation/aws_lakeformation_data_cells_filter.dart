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
    required this.columnNamesOrColumnWildcard,
    required this.databaseName,
    required this.name,
    required this.tableCatalogId,
    required this.tableName,
    this.versionId,
    this.rowFilter,
  });

  final LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard
  columnNamesOrColumnWildcard;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final TfArg<String> tableCatalogId;

  final TfArg<String> tableName;

  final TfArg<String>? versionId;

  final List<LakeformationDataCellsFilterTableDataRowFilter>? rowFilter;

  Map<String, Object?> encode() => {
    ...columnNamesOrColumnWildcard.encode(),
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
sealed class LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard {
  const LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard();

  /// Sets `column_names`.
  const factory LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard.columnNames(
    TfArg<List<Object?>> columnNames,
  ) = LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcardColumnNames;

  /// Sets `column_wildcard`.
  const factory LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard.columnWildcard(
    List<LakeformationDataCellsFilterTableDataColumnWildcard> columnWildcard,
  ) = LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcardColumnWildcard;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard.columnNames] choice: sets `column_names`.
final class LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcardColumnNames
    extends LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard {
  const LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcardColumnNames(
    this.columnNames,
  );

  final TfArg<List<Object?>> columnNames;

  @override
  String get blockKey => 'column_names';

  @override
  Map<String, Object?> encode() => {'column_names': columnNames.toTfJson()};
}

/// The [LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard.columnWildcard] choice: sets `column_wildcard`.
final class LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcardColumnWildcard
    extends LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcard {
  const LakeformationDataCellsFilterTableDataColumnNamesOrColumnWildcardColumnWildcard(
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
    required this.allRowsWildcardOrFilterExpression,
  });

  final LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression
  allRowsWildcardOrFilterExpression;

  Map<String, Object?> encode() => {
    ...allRowsWildcardOrFilterExpression.encode(),
  };
}

/// Exactly one of `all_rows_wildcard`, `filter_expression` on the `table_data.row_filter` block of `aws_lakeformation_data_cells_filter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allRowsWildcard(...)`.
sealed class LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression {
  const LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression();

  /// Sets `all_rows_wildcard`.
  const factory LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression.allRowsWildcard(
    List<LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcard>
    allRowsWildcard,
  ) = LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpressionAllRowsWildcard;

  /// Sets `filter_expression`.
  const factory LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression.filterExpression(
    TfArg<String> filterExpression,
  ) = LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpressionFilterExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression.allRowsWildcard] choice: sets `all_rows_wildcard`.
final class LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpressionAllRowsWildcard
    extends
        LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression {
  const LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpressionAllRowsWildcard(
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

/// The [LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression.filterExpression] choice: sets `filter_expression`.
final class LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpressionFilterExpression
    extends
        LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpression {
  const LakeformationDataCellsFilterTableDataRowFilterAllRowsWildcardOrFilterExpressionFilterExpression(
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationDataCellsFilter>`.
  RefTo<AwsLakeformationDataCellsFilter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
