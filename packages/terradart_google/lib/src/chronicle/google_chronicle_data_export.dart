// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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
    required RefTo<GoogleStorageBucket> gcsBucket,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gcs_bucket': gcsBucket.encodeAs('name'),
           'start_time': startTime,
           'end_time': endTime,
           'location': location,
           'instance': instance,
           'include_log_types': ?includeLogTypes,
           'namespaces': ?namespaces,
           if (ingestionLabels != null)
             'ingestion_labels': TfArg.literal([
               for (final e in ingestionLabels) e.encode(),
             ]),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataExportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleDataExport>`.
  RefTo<GoogleChronicleDataExport> get ref => RefTo.of(this);

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

  /// Reference to `end_time` attribute.
  TfRef<String> get endTimeRef => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `gcs_bucket` attribute.
  TfRef<String> get gcsBucketRef => TfRef.attribute<String>(this, 'gcs_bucket');

  /// Reference to `include_log_types` attribute.
  TfRef<List<String>> get includeLogTypesRef =>
      TfRef.attribute<List<String>>(this, 'include_log_types');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespaces` attribute.
  TfRef<List<String>> get namespacesRef =>
      TfRef.attribute<List<String>>(this, 'namespaces');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTimeRef => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
