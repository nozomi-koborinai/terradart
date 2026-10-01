// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../logging/google_logging_project_bucket_config.dart'
    show GoogleLoggingProjectBucketConfig;

/// Sensitive field paths for `google_logging_metric`.
const Set<String> _googleLoggingMetricSensitive = <String>{};

// ===========================================================================
// metric_descriptor enums
// ===========================================================================

/// `metric_descriptor.metric_kind` — whether the metric records
/// instantaneous values, deltas, or running totals. For counter metrics
/// (the typical logs-based shape) use [LoggingMetricKind.delta].
extension type const LoggingMetricKind._(TfArg<String> _)
    implements TfArg<String> {
  LoggingMetricKind.variable(String name) : this._(TfArg.variable(name));
  LoggingMetricKind.expression(String template)
    : this._(TfArg.expression(template));
  const LoggingMetricKind.arg(TfArg<String> arg) : this._(arg);

  static const delta = LoggingMetricKind._(TfArgLiteral('DELTA'));
  static const gauge = LoggingMetricKind._(TfArgLiteral('GAUGE'));
  static const cumulative = LoggingMetricKind._(TfArgLiteral('CUMULATIVE'));

  static const List<LoggingMetricKind> values = [delta, gauge, cumulative];
}

/// `metric_descriptor.value_type` — the value kind recorded per data
/// point. Use [LoggingMetricValueType.int64] for counter metrics and
/// [LoggingMetricValueType.distribution] when pairing with
/// [LoggingMetricBucketOptions] to build a histogram from
/// [GoogleLoggingMetric.valueExtractor].
extension type const LoggingMetricValueType._(TfArg<String> _)
    implements TfArg<String> {
  LoggingMetricValueType.variable(String name) : this._(TfArg.variable(name));
  LoggingMetricValueType.expression(String template)
    : this._(TfArg.expression(template));
  const LoggingMetricValueType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = LoggingMetricValueType._(TfArgLiteral('BOOL'));
  static const int64 = LoggingMetricValueType._(TfArgLiteral('INT64'));
  static const doubleValue = LoggingMetricValueType._(TfArgLiteral('DOUBLE'));
  static const string = LoggingMetricValueType._(TfArgLiteral('STRING'));
  static const distribution = LoggingMetricValueType._(
    TfArgLiteral('DISTRIBUTION'),
  );
  static const money = LoggingMetricValueType._(TfArgLiteral('MONEY'));

  static const List<LoggingMetricValueType> values = [
    boolean,
    int64,
    doubleValue,
    string,
    distribution,
    money,
  ];
}

/// `metric_descriptor.labels[].value_type` — the data type of a label
/// extracted from log entries. The label-level value space is narrower
/// than the descriptor's (no `DOUBLE` / `DISTRIBUTION` / `MONEY`).
/// Defaults to [LoggingMetricLabelValueType.string] when omitted.
extension type const LoggingMetricLabelValueType._(TfArg<String> _)
    implements TfArg<String> {
  LoggingMetricLabelValueType.variable(String name)
    : this._(TfArg.variable(name));
  LoggingMetricLabelValueType.expression(String template)
    : this._(TfArg.expression(template));
  const LoggingMetricLabelValueType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = LoggingMetricLabelValueType._(TfArgLiteral('BOOL'));
  static const int64 = LoggingMetricLabelValueType._(TfArgLiteral('INT64'));
  static const string = LoggingMetricLabelValueType._(TfArgLiteral('STRING'));

  static const List<LoggingMetricLabelValueType> values = [
    boolean,
    int64,
    string,
  ];
}

// ===========================================================================
// metric_descriptor + labels helpers
// ===========================================================================

/// One entry in `metric_descriptor.labels` — describes a label that the
/// metric carries. The label value is filled in per log entry via the
/// matching extractor expression in
/// [GoogleLoggingMetric.labelExtractors].
class LoggingMetricLabel {
  const LoggingMetricLabel({
    required this.key,
    this.valueType,
    this.description,
  });

