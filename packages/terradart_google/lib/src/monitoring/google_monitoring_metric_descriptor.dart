// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_metric_descriptor`.
const Set<String> _googleMonitoringMetricDescriptorSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `metric_kind` — whether the metric records instantaneous values, deltas,
/// or running totals. Not every `(metricKind, valueType)` combination is
/// supported by the Cloud Monitoring API.
extension type const MonitoringMetricKind._(TfArg<String> _)
    implements TfArg<String> {
  MonitoringMetricKind.variable(String name) : this._(TfArg.variable(name));
  MonitoringMetricKind.expression(String template)
    : this._(TfArg.expression(template));
  const MonitoringMetricKind.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = MonitoringMetricKind._(
    TfArgLiteral('METRIC_KIND_UNSPECIFIED'),
  );
  static const gauge = MonitoringMetricKind._(TfArgLiteral('GAUGE'));
  static const delta = MonitoringMetricKind._(TfArgLiteral('DELTA'));
  static const cumulative = MonitoringMetricKind._(TfArgLiteral('CUMULATIVE'));

  static const List<MonitoringMetricKind> values = [
    unspecified,
    gauge,
    delta,
    cumulative,
  ];
}

/// `value_type` — the value kind recorded per data point. Use
/// [MonitoringValueType.distribution] together with the histogram-bucket
/// configuration on the metric's time series; the schema does **not**
/// include `MONEY` or a `VALUE_TYPE_UNSPECIFIED` sentinel.
extension type const MonitoringValueType._(TfArg<String> _)
    implements TfArg<String> {
  MonitoringValueType.variable(String name) : this._(TfArg.variable(name));
  MonitoringValueType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitoringValueType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = MonitoringValueType._(TfArgLiteral('BOOL'));
  static const int64 = MonitoringValueType._(TfArgLiteral('INT64'));
  static const doubleValue = MonitoringValueType._(TfArgLiteral('DOUBLE'));
  static const string = MonitoringValueType._(TfArgLiteral('STRING'));
  static const distribution = MonitoringValueType._(
    TfArgLiteral('DISTRIBUTION'),
  );

  static const List<MonitoringValueType> values = [
    boolean,
    int64,
    doubleValue,
    string,
    distribution,
  ];
}

/// `labels[].value_type` — the data type of a label attached to this
/// metric. The label-level value space is narrower than the descriptor's
/// (no `DOUBLE` / `DISTRIBUTION`). Defaults to
/// [MonitoringMetricLabelValueType.string] when omitted.
extension type const MonitoringMetricLabelValueType._(TfArg<String> _)
    implements TfArg<String> {
  MonitoringMetricLabelValueType.variable(String name)
    : this._(TfArg.variable(name));
  MonitoringMetricLabelValueType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitoringMetricLabelValueType.arg(TfArg<String> arg) : this._(arg);

  static const string = MonitoringMetricLabelValueType._(
    TfArgLiteral('STRING'),
  );
  static const boolean = MonitoringMetricLabelValueType._(TfArgLiteral('BOOL'));
  static const int64 = MonitoringMetricLabelValueType._(TfArgLiteral('INT64'));

  static const List<MonitoringMetricLabelValueType> values = [
    string,
    boolean,
    int64,
  ];
}

/// `launch_stage` — release-management stage of this metric definition.
/// Defaults to [MonitoringMetricLaunchStage.ga] / unset for stable metrics.
extension type const MonitoringMetricLaunchStage._(TfArg<String> _)
    implements TfArg<String> {
  MonitoringMetricLaunchStage.variable(String name)
    : this._(TfArg.variable(name));
  MonitoringMetricLaunchStage.expression(String template)
    : this._(TfArg.expression(template));
  const MonitoringMetricLaunchStage.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = MonitoringMetricLaunchStage._(
    TfArgLiteral('LAUNCH_STAGE_UNSPECIFIED'),
  );
  static const unimplemented = MonitoringMetricLaunchStage._(
    TfArgLiteral('UNIMPLEMENTED'),
  );
  static const prelaunch = MonitoringMetricLaunchStage._(
    TfArgLiteral('PRELAUNCH'),
  );
  static const earlyAccess = MonitoringMetricLaunchStage._(
    TfArgLiteral('EARLY_ACCESS'),
  );
  static const alpha = MonitoringMetricLaunchStage._(TfArgLiteral('ALPHA'));
  static const beta = MonitoringMetricLaunchStage._(TfArgLiteral('BETA'));
  static const ga = MonitoringMetricLaunchStage._(TfArgLiteral('GA'));
  static const deprecated = MonitoringMetricLaunchStage._(
    TfArgLiteral('DEPRECATED'),
  );

  static const List<MonitoringMetricLaunchStage> values = [
    unspecified,
    unimplemented,
    prelaunch,
    earlyAccess,
    alpha,
    beta,
    ga,
    deprecated,
  ];
}

// ===========================================================================
// labels + metadata helpers
// ===========================================================================

/// One entry in `labels` — describes a label key that values of this
/// metric carry. The label-level [valueType] is narrower than the
/// descriptor's top-level [MonitoringValueType] (no `DOUBLE` /
/// `DISTRIBUTION`).
class MonitoringMetricDescriptorLabel {
  const MonitoringMetricDescriptorLabel({
    required this.key,
    this.valueType,
    this.description,
  });

