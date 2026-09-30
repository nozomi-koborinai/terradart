// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_network_performance_metric_subscription`.
const Set<String> _awsVpcNetworkPerformanceMetricSubscriptionSensitive =
    <String>{};

/// Vpc Network Performance Metric Subscription enum for `metric`.
enum VpcNetworkPerformanceMetricSubscriptionMetric implements TerraformEnum {
  aggregateLatency('aggregate-latency');

  const VpcNetworkPerformanceMetricSubscriptionMetric(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpc Network Performance Metric Subscription enum for `statistic`.
enum VpcNetworkPerformanceMetricSubscriptionStatistic implements TerraformEnum {
  p50('p50');

  const VpcNetworkPerformanceMetricSubscriptionStatistic(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpc_network_performance_metric_subscription`.
final class AwsVpcNetworkPerformanceMetricSubscription extends Resource {
  static const String tfType =
      'aws_vpc_network_performance_metric_subscription';

  AwsVpcNetworkPerformanceMetricSubscription({
    required super.localName,
    required TfArg<String> destination,
    TfArg<VpcNetworkPerformanceMetricSubscriptionMetric>? metric,
    TfArg<String>? region,
    required TfArg<String> source,
    TfArg<VpcNetworkPerformanceMetricSubscriptionStatistic>? statistic,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination': destination,
           'metric': ?metric,
           'region': ?region,
           'source': source,
           'statistic': ?statistic,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcNetworkPerformanceMetricSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcNetworkPerformanceMetricSubscription>`.
  RefTo<AwsVpcNetworkPerformanceMetricSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `period` attribute.
  TfRef<String> get period => TfRef.attribute<String>(this, 'period');

  /// Reference to `destination` attribute.
  TfRef<String> get destinationRef =>
      TfRef.attribute<String>(this, 'destination');

  /// Reference to `metric` attribute.
  TfRef<String> get metricRef => TfRef.attribute<String>(this, 'metric');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source` attribute.
  TfRef<String> get sourceRef => TfRef.attribute<String>(this, 'source');

  /// Reference to `statistic` attribute.
  TfRef<String> get statisticRef => TfRef.attribute<String>(this, 'statistic');
}
