// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_network_performance_metric_subscription`.
const Set<String> _awsVpcNetworkPerformanceMetricSubscriptionSensitive =
    <String>{};

/// Vpc Network Performance Metric Subscription enum for `metric`.
extension type const VpcNetworkPerformanceMetricSubscriptionMetric._(
  TfArg<String> _
) implements TfArg<String> {
  VpcNetworkPerformanceMetricSubscriptionMetric.variable(String name)
    : this._(TfArg.variable(name));
  VpcNetworkPerformanceMetricSubscriptionMetric.expression(String template)
    : this._(TfArg.expression(template));
  const VpcNetworkPerformanceMetricSubscriptionMetric.arg(TfArg<String> arg)
    : this._(arg);

  static const aggregateLatency =
      VpcNetworkPerformanceMetricSubscriptionMetric._(
        TfArgLiteral('aggregate-latency'),
      );

  static const List<VpcNetworkPerformanceMetricSubscriptionMetric> values = [
    aggregateLatency,
  ];
}

/// Vpc Network Performance Metric Subscription enum for `statistic`.
extension type const VpcNetworkPerformanceMetricSubscriptionStatistic._(
  TfArg<String> _
) implements TfArg<String> {
  VpcNetworkPerformanceMetricSubscriptionStatistic.variable(String name)
    : this._(TfArg.variable(name));
  VpcNetworkPerformanceMetricSubscriptionStatistic.expression(String template)
    : this._(TfArg.expression(template));
  const VpcNetworkPerformanceMetricSubscriptionStatistic.arg(TfArg<String> arg)
    : this._(arg);

  static const p50 = VpcNetworkPerformanceMetricSubscriptionStatistic._(
    TfArgLiteral('p50'),
  );

  static const List<VpcNetworkPerformanceMetricSubscriptionStatistic> values = [
    p50,
  ];
}

/// Factory wrapper for `aws_vpc_network_performance_metric_subscription`.
final class AwsVpcNetworkPerformanceMetricSubscription extends Resource {
  static const String tfType =
      'aws_vpc_network_performance_metric_subscription';

  AwsVpcNetworkPerformanceMetricSubscription(
    super.localName, {
    required TfArg<String> destination,
    VpcNetworkPerformanceMetricSubscriptionMetric? metric,
    TfArg<String>? region,
    required TfArg<String> source,
    VpcNetworkPerformanceMetricSubscriptionStatistic? statistic,
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
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `metric` attribute.
  TfRef<String> get metric => TfRef.attribute<String>(this, 'metric');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `statistic` attribute.
  TfRef<String> get statistic => TfRef.attribute<String>(this, 'statistic');
}
