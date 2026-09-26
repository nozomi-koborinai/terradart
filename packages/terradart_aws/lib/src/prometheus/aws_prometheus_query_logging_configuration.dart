// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_query_logging_configuration`.
const Set<String> _awsPrometheusQueryLoggingConfigurationSensitive = <String>{};

/// Typed helper for the `destination` block of
/// `aws_prometheus_query_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusQueryLoggingConfigurationDestination {
  const PrometheusQueryLoggingConfigurationDestination({
    this.cloudwatchLogs,
    this.filters,
  });

  final List<PrometheusQueryLoggingConfigurationDestinationCloudwatchLogs>?
  cloudwatchLogs;

  final List<PrometheusQueryLoggingConfigurationDestinationFilters>? filters;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null)
      'cloudwatch_logs': [for (final e in cloudwatchLogs!) e.encode()],
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `destination.cloudwatch_logs` block of
/// `aws_prometheus_query_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusQueryLoggingConfigurationDestinationCloudwatchLogs {
  const PrometheusQueryLoggingConfigurationDestinationCloudwatchLogs({
    required this.logGroupArn,
  });

  final TfArg<String> logGroupArn;

  Map<String, Object?> encode() => {'log_group_arn': logGroupArn.toTfJson()};
}

/// Typed helper for the `destination.filters` block of
/// `aws_prometheus_query_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusQueryLoggingConfigurationDestinationFilters {
  const PrometheusQueryLoggingConfigurationDestinationFilters({
    required this.qspThreshold,
  });

  final TfArg<num> qspThreshold;

  Map<String, Object?> encode() => {'qsp_threshold': qspThreshold.toTfJson()};
}

/// Factory wrapper for `aws_prometheus_query_logging_configuration`.
final class AwsPrometheusQueryLoggingConfiguration extends Resource {
  static const String tfType = 'aws_prometheus_query_logging_configuration';

  AwsPrometheusQueryLoggingConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> workspaceId,
    List<PrometheusQueryLoggingConfigurationDestination>? destination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'workspace_id': workspaceId,
           if (destination != null)
             'destination': TfArg.literal([
               for (final e in destination) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPrometheusQueryLoggingConfigurationSensitive;
}