  final TfArg<String> key;
  final MonitoringMetricLabelValueType? valueType;
  final TfArg<String>? description;

  Map<String, Object?> toArgMap() => {
    'key': key.toTfJson(),
    if (valueType != null) 'value_type': valueType!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
  };
}

/// `metadata` block (max=1) — sampling / ingest-delay hints for the
/// metric. Both fields are [Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration)-format
/// strings (e.g. `'60s'`, `'300s'`).
class MonitoringMetricDescriptorMetadata {
  const MonitoringMetricDescriptorMetadata({
    this.samplePeriod,
    this.ingestDelay,
  });

  /// Period at which the source writes data points. Metrics with a higher
  /// granularity have a smaller sampling period.
  final TfArg<String>? samplePeriod;

  /// Maximum delay between when a data point is produced and when it
  /// becomes readable. Data points older than this age are guaranteed to
  /// be available.
  final TfArg<String>? ingestDelay;

  Map<String, Object?> toArgMap() => {
    if (samplePeriod != null) 'sample_period': samplePeriod!.toTfJson(),
    if (ingestDelay != null) 'ingest_delay': ingestDelay!.toTfJson(),
  };
}

/// Factory wrapper for `google_monitoring_metric_descriptor`.
///
/// Defines a metric type and its schema. Once a metric descriptor is created,
/// deleting or altering it stops data collection and makes the metric type's
/// existing data unusable.
///
/// Required identity beyond [localName]:
/// - `type`: the fully-qualified metric type. User-defined metrics must use
///   one of the reserved DNS prefixes (`custom.googleapis.com/`,
///   `external.googleapis.com/`, or `logging.googleapis.com/user/`), e.g.
///   `'custom.googleapis.com/myapp/requests'`. The relative part is limited
///   to 100 characters of `[A-Za-z0-9_/]`.
/// - `metricKind`: whether the metric records instantaneous values
///   ([MonitoringMetricKind.gauge]), deltas
///   ([MonitoringMetricKind.delta]), or running totals
///   ([MonitoringMetricKind.cumulative]). Not every
///   `(metricKind, valueType)` combination is supported by the API; consult
///   the [Cloud Monitoring docs](https://cloud.google.com/monitoring/api/v3/kinds-and-types).
/// - `valueType`: the value kind recorded per data point. See
///   [MonitoringValueType].
/// - `description`: human-readable description shown in documentation /
///   metric pickers (required by the API).
///
/// Modeling notes:
/// - `labels` is a nested-block set. Use [MonitoringMetricDescriptorLabel]
///   entries to declare the label schema; per-label `valueType` is a
///   narrower enum than the descriptor's (no `DOUBLE` / `DISTRIBUTION`).
/// - `metadata` is a `max_items: 1` block exposing the sampling /
///   ingest-delay hints (Duration strings, e.g. `'60s'`).
/// - `monitoredResourceTypes` is a server-populated set and not a
///   constructor input.
///
/// Example (custom DELTA / INT64 counter):
/// ```dart
/// final descriptor = GoogleMonitoringMetricDescriptor(
///   'app_requests',
///   type: TfArg.literal('custom.googleapis.com/myapp/requests'),
///   metricKind: MonitoringMetricKind.delta,
///   valueType: MonitoringValueType.int64,
///   description: TfArg.literal('Number of requests received by myapp.'),
///   displayName: TfArg.literal('App requests'),
///   unit: TfArg.literal('1'),
///   labels: const [
///     MonitoringMetricDescriptorLabel(
///       key: TfArgLiteral('route'),
///       valueType: MonitoringMetricLabelValueType.string,
///       description: TfArgLiteral('HTTP route template.'),
///     ),
///   ],
/// );
/// ```
final class GoogleMonitoringMetricDescriptor extends Resource {
  static const String tfType = 'google_monitoring_metric_descriptor';

  GoogleMonitoringMetricDescriptor(
    super.localName, {
    required TfArg<String> type,
    required MonitoringMetricKind metricKind,
    required MonitoringValueType valueType,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<String>? unit,
    List<MonitoringMetricDescriptorLabel>? labels,
    MonitoringMetricDescriptorMetadata? metadata,
    MonitoringMetricLaunchStage? launchStage,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'type': type,
           'metric_kind': metricKind,
           'value_type': valueType,
           'description': ?description,
           'display_name': ?displayName,
           'unit': ?unit,
           if (labels != null)
             'labels': TfArg.literal(labels.map((l) => l.toArgMap()).toList()),
           if (metadata != null)
             'metadata': TfArg.literal([metadata.toArgMap()]),
           'launch_stage': ?launchStage,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringMetricDescriptorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringMetricDescriptor>`.
  RefTo<GoogleMonitoringMetricDescriptor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `monitored_resource_types` attribute.
  TfRef<List<String>> get monitoredResourceTypes =>
      TfRef.attribute<List<String>>(this, 'monitored_resource_types');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `launch_stage` attribute.
  TfRef<String> get launchStage =>
      TfRef.attribute<String>(this, 'launch_stage');

  /// Reference to `metric_kind` attribute.
  TfRef<String> get metricKind => TfRef.attribute<String>(this, 'metric_kind');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `unit` attribute.
  TfRef<String> get unit => TfRef.attribute<String>(this, 'unit');

  /// Reference to `value_type` attribute.
  TfRef<String> get valueType => TfRef.attribute<String>(this, 'value_type');
}
