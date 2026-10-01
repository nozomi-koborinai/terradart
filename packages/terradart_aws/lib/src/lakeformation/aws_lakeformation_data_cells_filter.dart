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

  final LakeformationDataCellsFilterColumn column;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final TfArg<String> tableCatalogId;

  final TfArg<String> tableName;

  final TfArg<String>? versionId;

  final List<LakeformationDataCellsFilterRowFilter>? rowFilter;

  Map<String, Object?> encode() => {
    ...column.encode(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    'table_catalog_id': tableCatalogId.toTfJson(),
    'table_name': tableName.toTfJson(),
    'version_id': ?versionId?.toTfJson(),
    if (rowFilter != null)
      'row_filter': [for (final e in rowFilter!) e.encode()],
  };
}

/// Exactly one of `column_names`, `column_wildcard` on the `table_data` block of `aws_lakeformation_data_cells_filter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.columnNames(...)`.
sealed class LakeformationDataCellsFilterColumn {
  const LakeformationDataCellsFilterColumn();

  /// Sets `column_names`.
  const factory LakeformationDataCellsFilterColumn.columnNames(
    TfArg<List<String>> columnNames,
  ) = LakeformationDataCellsFilterColumnNames;

  /// Sets `column_wildcard`.
  const factory LakeformationDataCellsFilterColumn.columnWildcard(
    List<LakeformationDataCellsFilterColumnWildcard> columnWildcard,
  ) = LakeformationDataCellsFilterColumnWildcardChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationDataCellsFilterColumn.columnNames] choice: sets `column_names`.
final class LakeformationDataCellsFilterColumnNames
    extends LakeformationDataCellsFilterColumn {
  const LakeformationDataCellsFilterColumnNames(this.columnNames);

  final TfArg<List<String>> columnNames;

  @override
  String get blockKey => 'column_names';

  @override
  Map<String, Object?> encode() => {'column_names': columnNames.toTfJson()};
}

/// The [LakeformationDataCellsFilterColumn.columnWildcard] choice: sets `column_wildcard`.
final class LakeformationDataCellsFilterColumnWildcardChoice
    extends LakeformationDataCellsFilterColumn {
  const LakeformationDataCellsFilterColumnWildcardChoice(this.columnWildcard);

  final List<LakeformationDataCellsFilterColumnWildcard> columnWildcard;

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
final class LakeformationDataCellsFilterColumnWildcard {
  const LakeformationDataCellsFilterColumnWildcard({this.excludedColumnNames});

  final TfArg<List<String>>? excludedColumnNames;

  Map<String, Object?> encode() => {
    'excluded_column_names': ?excludedColumnNames?.toTfJson(),
  };
}

/// Exactly one of `all_rows_wildcard`, `filter_expression` on the `table_data.row_filter` block of `aws_lakeformation_data_cells_filter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allRowsWildcard(...)`.
sealed class LakeformationDataCellsFilterRowFilter {
  const LakeformationDataCellsFilterRowFilter();

  /// Sets `all_rows_wildcard`.
  const factory LakeformationDataCellsFilterRowFilter.allRowsWildcard(
    List<LakeformationDataCellsFilterAllRowsWildcard> allRowsWildcard,
  ) = LakeformationDataCellsFilterRowFilterAllRowsWildcard;

  /// Sets `filter_expression`.
  const factory LakeformationDataCellsFilterRowFilter.filterExpression(
    TfArg<String> filterExpression,
  ) = LakeformationDataCellsFilterRowFilterExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [LakeformationDataCellsFilterRowFilter.allRowsWildcard] choice: sets `all_rows_wildcard`.
final class LakeformationDataCellsFilterRowFilterAllRowsWildcard
    extends LakeformationDataCellsFilterRowFilter {
  const LakeformationDataCellsFilterRowFilterAllRowsWildcard(
    this.allRowsWildcard,
  );

  final List<LakeformationDataCellsFilterAllRowsWildcard> allRowsWildcard;

  @override
  String get blockKey => 'all_rows_wildcard';

  @override
  Map<String, Object?> encode() => {
    'all_rows_wildcard': [for (final e in allRowsWildcard) e.encode()],
  };
}

/// The [LakeformationDataCellsFilterRowFilter.filterExpression] choice: sets `filter_expression`.
final class LakeformationDataCellsFilterRowFilterExpression
    extends LakeformationDataCellsFilterRowFilter {
  const LakeformationDataCellsFilterRowFilterExpression(this.filterExpression);

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
final class LakeformationDataCellsFilterAllRowsWildcard {
  const LakeformationDataCellsFilterAllRowsWildcard();

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
           'region': ?region,
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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
