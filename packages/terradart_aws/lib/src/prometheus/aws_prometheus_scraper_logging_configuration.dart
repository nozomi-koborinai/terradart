// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_prometheus_scraper_logging_configuration`.
const Set<String> _awsPrometheusScraperLoggingConfigurationSensitive =
    <String>{};

/// Prometheus Scraper Logging Configuration Scraper enum for `scraper_components`.
enum PrometheusScraperLoggingConfigurationScraperComponents
    implements TerraformEnum {
  serviceDiscovery('SERVICE_DISCOVERY'),
  collector('COLLECTOR'),
  exporter('EXPORTER');

  const PrometheusScraperLoggingConfigurationScraperComponents(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_destination` block of
/// `aws_prometheus_scraper_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusScraperLoggingConfigurationLoggingDestination {
  const PrometheusScraperLoggingConfigurationLoggingDestination({
    this.cloudwatchLogs,
  });

  final List<PrometheusScraperLoggingConfigurationCloudwatchLogs>?
  cloudwatchLogs;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null)
      'cloudwatch_logs': [for (final e in cloudwatchLogs!) e.encode()],
  };
}

/// Typed helper for the `logging_destination.cloudwatch_logs` block of
/// `aws_prometheus_scraper_logging_configuration` (derived from provider schema).
@immutable
final class PrometheusScraperLoggingConfigurationCloudwatchLogs {
  const PrometheusScraperLoggingConfigurationCloudwatchLogs({
    required this.logGroupArn,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  Map<String, Object?> encode() => {
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_prometheus_scraper_logging_configuration`.
final class AwsPrometheusScraperLoggingConfiguration extends Resource {
  static const String tfType = 'aws_prometheus_scraper_logging_configuration';

  AwsPrometheusScraperLoggingConfiguration({
    required super.localName,
    TfArg<String>? region,
    List<TfArg<PrometheusScraperLoggingConfigurationScraperComponents>>?
    scraperComponents,
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
           'region': ?region,
           if (scraperComponents != null)
             'scraper_components': TfArg.literal([
               for (final e in scraperComponents) e.toTfJson(),
             ]),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusScraperLoggingConfiguration>`.
  RefTo<AwsPrometheusScraperLoggingConfiguration> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `scraper_components` attribute.
  TfRef<List<String>> get scraperComponentsRef =>
      TfRef.attribute<List<String>>(this, 'scraper_components');

  /// Reference to `scraper_id` attribute.
  TfRef<String> get scraperIdRef => TfRef.attribute<String>(this, 'scraper_id');
}
