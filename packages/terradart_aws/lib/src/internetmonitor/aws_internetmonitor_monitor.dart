// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_internetmonitor_monitor`.
const Set<String> _awsInternetmonitorMonitorSensitive = <String>{};

/// Internetmonitor Monitor enum for `status`.
enum InternetmonitorMonitorStatus implements TerraformEnum {
  active('ACTIVE'),
  inactive('INACTIVE');

  const InternetmonitorMonitorStatus(this.terraformValue);
  @override
  final String terraformValue;
}

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
    'availability_score_threshold': ?availabilityScoreThreshold?.toTfJson(),
    'performance_score_threshold': ?performanceScoreThreshold?.toTfJson(),
  };
}

/// Typed helper for the `internet_measurements_log_delivery` block of
/// `aws_internetmonitor_monitor` (derived from provider schema).
@immutable
final class InternetmonitorMonitorInternetMeasurementsLogDelivery {
  const InternetmonitorMonitorInternetMeasurementsLogDelivery({this.s3Config});

  final InternetmonitorMonitorS3Config? s3Config;

  Map<String, Object?> encode() => {'s3_config': ?s3Config?.encode()};
}

/// Typed helper for the `internet_measurements_log_delivery.s3_config` block of
/// `aws_internetmonitor_monitor` (derived from provider schema).
@immutable
final class InternetmonitorMonitorS3Config {
  const InternetmonitorMonitorS3Config({
    required this.bucketName,
    this.bucketPrefix,
    this.logDeliveryStatus,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<InternetmonitorMonitorLogDeliveryStatus>? logDeliveryStatus;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'log_delivery_status': ?logDeliveryStatus?.toTfJson(),
  };
}

/// `log_delivery_status` — derived from the provider schema description.
enum InternetmonitorMonitorLogDeliveryStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const InternetmonitorMonitorLogDeliveryStatus(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<InternetmonitorMonitorStatus>? status,
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
           'max_city_networks_to_monitor': ?maxCityNetworksToMonitor,
           'monitor_name': monitorName,
           'region': ?region,
           'resources': ?resources,
           'status': ?status,
           'tags': ?tags,
           'traffic_percentage_to_monitor': ?trafficPercentageToMonitor,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsInternetmonitorMonitor>`.
  RefTo<AwsInternetmonitorMonitor> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `max_city_networks_to_monitor` attribute.
  TfRef<num> get maxCityNetworksToMonitor =>
      TfRef.attribute<num>(this, 'max_city_networks_to_monitor');

  /// Reference to `monitor_name` attribute.
  TfRef<String> get monitorName =>
      TfRef.attribute<String>(this, 'monitor_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resources` attribute.
  TfRef<List<String>> get resources =>
      TfRef.attribute<List<String>>(this, 'resources');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_percentage_to_monitor` attribute.
  TfRef<num> get trafficPercentageToMonitor =>
      TfRef.attribute<num>(this, 'traffic_percentage_to_monitor');
}
