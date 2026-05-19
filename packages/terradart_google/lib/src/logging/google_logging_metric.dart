// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_metric`.
const Set<String> _googleLoggingMetricSensitive = <String>{};

// ===========================================================================
// metric_descriptor enums
// ===========================================================================

/// `metric_descriptor.metric_kind` — whether the metric records
/// instantaneous values, deltas, or running totals. For counter metrics
/// (the typical logs-based shape) use [LoggingMetricKind.delta].
enum LoggingMetricKind {
  delta('DELTA'),
  gauge('GAUGE'),
  cumulative('CUMULATIVE');

  const LoggingMetricKind(this.terraformValue);
  final String terraformValue;
}

/// `metric_descriptor.value_type` — the value kind recorded per data
/// point. Use [LoggingMetricValueType.int64] for counter metrics and
/// [LoggingMetricValueType.distribution] when pairing with
/// [LoggingMetricBucketOptions] to build a histogram from
/// [GoogleLoggingMetric.valueExtractor].
enum LoggingMetricValueType {
  boolean('BOOL'),
  int64('INT64'),
  doubleValue('DOUBLE'),
  string('STRING'),
  distribution('DISTRIBUTION'),
  money('MONEY');

  const LoggingMetricValueType(this.terraformValue);
  final String terraformValue;
}

/// `metric_descriptor.labels[].value_type` — the data type of a label
/// extracted from log entries. The label-level value space is narrower
/// than the descriptor's (no `DOUBLE` / `DISTRIBUTION` / `MONEY`).
/// Defaults to [LoggingMetricLabelValueType.string] when omitted.
enum LoggingMetricLabelValueType {
  boolean('BOOL'),
  int64('INT64'),
  string('STRING');

  const LoggingMetricLabelValueType(this.terraformValue);
  final String terraformValue;
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
  final TfArg<LoggingMetricLabelValueType>? valueType;
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

  final TfArg<LoggingMetricKind> metricKind;
  final TfArg<LoggingMetricValueType> valueType;

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

/// Factory wrapper for `google_logging_metric` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_logging_metric.`).
/// - `name`: client-assigned metric identifier, e.g. `'error_count'` or
///   `'nginx/requests'`. Limited to 100 characters and the alphabet
///   `[A-Za-z0-9_-.,+!*'()%/]` (the forward slash denotes hierarchy and
///   cannot be the first character).
/// - `filter`: an [advanced logs filter](https://cloud.google.com/logging/docs/view/advanced-filters)
///   that selects log entries the metric counts / extracts values from.
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
///   localName: 'error_count',
///   name: TfArg.literal('error_count'),
///   filter: TfArg.literal(
///     'resource.type="k8s_container" AND severity>=ERROR',
///   ),
///   metricDescriptor: LoggingMetricDescriptor(
///     metricKind: TfArgLiteral(LoggingMetricKind.delta),
///     valueType: TfArgLiteral(LoggingMetricValueType.int64),
///     displayName: TfArgLiteral('Container errors'),
///   ),
/// );
/// ```
///
/// Example (DISTRIBUTION metric with extracted latency):
/// ```dart
/// final latency = GoogleLoggingMetric(
///   localName: 'request_latency',
///   name: TfArg.literal('request_latency'),
///   filter: TfArg.literal('resource.type="http_load_balancer"'),
///   valueExtractor: TfArg.literal('EXTRACT(httpRequest.latency)'),
///   metricDescriptor: LoggingMetricDescriptor(
///     metricKind: TfArgLiteral(LoggingMetricKind.delta),
///     valueType: TfArgLiteral(LoggingMetricValueType.distribution),
///     unit: TfArgLiteral('s'),
///   ),
///   bucketOptions: const LoggingMetricBucketOptions(
///     exponentialBuckets: LoggingMetricExponentialBuckets(
///       numFiniteBuckets: TfArgLiteral(64),
///       growthFactor: TfArgLiteral(2),
///       scale: TfArgLiteral(0.01),
///     ),
///   ),
/// );
/// ```
///
/// Manages a Cloud Logging logs-based metric. Composition pattern: extends
/// `Resource<$GoogleLoggingMetric>` for runtime behavior. The nested-block
/// helpers ([LoggingMetricDescriptor], [LoggingMetricLabel],
/// [LoggingMetricBucketOptions], plus the three bucket-variant classes)
/// live in the `prelude` below.
final class GoogleLoggingMetric extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_logging_metric';

  GoogleLoggingMetric({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<String>? valueExtractor,
    TfArg<Map<String, String>>? labelExtractors,
    LoggingMetricDescriptor? metricDescriptor,
    LoggingMetricBucketOptions? bucketOptions,
    TfArg<String>? bucketName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'filter': filter,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (valueExtractor != null) 'value_extractor': valueExtractor,
           if (labelExtractors != null) 'label_extractors': labelExtractors,
           if (metricDescriptor != null)
             'metric_descriptor': TfArg.literal([metricDescriptor.toArgMap()]),
           if (bucketOptions != null)
             'bucket_options': TfArg.literal([bucketOptions.toArgMap()]),
           if (bucketName != null) 'bucket_name': bucketName,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleLoggingMetricSensitive;

  /// Reference to `id` attribute (`projects/{project}/metrics/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