  final TfArg<String> key;
  final LoggingMetricLabelValueType? valueType;
  final TfArg<String>? description;

  Map<String, Object?> toArgMap() => {
    'key': key.toTfJson(),
    if (valueType != null) 'value_type': valueType!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
  };
}

/// `metric_descriptor` block (max=1) — describes the shape of the metric
/// produced by the surrounding [GoogleLoggingMetric]. When omitted, the
/// API defaults to a `DELTA` / `INT64` counter with unit `"1"`.
class LoggingMetricDescriptor {
  const LoggingMetricDescriptor({
    required this.metricKind,
    required this.valueType,
    this.unit,
    this.displayName,
    this.labels,
  });

  final LoggingMetricKind metricKind;
  final LoggingMetricValueType valueType;

  /// UCUM-style unit string (e.g. `'s'`, `'By'`, `'1'`). Only meaningful
  /// when [valueType] is `INT64`, `DOUBLE`, or `DISTRIBUTION`.
  final TfArg<String>? unit;
  final TfArg<String>? displayName;
  final List<LoggingMetricLabel>? labels;

  Map<String, Object?> toArgMap() => {
    'metric_kind': metricKind.toTfJson(),
    'value_type': valueType.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (labels != null) 'labels': labels!.map((l) => l.toArgMap()).toList(),
  };
}

// ===========================================================================
// bucket_options helpers (required for DISTRIBUTION metrics)
// ===========================================================================

/// `bucket_options.linear_buckets` (max=1). Produces a linear sequence
/// of buckets that all have the same [width] (except the implicit
/// overflow / underflow buckets).
class LoggingMetricLinearBuckets {
  const LoggingMetricLinearBuckets({
    required this.numFiniteBuckets,
    required this.width,
    required this.offset,
  });
  final TfArg<num> numFiniteBuckets;
  final TfArg<num> width;
  final TfArg<num> offset;
  Map<String, Object?> toArgMap() => {
    'num_finite_buckets': numFiniteBuckets.toTfJson(),
    'width': width.toTfJson(),
    'offset': offset.toTfJson(),
  };
}

/// `bucket_options.exponential_buckets` (max=1). Produces an exponential
/// sequence of buckets where bucket `i` upper bound is
/// `scale * growthFactor^i`. [growthFactor] must be > 1.
class LoggingMetricExponentialBuckets {
  const LoggingMetricExponentialBuckets({
    required this.numFiniteBuckets,
    required this.growthFactor,
    required this.scale,
  });
  final TfArg<num> numFiniteBuckets;
  final TfArg<num> growthFactor;
  final TfArg<num> scale;
  Map<String, Object?> toArgMap() => {
    'num_finite_buckets': numFiniteBuckets.toTfJson(),
    'growth_factor': growthFactor.toTfJson(),
    'scale': scale.toTfJson(),
  };
}

/// `bucket_options.explicit_buckets` (max=1). Specifies arbitrary
/// bucket widths via a monotonically-increasing list of [bounds].
class LoggingMetricExplicitBuckets {
  const LoggingMetricExplicitBuckets({required this.bounds});
  final TfArg<List<num>> bounds;
  Map<String, Object?> toArgMap() => {'bounds': bounds.toTfJson()};
}

/// `bucket_options` block (max=1) — histogram bucket boundaries for a
/// `DISTRIBUTION` metric. Pick EXACTLY one of [linearBuckets],
/// [exponentialBuckets], or [explicitBuckets]; Terraform enforces the
/// exactly_one_of contract at apply time.
class LoggingMetricBucketOptions {
  const LoggingMetricBucketOptions({
    this.linearBuckets,
    this.exponentialBuckets,
    this.explicitBuckets,
  });
  final LoggingMetricLinearBuckets? linearBuckets;
  final LoggingMetricExponentialBuckets? exponentialBuckets;
  final LoggingMetricExplicitBuckets? explicitBuckets;
  Map<String, Object?> toArgMap() => {
    if (linearBuckets != null) 'linear_buckets': [linearBuckets!.toArgMap()],
    if (exponentialBuckets != null)
      'exponential_buckets': [exponentialBuckets!.toArgMap()],
    if (explicitBuckets != null)
      'explicit_buckets': [explicitBuckets!.toArgMap()],
  };
}

