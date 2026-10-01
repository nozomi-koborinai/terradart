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
final class CloudfrontMonitoringSubscription {
  const CloudfrontMonitoringSubscription({
    required this.realtimeMetricsSubscriptionConfig,
  });

  final CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionConfig
  realtimeMetricsSubscriptionConfig;

  Map<String, Object?> encode() => {
    'realtime_metrics_subscription_config': realtimeMetricsSubscriptionConfig
        .encode(),
  };
}

/// Typed helper for the `monitoring_subscription.realtime_metrics_subscription_config` block of
/// `aws_cloudfront_monitoring_subscription` (derived from provider schema).
@immutable
final class CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionConfig {
  const CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionConfig({
    required this.realtimeMetricsSubscriptionStatus,
  });

  final CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus
  realtimeMetricsSubscriptionStatus;

  Map<String, Object?> encode() => {
    'realtime_metrics_subscription_status': realtimeMetricsSubscriptionStatus
        .toTfJson(),
  };
}

/// `realtime_metrics_subscription_status` — derived from the provider schema description.
extension type const CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus.variable(
    String name,
  ) : this._(TfArg.variable(name));
  CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus._(
        TfArgLiteral('Enabled'),
      );
  static const disabled =
      CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus._(
        TfArgLiteral('Disabled'),
      );

  static const List<
    CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionStatus
  >
  values = [enabled, disabled];
}

/// Factory wrapper for `aws_cloudfront_monitoring_subscription`.
final class AwsCloudfrontMonitoringSubscription extends Resource {
  static const String tfType = 'aws_cloudfront_monitoring_subscription';

  AwsCloudfrontMonitoringSubscription(
    super.localName, {
    required TfArg<String> distributionId,
    required CloudfrontMonitoringSubscription monitoringSubscription,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontMonitoringSubscription>`.
  RefTo<AwsCloudfrontMonitoringSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `distribution_id` attribute.
  TfRef<String> get distributionId =>
      TfRef.attribute<String>(this, 'distribution_id');
}
