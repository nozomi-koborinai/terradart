// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_scraper_logging_configuration`.
const Set<String> _awsPrometheusScraperLoggingConfigurationSensitive =
    <String>{};

/// Typed helper for the `logging_destination` block of
/// `aws_prometheus_scraper_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusScraperLoggingConfigurationLoggingDestination {
  const PrometheusScraperLoggingConfigurationLoggingDestination({
    this.cloudwatchLogs,
  });

  final List<
    PrometheusScraperLoggingConfigurationLoggingDestinationCloudwatchLogs
  >?
  cloudwatchLogs;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null)
      'cloudwatch_logs': [for (final e in cloudwatchLogs!) e.encode()],
  };
}

/// Typed helper for the `logging_destination.cloudwatch_logs` block of
/// `aws_prometheus_scraper_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusScraperLoggingConfigurationLoggingDestinationCloudwatchLogs {
  const PrometheusScraperLoggingConfigurationLoggingDestinationCloudwatchLogs({
    required this.logGroupArn,
  });

  final TfArg<String> logGroupArn;

  Map<String, Object?> encode() => {'log_group_arn': logGroupArn.toTfJson()};
}

/// Factory wrapper for `aws_prometheus_scraper_logging_configuration`.
final class AwsPrometheusScraperLoggingConfiguration extends Resource {
  static const String tfType = 'aws_prometheus_scraper_logging_configuration';

  AwsPrometheusScraperLoggingConfiguration({
    required super.localName,
    TfArg<String>? region,
    TfArg<List<String>>? scraperComponents,
    required TfArg<String> scraperId,
    List<PrometheusScraperLoggingConfigurationLoggingDestination>?
    loggingDestination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (scraperComponents != null)
             'scraper_components': scraperComponents,
           'scraper_id': scraperId,
           if (loggingDestination != null)
             'logging_destination': TfArg.literal([
               for (final e in loggingDestination) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPrometheusScraperLoggingConfigurationSensitive;
}
