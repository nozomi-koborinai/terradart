// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_metric_stream`.
const Set<String> _awsCloudwatchMetricStreamSensitive = <String>{};

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
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> outputFormat,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchMetricStreamExcludeFilter>? excludeFilter,
    List<CloudwatchMetricStreamIncludeFilter>? includeFilter,
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
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           'output_format': outputFormat,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (excludeFilter != null)
             'exclude_filter': TfArg.literal([
               for (final e in excludeFilter) e.encode(),
             ]),
           if (includeFilter != null)
             'include_filter': TfArg.literal([
               for (final e in includeFilter) e.encode(),
             ]),
           if (statisticsConfiguration != null)
             'statistics_configuration': TfArg.literal([
               for (final e in statisticsConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchMetricStreamSensitive;

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
