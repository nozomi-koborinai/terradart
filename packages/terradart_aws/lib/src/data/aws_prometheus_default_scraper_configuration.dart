// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_default_scraper_configuration`.
const Set<String> _awsPrometheusDefaultScraperConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_prometheus_default_scraper_configuration`.
final class DataAwsPrometheusDefaultScraperConfiguration extends Data {
  static const String tfType = 'aws_prometheus_default_scraper_configuration';

  DataAwsPrometheusDefaultScraperConfiguration({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPrometheusDefaultScraperConfigurationSensitive;

  /// Reference to `configuration` attribute.
  TfRef<String> get configuration =>
      TfRef.attribute<String>(this, 'configuration');
}
