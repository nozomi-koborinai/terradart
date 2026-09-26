// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_internetmonitor_monitor`.
const Set<String> _awsInternetmonitorMonitorSensitive = <String>{};

/// Typed helper for the `health_events_config` block of
/// `aws_internetmonitor_monitor` (derived from provider schema).
@immutable
final class InternetmonitorMonitorHealthEventsConfig {
  const InternetmonitorMonitorHealthEventsConfig({
    this.availabilityScoreThreshold,
    this.performanceScoreThreshold,
  });

  final TfArg<num>? availabilityScoreThreshold;

  final TfArg<num>? performanceScoreThreshold;

  Map<String, Object?> encode() => {
    if (availabilityScoreThreshold != null)
      'availability_score_threshold': availabilityScoreThreshold!.toTfJson(),
    if (performanceScoreThreshold != null)
      'performance_score_threshold': performanceScoreThreshold!.toTfJson(),
  };
}

/// Typed helper for the `internet_measurements_log_delivery` block of
/// `aws_internetmonitor_monitor` (derived from provider schema).
@immutable
final class InternetmonitorMonitorInternetMeasurementsLogDelivery {
  const InternetmonitorMonitorInternetMeasurementsLogDelivery({this.s3Config});

  final InternetmonitorMonitorInternetMeasurementsLogDeliveryS3Config? s3Config;

  Map<String, Object?> encode() => {
    if (s3Config != null) 's3_config': s3Config!.encode(),
  };
}

/// Typed helper for the `internet_measurements_log_delivery.s3_config` block of
/// `aws_internetmonitor_monitor` (derived from provider schema).
@immutable
final class InternetmonitorMonitorInternetMeasurementsLogDeliveryS3Config {
  const InternetmonitorMonitorInternetMeasurementsLogDeliveryS3Config({
    required this.bucketName,
    this.bucketPrefix,
    this.logDeliveryStatus,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<String>? logDeliveryStatus;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (logDeliveryStatus != null)
      'log_delivery_status': logDeliveryStatus!.toTfJson(),
  };
}

/// Factory wrapper for `aws_internetmonitor_monitor`.
final class AwsInternetmonitorMonitor extends Resource {
  static const String tfType = 'aws_internetmonitor_monitor';

  AwsInternetmonitorMonitor({
    required super.localName,
    TfArg<num>? maxCityNetworksToMonitor,
    required TfArg<String> monitorName,
    TfArg<String>? region,
    TfArg<List<String>>? resources,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? trafficPercentageToMonitor,
    InternetmonitorMonitorHealthEventsConfig? healthEventsConfig,
    InternetmonitorMonitorInternetMeasurementsLogDelivery?
    internetMeasurementsLogDelivery,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxCityNetworksToMonitor != null)
             'max_city_networks_to_monitor': maxCityNetworksToMonitor,
           'monitor_name': monitorName,
           if (region != null) 'region': region,
           if (resources != null) 'resources': resources,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (trafficPercentageToMonitor != null)
             'traffic_percentage_to_monitor': trafficPercentageToMonitor,
           if (healthEventsConfig != null)
             'health_events_config': TfArg.literal(healthEventsConfig.encode()),
           if (internetMeasurementsLogDelivery != null)
             'internet_measurements_log_delivery': TfArg.literal(
               internetMeasurementsLogDelivery.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInternetmonitorMonitorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
