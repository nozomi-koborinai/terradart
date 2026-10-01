// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

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

  final List<PrometheusQueryLoggingConfigurationCloudwatchLogs>? cloudwatchLogs;

  final List<PrometheusQueryLoggingConfigurationFilters>? filters;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null)
      'cloudwatch_logs': [for (final e in cloudwatchLogs!) e.encode()],
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `destination.cloudwatch_logs` block of
/// `aws_prometheus_query_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusQueryLoggingConfigurationCloudwatchLogs {
  const PrometheusQueryLoggingConfigurationCloudwatchLogs({
    required this.logGroupArn,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  Map<String, Object?> encode() => {
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `destination.filters` block of
/// `aws_prometheus_query_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusQueryLoggingConfigurationFilters {
  const PrometheusQueryLoggingConfigurationFilters({
    required this.qspThreshold,
  });

  final TfArg<num> qspThreshold;

  Map<String, Object?> encode() => {'qsp_threshold': qspThreshold.toTfJson()};
}

/// Factory wrapper for `aws_prometheus_query_logging_configuration`.
final class AwsPrometheusQueryLoggingConfiguration extends Resource {
  static const String tfType = 'aws_prometheus_query_logging_configuration';

  AwsPrometheusQueryLoggingConfiguration(
    super.localName, {
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
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusQueryLoggingConfiguration>`.
  RefTo<AwsPrometheusQueryLoggingConfiguration> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
