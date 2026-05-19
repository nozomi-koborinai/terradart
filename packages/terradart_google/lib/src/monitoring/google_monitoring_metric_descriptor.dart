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
enum MonitoringMetricKind {
  unspecified('METRIC_KIND_UNSPECIFIED'),
  gauge('GAUGE'),
  delta('DELTA'),
  cumulative('CUMULATIVE');

  const MonitoringMetricKind(this.terraformValue);
  final String terraformValue;
}

/// `value_type` — the value kind recorded per data point. Use
/// [MonitoringValueType.distribution] together with the histogram-bucket
/// configuration on the metric's time series; the schema does **not**
/// include `MONEY` or a `VALUE_TYPE_UNSPECIFIED` sentinel.
enum MonitoringValueType {
  boolean('BOOL'),
  int64('INT64'),
  doubleValue('DOUBLE'),
  string('STRING'),
  distribution('DISTRIBUTION');

  const MonitoringValueType(this.terraformValue);
  final String terraformValue;
}

/// `labels[].value_type` — the data type of a label attached to this
/// metric. The label-level value space is narrower than the descriptor's
/// (no `DOUBLE` / `DISTRIBUTION`). Defaults to
/// [MonitoringMetricLabelValueType.string] when omitted.
enum MonitoringMetricLabelValueType {
  string('STRING'),
  boolean('BOOL'),
  int64('INT64');

  const MonitoringMetricLabelValueType(this.terraformValue);
  final String terraformValue;
}

/// `launch_stage` — release-management stage of this metric definition.
/// Defaults to [MonitoringMetricLaunchStage.ga] / unset for stable metrics.
enum MonitoringMetricLaunchStage {
  unspecified('LAUNCH_STAGE_UNSPECIFIED'),
  unimplemented('UNIMPLEMENTED'),
  prelaunch('PRELAUNCH'),
  earlyAccess('EARLY_ACCESS'),
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecated('DEPRECATED');

  const MonitoringMetricLaunchStage(this.terraformValue);
  final String terraformValue;
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
  final TfArg<MonitoringMetricLabelValueType>? valueType;
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

/// Factory wrapper for `google_monitoring_metric_descriptor` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_monitoring_metric_descriptor.`).
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
///   localName: 'app_requests',
///   type: TfArg.literal('custom.googleapis.com/myapp/requests'),
///   metricKind: TfArg.literal(MonitoringMetricKind.delta),
///   valueType: TfArg.literal(MonitoringValueType.int64),
///   description: TfArg.literal('Number of requests received by myapp.'),
///   displayName: TfArg.literal('App requests'),
///   unit: TfArg.literal('1'),
///   labels: const [
///     MonitoringMetricDescriptorLabel(
///       key: TfArgLiteral('route'),
///       valueType: TfArgLiteral(MonitoringMetricLabelValueType.string),
///       description: TfArgLiteral('HTTP route template.'),
///     ),
///   ],
/// );
/// ```
///
/// Manages a Cloud Monitoring user-defined metric descriptor. Composition
/// pattern: extends `Resource<$GoogleMonitoringMetricDescriptor>` for
/// runtime behavior. The nested-block helpers
/// ([MonitoringMetricDescriptorLabel],
/// [MonitoringMetricDescriptorMetadata]) and the enum wrappers
/// ([MonitoringMetricKind], [MonitoringValueType],
/// [MonitoringMetricLabelValueType], [MonitoringMetricLaunchStage]) live
/// in the `prelude` below.
final class GoogleMonitoringMetricDescriptor extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_monitoring_metric_descriptor';

  GoogleMonitoringMetricDescriptor({
    required super.localName,
    required TfArg<String> type,
    required TfArg<MonitoringMetricKind> metricKind,
    required TfArg<MonitoringValueType> valueType,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<String>? unit,
    List<MonitoringMetricDescriptorLabel>? labels,
    MonitoringMetricDescriptorMetadata? metadata,
    TfArg<MonitoringMetricLaunchStage>? launchStage,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'type': type,
           'metric_kind': metricKind,
           'value_type': valueType,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (unit != null) 'unit': unit,
           if (labels != null)
             'labels': TfArg.literal(labels.map((l) => l.toArgMap()).toList()),
           if (metadata != null)
             'metadata': TfArg.literal([metadata.toArgMap()]),
           if (launchStage != null) 'launch_stage': launchStage,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleMonitoringMetricDescriptorSensitive;

  /// Reference to `id` attribute (the metric descriptor's full resource
  /// name, `projects/{project}/metricDescriptors/{type}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (same shape as [id]; populated by Cloud
  /// Monitoring on create).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `monitored_resource_types` — the set of monitored
  /// resource types this descriptor may be associated with. Server-managed.
  TfRef<List<String>> get monitoredResourceTypes =>
      TfRef.attribute<List<String>>(this, 'monitored_resource_types');
}
