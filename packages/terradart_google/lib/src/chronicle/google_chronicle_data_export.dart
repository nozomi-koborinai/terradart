// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_data_export`.
const Set<String> _googleChronicleDataExportSensitive = <String>{};

/// Typed helper for the `ingestion_labels` block of
/// `google_chronicle_data_export` (derived from provider schema).
@immutable
final class ChronicleDataExportIngestionLabels {
  const ChronicleDataExportIngestionLabels({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_data_export`.
///
/// DataExport resource represents a request to export data from Chronicle to a
/// GCS bucket.
///
/// Chronicle (Google SecOps) **data export** — exports instance events to a
/// GCS bucket over [startTime]..[endTime].
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// exports re-read large historical windows on an entitlement-gated
/// Chronicle instance and write to GCS (storage + egress). Not applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [gcsBucket] must exist
/// and be writable by Chronicle.
final class GoogleChronicleDataExport extends Resource {
  static const String tfType = 'google_chronicle_data_export';

  GoogleChronicleDataExport({
    required super.localName,
    required TfArg<String> gcsBucket,
    required TfArg<String> startTime,
    required TfArg<String> endTime,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<List<String>>? includeLogTypes,
    TfArg<List<String>>? namespaces,
    List<ChronicleDataExportIngestionLabels>? ingestionLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gcs_bucket': gcsBucket,
           'start_time': startTime,
           'end_time': endTime,
           'location': location,
           'instance': instance,
           if (includeLogTypes != null) 'include_log_types': includeLogTypes,
           if (namespaces != null) 'namespaces': namespaces,
           if (ingestionLabels != null)
             'ingestion_labels': TfArg.literal([
               for (final e in ingestionLabels) e.encode(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_export_id` attribute.
  TfRef<String> get dataExportId =>
      TfRef.attribute<String>(this, 'data_export_id');

  /// Reference to `data_export_status` attribute.
  TfRef<List<Map<String, Object?>>> get dataExportStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_export_status');

  /// Reference to `estimated_volume` attribute.
  TfRef<num> get estimatedVolume =>
      TfRef.attribute<num>(this, 'estimated_volume');

  /// Reference to `exported_volume` attribute.
  TfRef<num> get exportedVolume =>
      TfRef.attribute<num>(this, 'exported_volume');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
