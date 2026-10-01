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

  final List<PrometheusWorkspaceConfigurationLimits>? limits;

  @internal
  Map<String, Object?> encode() => {
    'label_set': labelSet.toTfJson(),
    if (limits != null) 'limits': [for (final e in limits!) e.encode()],
  };
}

/// Typed helper for the `limits_per_label_set.limits` block of
/// `aws_prometheus_workspace_configuration` (derived from provider schema).
@immutable
final class PrometheusWorkspaceConfigurationLimits {
  const PrometheusWorkspaceConfigurationLimits({required this.maxSeries});

  final TfArg<num> maxSeries;

  @internal
  Map<String, Object?> encode() => {'max_series': maxSeries.toTfJson()};
}

/// Factory wrapper for `aws_prometheus_workspace_configuration`.
final class AwsPrometheusWorkspaceConfiguration extends Resource {
  static const String tfType = 'aws_prometheus_workspace_configuration';

  AwsPrometheusWorkspaceConfiguration(
    super.localName, {
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
           'out_of_order_time_window_in_seconds':
               ?outOfOrderTimeWindowInSeconds,
           'region': ?region,
           'retention_period_in_days': ?retentionPeriodInDays,
           'rule_query_offset_in_seconds': ?ruleQueryOffsetInSeconds,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPrometheusWorkspaceConfiguration>`.
  RefTo<AwsPrometheusWorkspaceConfiguration> get ref => RefTo.of(this);

  /// Reference to `out_of_order_time_window_in_seconds` attribute.
  TfRef<num> get outOfOrderTimeWindowInSeconds =>
      TfRef.attribute<num>(this, 'out_of_order_time_window_in_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_period_in_days` attribute.
  TfRef<num> get retentionPeriodInDays =>
      TfRef.attribute<num>(this, 'retention_period_in_days');

  /// Reference to `rule_query_offset_in_seconds` attribute.
  TfRef<num> get ruleQueryOffsetInSeconds =>
      TfRef.attribute<num>(this, 'rule_query_offset_in_seconds');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
