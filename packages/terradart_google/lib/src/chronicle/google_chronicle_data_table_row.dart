// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_data_table_row`.
const Set<String> _googleChronicleDataTableRowSensitive = <String>{};

/// Factory wrapper for `google_chronicle_data_table_row`.
///
/// Represents a single row in a data table.
///
/// Chronicle (Google SecOps) **data table row** — one row in a
/// [GoogleChronicleDataTable].
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// rows populate entitlement-gated Chronicle tables used by detection.
/// Not applyable on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [values] is required.
final class GoogleChronicleDataTableRow extends Resource {
  static const String tfType = 'google_chronicle_data_table_row';

  GoogleChronicleDataTableRow({
    required super.localName,
    required TfArg<String> dataTableId,
    required TfArg<List<String>> values,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? rowTimeToLive,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_table_id': dataTableId,
           'values': values,
           'location': location,
           'instance': instance,
           if (rowTimeToLive != null) 'row_time_to_live': rowTimeToLive,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataTableRowSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_table_row` attribute.
  TfRef<String> get dataTableRow =>
      TfRef.attribute<String>(this, 'data_table_row');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
