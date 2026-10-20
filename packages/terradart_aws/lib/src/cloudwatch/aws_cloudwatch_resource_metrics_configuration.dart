// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_resource_metrics_configuration`.
const Set<String> _awsCloudwatchResourceMetricsConfigurationSensitive =
    <String>{};

/// Typed helper for the `metric_selection` block of
/// `aws_cloudwatch_resource_metrics_configuration` (derived from provider schema).
@immutable
final class CloudwatchResourceMetricsConfigurationMetricSelection {
  const CloudwatchResourceMetricsConfigurationMetricSelection({
    required this.includeMetrics,
  });

  final TfArg<List<String>> includeMetrics;

  @internal
  Map<String, Object?> encode() => {
    'include_metrics': includeMetrics.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_resource_metrics_configuration`.
final class AwsCloudwatchResourceMetricsConfiguration extends Resource {
  static const String tfType = 'aws_cloudwatch_resource_metrics_configuration';

  AwsCloudwatchResourceMetricsConfiguration(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    List<CloudwatchResourceMetricsConfigurationMetricSelection>?
    metricSelection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'resource_arn': resourceArn,
           if (metricSelection != null)
             'metric_selection': TfArg.literal([
               for (final e in metricSelection) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchResourceMetricsConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchResourceMetricsConfiguration>`.
  RefTo<AwsCloudwatchResourceMetricsConfiguration> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
