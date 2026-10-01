// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_big_query_export`.
const Set<String> _googleChronicleBigQueryExportSensitive = <String>{};

/// Chronicle Big Query Export enum for `big_query_export_package`.
extension type const ChronicleBigQueryExportPackage._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleBigQueryExportPackage.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleBigQueryExportPackage.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleBigQueryExportPackage.arg(TfArg<String> arg) : this._(arg);

  static const bigQueryExportPackageByobq = ChronicleBigQueryExportPackage._(
    TfArgLiteral('BIG_QUERY_EXPORT_PACKAGE_BYOBQ'),
  );
  static const bigQueryExportPackageAdvanced = ChronicleBigQueryExportPackage._(
    TfArgLiteral('BIG_QUERY_EXPORT_PACKAGE_ADVANCED'),
  );

  static const List<ChronicleBigQueryExportPackage> values = [
    bigQueryExportPackageByobq,
    bigQueryExportPackageAdvanced,
  ];
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  GoogleChronicleBigQueryExport(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           'big_query_export_package': ?bigQueryExportPackage,
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
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleBigQueryExportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleBigQueryExport>`.
  RefTo<GoogleChronicleBigQueryExport> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provisioned` attribute.
  TfRef<bool> get provisioned => TfRef.attribute<bool>(this, 'provisioned');

  /// Reference to `big_query_export_package` attribute.
  TfRef<String> get bigQueryExportPackage =>
      TfRef.attribute<String>(this, 'big_query_export_package');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