/// Factory wrapper for `google_logging_metric`.
///
/// Logs-based metric can also be used to extract values from logs and create a
/// a distribution of the values. The distribution records the statistics of the
/// extracted values along with an optional histogram of the values as specified
/// by the bucket options.
///
/// Modeling notes:
/// - `metric_descriptor` is a `max_items: 1` block. When omitted, the API
///   defaults to a `DELTA` / `INT64` counter with unit `"1"`. Provide a
///   [LoggingMetricDescriptor] to set the metric kind / value type, a
///   user-visible display name, a UCUM unit, or extracted labels.
/// - `bucket_options` is required when [LoggingMetricDescriptor.valueType]
///   is [LoggingMetricValueType.distribution] and describes the histogram
///   bucket boundaries. Exactly one of `linearBuckets`, `exponentialBuckets`,
///   or `explicitBuckets` should be set; Terraform enforces this at apply
///   time.
/// - `bucket_name` scopes the metric to a specific Log Bucket (in the same
///   project). Leave unset for the project-default `_Default` bucket.
///
/// Example (DELTA counter on error log entries):
/// ```dart
/// final errors = GoogleLoggingMetric(
///   'error_count',
///   name: TfArg.literal('error_count'),
///   filter: TfArg.literal(
///     'resource.type="k8s_container" AND severity>=ERROR',
///   ),
///   metricDescriptor: LoggingMetricDescriptor(
///     metricKind: LoggingMetricKind.delta,
///     valueType: LoggingMetricValueType.int64,
///     displayName: TfArgLiteral('Container errors'),
///   ),
/// );
/// ```
///
/// Example (DISTRIBUTION metric with extracted latency):
/// ```dart
/// final latency = GoogleLoggingMetric(
///   'request_latency',
///   name: TfArg.literal('request_latency'),
///   filter: TfArg.literal('resource.type="http_load_balancer"'),
///   valueExtractor: TfArg.literal('EXTRACT(httpRequest.latency)'),
///   metricDescriptor: LoggingMetricDescriptor(
///     metricKind: LoggingMetricKind.delta,
///     valueType: LoggingMetricValueType.distribution,
///     unit: TfArgLiteral('s'),
///   ),
///   bucketOptions: const LoggingMetricBucketOptions(
///     exponentialBuckets: .new(
///       numFiniteBuckets: TfArgLiteral(64),
///       growthFactor: TfArgLiteral(2),
///       scale: TfArgLiteral(0.01),
///     ),
///   ),
/// );
/// ```
final class GoogleLoggingMetric extends Resource {
  static const String tfType = 'google_logging_metric';

  GoogleLoggingMetric(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<String>? valueExtractor,
    TfArg<Map<String, String>>? labelExtractors,
    LoggingMetricDescriptor? metricDescriptor,
    LoggingMetricBucketOptions? bucketOptions,
    RefTo<GoogleLoggingProjectBucketConfig>? bucketName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'filter': filter,
           'description': ?description,
           'disabled': ?disabled,
           'value_extractor': ?valueExtractor,
           'label_extractors': ?labelExtractors,
           if (metricDescriptor != null)
             'metric_descriptor': TfArg.literal([metricDescriptor.toArgMap()]),
           if (bucketOptions != null)
             'bucket_options': TfArg.literal([bucketOptions.toArgMap()]),
           'bucket_name': ?bucketName?.encodeAs('id'),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingMetricSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingMetric>`.
  RefTo<GoogleLoggingMetric> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `label_extractors` attribute.
  TfRef<Map<String, String>> get labelExtractors =>
      TfRef.attribute<Map<String, String>>(this, 'label_extractors');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `value_extractor` attribute.
  TfRef<String> get valueExtractor =>
      TfRef.attribute<String>(this, 'value_extractor');
}
