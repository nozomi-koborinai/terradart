// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_monitoring_subscription`.
const Set<String> _awsCloudfrontMonitoringSubscriptionSensitive = <String>{};

/// Typed helper for the `monitoring_subscription` block of
/// `aws_cloudfront_monitoring_subscription` (derived from provider schema).
@immutable
final class CloudfrontMonitoringSubscriptionMonitoringSubscription {
  const CloudfrontMonitoringSubscriptionMonitoringSubscription({
    required this.realtimeMetricsSubscriptionConfig,
  });

  final CloudfrontMonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig
  realtimeMetricsSubscriptionConfig;

  Map<String, Object?> encode() => {
    'realtime_metrics_subscription_config': realtimeMetricsSubscriptionConfig
        .encode(),
  };
}

/// Typed helper for the `monitoring_subscription.realtime_metrics_subscription_config` block of
/// `aws_cloudfront_monitoring_subscription` (derived from provider schema).
@immutable
final class CloudfrontMonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig {
  const CloudfrontMonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig({
    required this.realtimeMetricsSubscriptionStatus,
  });

  final TfArg<String> realtimeMetricsSubscriptionStatus;

  Map<String, Object?> encode() => {
    'realtime_metrics_subscription_status': realtimeMetricsSubscriptionStatus
        .toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_monitoring_subscription`.
final class AwsCloudfrontMonitoringSubscription extends Resource {
  static const String tfType = 'aws_cloudfront_monitoring_subscription';

  AwsCloudfrontMonitoringSubscription({
    required super.localName,
    required TfArg<String> distributionId,
    required CloudfrontMonitoringSubscriptionMonitoringSubscription
    monitoringSubscription,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'distribution_id': distributionId,
           'monitoring_subscription': TfArg.literal(
             monitoringSubscription.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontMonitoringSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
