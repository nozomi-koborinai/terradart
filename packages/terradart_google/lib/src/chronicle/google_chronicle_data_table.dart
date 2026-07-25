// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_data_table`.
const Set<String> _googleChronicleDataTableSensitive = <String>{};

/// Chronicle Data Table Update enum for `update_source`.
enum ChronicleDataTableUpdateSource implements TerraformEnum {
  user('USER'),
  rule('RULE'),
  search('SEARCH');

  const ChronicleDataTableUpdateSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `column_info` block of
/// `google_chronicle_data_table` (derived from provider schema).
@immutable
final class ChronicleDataTableColumnInfo {
  const ChronicleDataTableColumnInfo({
    required this.columnIndex,
    this.columnType,
    this.keyColumn,
    this.mappedColumnPath,
    required this.originalColumn,
    this.repeatedValues,
  });

  final TfArg<num> columnIndex;

  final TfArg<ChronicleDataTableColumnInfoColumnType>? columnType;

  final TfArg<bool>? keyColumn;

  final TfArg<String>? mappedColumnPath;

  final TfArg<String> originalColumn;

  final TfArg<bool>? repeatedValues;

  Map<String, Object?> encode() => {
    'column_index': columnIndex.toTfJson(),
    if (columnType != null) 'column_type': columnType!.toTfJson(),
    if (keyColumn != null) 'key_column': keyColumn!.toTfJson(),
    if (mappedColumnPath != null)
      'mapped_column_path': mappedColumnPath!.toTfJson(),
    'original_column': originalColumn.toTfJson(),
    if (repeatedValues != null) 'repeated_values': repeatedValues!.toTfJson(),
  };
}

/// `column_type` — derived from the provider schema description.
enum ChronicleDataTableColumnInfoColumnType implements TerraformEnum {
  string('STRING'),
  regex('REGEX'),
  cidr('CIDR'),
  number('NUMBER');

  const ChronicleDataTableColumnInfoColumnType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scope_info` block of
/// `google_chronicle_data_table` (derived from provider schema).
@immutable
final class ChronicleDataTableScopeInfo {
  const ChronicleDataTableScopeInfo({required this.dataAccessScopes});

  final TfArg<List<Object?>> dataAccessScopes;

  Map<String, Object?> encode() => {
    'data_access_scopes': dataAccessScopes.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_data_table`.
///
/// Represents a Chronicle Data Table, a multicolumn structure used to ingest
/// your own data into Google SecOps.
///
/// Chronicle (Google SecOps) **data table** — typed lookup table used by
/// detection rules and enrichment.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// tables sit on an entitlement-gated Chronicle instance and feed detection
/// against billed ingestion. Not applyable on `terradart-validate`.
/// **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. Rows go in
/// [GoogleChronicleDataTableRow].
final class GoogleChronicleDataTable extends Resource {
  static const String tfType = 'google_chronicle_data_table';

  GoogleChronicleDataTable({
    required super.localName,
    required TfArg<String> dataTableId,
    required TfArg<String> description,
    required TfArg<String> location,
    required TfArg<String> instance,
    List<ChronicleDataTableColumnInfo>? columnInfo,
    ChronicleDataTableScopeInfo? scopeInfo,
    TfArg<String>? rowTimeToLive,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_table_id': dataTableId,
           'description': description,
           'location': location,
           'instance': instance,
           if (columnInfo != null)
             'column_info': TfArg.literal([
               for (final e in columnInfo) e.encode(),
             ]),
           if (scopeInfo != null)
             'scope_info': TfArg.literal(scopeInfo.encode()),
           if (rowTimeToLive != null) 'row_time_to_live': rowTimeToLive,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataTableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `approximate_row_count` attribute.
  TfRef<num> get approximateRowCount =>
      TfRef.attribute<num>(this, 'approximate_row_count');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_table_uuid` attribute.
  TfRef<String> get dataTableUuid =>
      TfRef.attribute<String>(this, 'data_table_uuid');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `row_time_to_live_update_time` attribute.
  TfRef<String> get rowTimeToLiveUpdateTime =>
      TfRef.attribute<String>(this, 'row_time_to_live_update_time');

  /// Reference to `rule_associations_count` attribute.
  TfRef<num> get ruleAssociationsCount =>
      TfRef.attribute<num>(this, 'rule_associations_count');

  /// Reference to `rules` attribute.
  TfRef<List<String>> get rules => TfRef.attribute<List<String>>(this, 'rules');

  /// Reference to `update_source` attribute.
  TfRef<String> get updateSource =>
      TfRef.attribute<String>(this, 'update_source');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
