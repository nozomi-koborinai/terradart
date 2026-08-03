// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_big_query_export`.
const Set<String> _googleChronicleBigQueryExportSensitive = <String>{};

/// Chronicle Big Query Export Big Query Export enum for `big_query_export_package`.
enum ChronicleBigQueryExportBigQueryExportPackage implements TerraformEnum {
  bigQueryExportPackageByobq('BIG_QUERY_EXPORT_PACKAGE_BYOBQ'),
  bigQueryExportPackageAdvanced('BIG_QUERY_EXPORT_PACKAGE_ADVANCED');

  const ChronicleBigQueryExportBigQueryExportPackage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `entity_graph_settings` block of
/// `google_chronicle_big_query_export` (derived from provider schema).
@immutable
final class ChronicleBigQueryExportEntityGraphSettings {
  const ChronicleBigQueryExportEntityGraphSettings({
    required this.enabled,
    required this.retentionDays,
  });

  final TfArg<bool> enabled;

  final TfArg<num> retentionDays;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'retention_days': retentionDays.toTfJson(),
  };
}

/// Typed helper for the `ioc_matches_settings` block of
/// `google_chronicle_big_query_export` (derived from provider schema).
@immutable
final class ChronicleBigQueryExportIocMatchesSettings {
  const ChronicleBigQueryExportIocMatchesSettings({
    required this.enabled,
    required this.retentionDays,
  });

  final TfArg<bool> enabled;

  final TfArg<num> retentionDays;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'retention_days': retentionDays.toTfJson(),
  };
}

/// Typed helper for the `rule_detections_settings` block of
/// `google_chronicle_big_query_export` (derived from provider schema).
@immutable
final class ChronicleBigQueryExportRuleDetectionsSettings {
  const ChronicleBigQueryExportRuleDetectionsSettings({
    required this.enabled,
    required this.retentionDays,
  });

  final TfArg<bool> enabled;

  final TfArg<num> retentionDays;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'retention_days': retentionDays.toTfJson(),
  };
}

/// Typed helper for the `udm_events_aggregates_settings` block of
/// `google_chronicle_big_query_export` (derived from provider schema).
@immutable
final class ChronicleBigQueryExportUdmEventsAggregatesSettings {
  const ChronicleBigQueryExportUdmEventsAggregatesSettings({
    required this.enabled,
    required this.retentionDays,
  });

  final TfArg<bool> enabled;

  final TfArg<num> retentionDays;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'retention_days': retentionDays.toTfJson(),
  };
}

/// Typed helper for the `udm_events_settings` block of
/// `google_chronicle_big_query_export` (derived from provider schema).
@immutable
final class ChronicleBigQueryExportUdmEventsSettings {
  const ChronicleBigQueryExportUdmEventsSettings({
    required this.enabled,
    required this.retentionDays,
  });

  final TfArg<bool> enabled;

  final TfArg<num> retentionDays;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'retention_days': retentionDays.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_big_query_export`.
///
/// BigQueryExport resource represents the BigQuery export configuration for a
/// Chronicle instance.
///
/// Chronicle (Google SecOps) **BigQuery export** — continuous export of
/// UDM / detections / IoC / entity graph datasets to BigQuery.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// exports run on an entitlement-gated Chronicle instance and write to
/// BigQuery (query + storage). Not applyable on `terradart-validate`.
/// **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [instance] is the
/// Chronicle instance ID in [location] (e.g. `us`).
final class GoogleChronicleBigQueryExport extends Resource {
  static const String tfType = 'google_chronicle_big_query_export';

  GoogleChronicleBigQueryExport({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? bigQueryExportPackage,
    ChronicleBigQueryExportUdmEventsSettings? udmEventsSettings,
    ChronicleBigQueryExportUdmEventsAggregatesSettings?
    udmEventsAggregatesSettings,
    ChronicleBigQueryExportRuleDetectionsSettings? ruleDetectionsSettings,
    ChronicleBigQueryExportIocMatchesSettings? iocMatchesSettings,
    ChronicleBigQueryExportEntityGraphSettings? entityGraphSettings,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           if (bigQueryExportPackage != null)
             'big_query_export_package': bigQueryExportPackage,
           if (udmEventsSettings != null)
             'udm_events_settings': TfArg.literal(udmEventsSettings.encode()),
           if (udmEventsAggregatesSettings != null)
             'udm_events_aggregates_settings': TfArg.literal(
               udmEventsAggregatesSettings.encode(),
             ),
           if (ruleDetectionsSettings != null)
             'rule_detections_settings': TfArg.literal(
               ruleDetectionsSettings.encode(),
             ),
           if (iocMatchesSettings != null)
             'ioc_matches_settings': TfArg.literal(iocMatchesSettings.encode()),
           if (entityGraphSettings != null)
             'entity_graph_settings': TfArg.literal(
               entityGraphSettings.encode(),
             ),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleBigQueryExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provisioned` attribute.
  TfRef<bool> get provisioned => TfRef.attribute<bool>(this, 'provisioned');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
