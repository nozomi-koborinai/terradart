// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_workspace_configuration`.
const Set<String> _awsPrometheusWorkspaceConfigurationSensitive = <String>{};

/// Typed helper for the `limits_per_label_set` block of
/// `aws_prometheus_workspace_configuration` (derived from provider schema).
@immutable
final class PrometheusWorkspaceConfigurationLimitsPerLabelSet {
  const PrometheusWorkspaceConfigurationLimitsPerLabelSet({
    required this.labelSet,
    this.limits,
  });

  final TfArg<Map<String, String>> labelSet;

  final List<PrometheusWorkspaceConfigurationLimitsPerLabelSetLimits>? limits;

  Map<String, Object?> encode() => {
    'label_set': labelSet.toTfJson(),
    if (limits != null) 'limits': [for (final e in limits!) e.encode()],
  };
}

/// Typed helper for the `limits_per_label_set.limits` block of
/// `aws_prometheus_workspace_configuration` (derived from provider schema).
@immutable
final class PrometheusWorkspaceConfigurationLimitsPerLabelSetLimits {
  const PrometheusWorkspaceConfigurationLimitsPerLabelSetLimits({
    required this.maxSeries,
  });

  final TfArg<num> maxSeries;

  Map<String, Object?> encode() => {'max_series': maxSeries.toTfJson()};
}

/// Factory wrapper for `aws_prometheus_workspace_configuration`.
final class AwsPrometheusWorkspaceConfiguration extends Resource {
  static const String tfType = 'aws_prometheus_workspace_configuration';

  AwsPrometheusWorkspaceConfiguration({
    required super.localName,
    TfArg<num>? outOfOrderTimeWindowInSeconds,
    TfArg<String>? region,
    TfArg<num>? retentionPeriodInDays,
    TfArg<num>? ruleQueryOffsetInSeconds,
    required TfArg<String> workspaceId,
    List<PrometheusWorkspaceConfigurationLimitsPerLabelSet>? limitsPerLabelSet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (outOfOrderTimeWindowInSeconds != null)
             'out_of_order_time_window_in_seconds':
                 outOfOrderTimeWindowInSeconds,
           if (region != null) 'region': region,
           if (retentionPeriodInDays != null)
             'retention_period_in_days': retentionPeriodInDays,
           if (ruleQueryOffsetInSeconds != null)
             'rule_query_offset_in_seconds': ruleQueryOffsetInSeconds,
           'workspace_id': workspaceId,
           if (limitsPerLabelSet != null)
             'limits_per_label_set': TfArg.literal([
               for (final e in limitsPerLabelSet) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPrometheusWorkspaceConfigurationSensitive;
}
