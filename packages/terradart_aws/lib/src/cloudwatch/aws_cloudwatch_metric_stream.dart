// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_metric_stream`.
const Set<String> _awsCloudwatchMetricStreamSensitive = <String>{};

/// Cloudwatch Metric Stream Output enum for `output_format`.
enum CloudwatchMetricStreamOutputFormat implements TerraformEnum {
  json('json'),
  opentelemetry0p7('opentelemetry0.7'),
  opentelemetry1p0('opentelemetry1.0');

  const CloudwatchMetricStreamOutputFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `exclude_filter`, `include_filter` on `aws_cloudwatch_metric_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludeFilter(...)`.
sealed class CloudwatchMetricStreamFilter {
  const CloudwatchMetricStreamFilter();

  /// Sets `exclude_filter`.
  const factory CloudwatchMetricStreamFilter.excludeFilter(
    List<CloudwatchMetricStreamExcludeFilter> excludeFilter,
  ) = CloudwatchMetricStreamFilterExcludeFilter;

  /// Sets `include_filter`.
  const factory CloudwatchMetricStreamFilter.includeFilter(
    List<CloudwatchMetricStreamIncludeFilter> includeFilter,
  ) = CloudwatchMetricStreamFilterIncludeFilter;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchMetricStreamFilter.excludeFilter] choice: sets `exclude_filter`.
final class CloudwatchMetricStreamFilterExcludeFilter
    extends CloudwatchMetricStreamFilter {
  const CloudwatchMetricStreamFilterExcludeFilter(this.excludeFilter);

  final List<CloudwatchMetricStreamExcludeFilter> excludeFilter;

  @override
  String get blockKey => 'exclude_filter';

  @override
  Map<String, Object?> encode() => {
    'exclude_filter': [for (final e in excludeFilter) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'exclude_filter': TfArg.literal([
      for (final e in excludeFilter) e.encode(),
    ]),
  };
}

/// The [CloudwatchMetricStreamFilter.includeFilter] choice: sets `include_filter`.
final class CloudwatchMetricStreamFilterIncludeFilter
    extends CloudwatchMetricStreamFilter {
  const CloudwatchMetricStreamFilterIncludeFilter(this.includeFilter);

  final List<CloudwatchMetricStreamIncludeFilter> includeFilter;

  @override
  String get blockKey => 'include_filter';

  @override
  Map<String, Object?> encode() => {
    'include_filter': [for (final e in includeFilter) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'include_filter': TfArg.literal([
      for (final e in includeFilter) e.encode(),
    ]),
  };
}

/// At most one of `name`, `name_prefix` on `aws_cloudwatch_metric_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class CloudwatchMetricStreamName {
  const CloudwatchMetricStreamName();

  /// Sets `name`.
  const factory CloudwatchMetricStreamName.name(TfArg<String> name) =
      CloudwatchMetricStreamNameChoice;

  /// Sets `name_prefix`.
  const factory CloudwatchMetricStreamName.namePrefix(
    TfArg<String> namePrefix,
  ) = CloudwatchMetricStreamNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchMetricStreamName.name] choice: sets `name`.
final class CloudwatchMetricStreamNameChoice
    extends CloudwatchMetricStreamName {
  const CloudwatchMetricStreamNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [CloudwatchMetricStreamName.namePrefix] choice: sets `name_prefix`.
final class CloudwatchMetricStreamNamePrefix
    extends CloudwatchMetricStreamName {
  const CloudwatchMetricStreamNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `exclude_filter` block of
/// `aws_cloudwatch_metric_stream` (derived from provider schema).
@immutable
final class CloudwatchMetricStreamExcludeFilter {
  const CloudwatchMetricStreamExcludeFilter({
    this.metricNames,
    required this.namespace,
  });

  final TfArg<List<Object?>>? metricNames;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    if (metricNames != null) 'metric_names': metricNames!.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `include_filter` block of
/// `aws_cloudwatch_metric_stream` (derived from provider schema).
@immutable
final class CloudwatchMetricStreamIncludeFilter {
  const CloudwatchMetricStreamIncludeFilter({
    this.metricNames,
    required this.namespace,
  });

  final TfArg<List<Object?>>? metricNames;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    if (metricNames != null) 'metric_names': metricNames!.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `statistics_configuration` block of
/// `aws_cloudwatch_metric_stream` (derived from provider schema).
@immutable
final class CloudwatchMetricStreamStatisticsConfiguration {
  const CloudwatchMetricStreamStatisticsConfiguration({
    required this.additionalStatistics,
    required this.includeMetric,
  });

  final TfArg<List<Object?>> additionalStatistics;

  final List<CloudwatchMetricStreamStatisticsConfigurationIncludeMetric>
  includeMetric;

  Map<String, Object?> encode() => {
    'additional_statistics': additionalStatistics.toTfJson(),
    'include_metric': [for (final e in includeMetric) e.encode()],
  };
}

/// Typed helper for the `statistics_configuration.include_metric` block of
/// `aws_cloudwatch_metric_stream` (derived from provider schema).
@immutable
final class CloudwatchMetricStreamStatisticsConfigurationIncludeMetric {
  const CloudwatchMetricStreamStatisticsConfigurationIncludeMetric({
    required this.metricName,
    required this.namespace,
  });

  final TfArg<String> metricName;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_metric_stream`.
final class AwsCloudwatchMetricStream extends Resource {
  static const String tfType = 'aws_cloudwatch_metric_stream';

  AwsCloudwatchMetricStream({
    required super.localName,
    required TfArg<String> firehoseArn,
    TfArg<bool>? includeLinkedAccountsMetrics,
    CloudwatchMetricStreamName? name,
    required TfArg<CloudwatchMetricStreamOutputFormat> outputFormat,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    CloudwatchMetricStreamFilter? filter,
    List<CloudwatchMetricStreamStatisticsConfiguration>?
    statisticsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firehose_arn': firehoseArn,
           if (includeLinkedAccountsMetrics != null)
             'include_linked_accounts_metrics': includeLinkedAccountsMetrics,
           ...?name?.argMap,
           'output_format': outputFormat,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           ...?filter?.argMap,
           if (statisticsConfiguration != null)
             'statistics_configuration': TfArg.literal([
               for (final e in statisticsConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchMetricStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchMetricStream>`.
  RefTo<AwsCloudwatchMetricStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `last_update_date` attribute.
  TfRef<String> get lastUpdateDate =>
      TfRef.attribute<String>(this, 'last_update_date');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
