// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_scheduled_query_rules_alert_v2`.
const Set<String> _azurermMonitorScheduledQueryRulesAlertV2Sensitive =
    <String>{};

/// Monitor Scheduled Query Rules Alert V2 Evaluation enum for `evaluation_frequency`.
extension type const MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertV2EvaluationFrequency.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertV2EvaluationFrequency.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertV2EvaluationFrequency.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pt1m = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT1M'),
  );
  static const pt5m = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT5M'),
  );
  static const pt10m = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT10M'),
  );
  static const pt15m = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT15M'),
  );
  static const pt30m = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT30M'),
  );
  static const pt45m = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT45M'),
  );
  static const pt1h = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT1H'),
  );
  static const pt2h = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT2H'),
  );
  static const pt3h = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT3H'),
  );
  static const pt4h = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT4H'),
  );
  static const pt5h = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT5H'),
  );
  static const pt6h = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('PT6H'),
  );
  static const p1d = MonitorScheduledQueryRulesAlertV2EvaluationFrequency._(
    TfArgLiteral('P1D'),
  );

  static const List<MonitorScheduledQueryRulesAlertV2EvaluationFrequency>
  values = [
    pt1m,
    pt5m,
    pt10m,
    pt15m,
    pt30m,
    pt45m,
    pt1h,
    pt2h,
    pt3h,
    pt4h,
    pt5h,
    pt6h,
    p1d,
  ];
}

/// Monitor Scheduled Query Rules Alert V2 Mute Actions After Alert enum for `mute_actions_after_alert_duration`.
extension type const MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pt5m =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT5M'),
      );
  static const pt10m =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT10M'),
      );
  static const pt15m =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT15M'),
      );
  static const pt30m =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT30M'),
      );
  static const pt45m =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT45M'),
      );
  static const pt1h =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT1H'),
      );
  static const pt2h =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT2H'),
      );
  static const pt3h =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT3H'),
      );
  static const pt4h =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT4H'),
      );
  static const pt5h =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT5H'),
      );
  static const pt6h =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('PT6H'),
      );
  static const p1d =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('P1D'),
      );
  static const p2d =
      MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration._(
        TfArgLiteral('P2D'),
      );

  static const List<
    MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration
  >
  values = [
    pt5m,
    pt10m,
    pt15m,
    pt30m,
    pt45m,
    pt1h,
    pt2h,
    pt3h,
    pt4h,
    pt5h,
    pt6h,
    p1d,
    p2d,
  ];
}

/// Monitor Scheduled Query Rules Alert V2 Query Time Range enum for `query_time_range_override`.
extension type const MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pt5m = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT5M'),
  );
  static const pt10m =
      MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
        TfArgLiteral('PT10M'),
      );
  static const pt15m =
      MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
        TfArgLiteral('PT15M'),
      );
  static const pt20m =
      MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
        TfArgLiteral('PT20M'),
      );
  static const pt30m =
      MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
        TfArgLiteral('PT30M'),
      );
  static const pt45m =
      MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
        TfArgLiteral('PT45M'),
      );
  static const pt1h = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT1H'),
  );
  static const pt2h = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT2H'),
  );
  static const pt3h = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT3H'),
  );
  static const pt4h = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT4H'),
  );
  static const pt5h = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT5H'),
  );
  static const pt6h = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('PT6H'),
  );
  static const p1d = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('P1D'),
  );
  static const p2d = MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride._(
    TfArgLiteral('P2D'),
  );

  static const List<MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride>
  values = [
    pt5m,
    pt10m,
    pt15m,
    pt20m,
    pt30m,
    pt45m,
    pt1h,
    pt2h,
    pt3h,
    pt4h,
    pt5h,
    pt6h,
    p1d,
    p2d,
  ];
}

/// Monitor Scheduled Query Rules Alert V2 Window enum for `window_duration`.
extension type const MonitorScheduledQueryRulesAlertV2WindowDuration._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertV2WindowDuration.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertV2WindowDuration.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertV2WindowDuration.arg(TfArg<String> arg)
    : this._(arg);

  static const pt1m = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT1M'),
  );
  static const pt5m = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT5M'),
  );
  static const pt10m = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT10M'),
  );
  static const pt15m = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT15M'),
  );
  static const pt30m = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT30M'),
  );
  static const pt45m = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT45M'),
  );
  static const pt1h = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT1H'),
  );
  static const pt2h = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT2H'),
  );
  static const pt3h = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT3H'),
  );
  static const pt4h = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT4H'),
  );
  static const pt5h = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT5H'),
  );
  static const pt6h = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('PT6H'),
  );
  static const p1d = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('P1D'),
  );
  static const p2d = MonitorScheduledQueryRulesAlertV2WindowDuration._(
    TfArgLiteral('P2D'),
  );

  static const List<MonitorScheduledQueryRulesAlertV2WindowDuration> values = [
    pt1m,
    pt5m,
    pt10m,
    pt15m,
    pt30m,
    pt45m,
    pt1h,
    pt2h,
    pt3h,
    pt4h,
    pt5h,
    pt6h,
    p1d,
    p2d,
  ];
}

/// Typed helper for the `action` block of
/// `azurerm_monitor_scheduled_query_rules_alert_v2` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertV2Action {
  const MonitorScheduledQueryRulesAlertV2Action({
    this.actionGroups,
    this.customProperties,
    this.emailSubject,
  });

  final TfArg<List<String>>? actionGroups;

  final TfArg<Map<String, String>>? customProperties;

  final TfArg<String>? emailSubject;

  @internal
  Map<String, Object?> encode() => {
    'action_groups': ?actionGroups?.toTfJson(),
    'custom_properties': ?customProperties?.toTfJson(),
    'email_subject': ?emailSubject?.toTfJson(),
  };
}

/// Typed helper for the `criteria` block of
/// `azurerm_monitor_scheduled_query_rules_alert_v2` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertV2Criteria {
  const MonitorScheduledQueryRulesAlertV2Criteria({
    this.metricMeasureColumn,
    required this.operator,
    required this.query,
    this.resourceIdColumn,
    required this.threshold,
    required this.timeAggregationMethod,
    this.dimension,
    this.failingPeriods,
  });

  final TfArg<String>? metricMeasureColumn;

  final TfArg<String> operator;

  final TfArg<String> query;

  final TfArg<String>? resourceIdColumn;

  final TfArg<num> threshold;

  final MonitorScheduledQueryRulesAlertV2TimeAggregationMethod
  timeAggregationMethod;

  final List<MonitorScheduledQueryRulesAlertV2Dimension>? dimension;

  final MonitorScheduledQueryRulesAlertV2FailingPeriods? failingPeriods;

  @internal
  Map<String, Object?> encode() => {
    'metric_measure_column': ?metricMeasureColumn?.toTfJson(),
    'operator': operator.toTfJson(),
    'query': query.toTfJson(),
    'resource_id_column': ?resourceIdColumn?.toTfJson(),
    'threshold': threshold.toTfJson(),
    'time_aggregation_method': timeAggregationMethod.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
    'failing_periods': ?failingPeriods?.encode(),
  };
}

/// `time_aggregation_method` — derived from the provider schema description.
extension type const MonitorScheduledQueryRulesAlertV2TimeAggregationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertV2TimeAggregationMethod.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertV2TimeAggregationMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertV2TimeAggregationMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const average =
      MonitorScheduledQueryRulesAlertV2TimeAggregationMethod._(
        TfArgLiteral('Average'),
      );
  static const count = MonitorScheduledQueryRulesAlertV2TimeAggregationMethod._(
    TfArgLiteral('Count'),
  );
  static const maximum =
      MonitorScheduledQueryRulesAlertV2TimeAggregationMethod._(
        TfArgLiteral('Maximum'),
      );
  static const minimum =
      MonitorScheduledQueryRulesAlertV2TimeAggregationMethod._(
        TfArgLiteral('Minimum'),
      );
  static const total = MonitorScheduledQueryRulesAlertV2TimeAggregationMethod._(
    TfArgLiteral('Total'),
  );

  static const List<MonitorScheduledQueryRulesAlertV2TimeAggregationMethod>
  values = [average, count, maximum, minimum, total];
}

/// Typed helper for the `criteria.dimension` block of
/// `azurerm_monitor_scheduled_query_rules_alert_v2` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertV2Dimension {
  const MonitorScheduledQueryRulesAlertV2Dimension({
    required this.name,
    required this.operator,
    required this.values,
  });

  final TfArg<String> name;

  final MonitorScheduledQueryRulesAlertV2Operator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const MonitorScheduledQueryRulesAlertV2Operator._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorScheduledQueryRulesAlertV2Operator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorScheduledQueryRulesAlertV2Operator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorScheduledQueryRulesAlertV2Operator.arg(TfArg<String> arg)
    : this._(arg);

  static const exclude = MonitorScheduledQueryRulesAlertV2Operator._(
    TfArgLiteral('Exclude'),
  );
  static const include = MonitorScheduledQueryRulesAlertV2Operator._(
    TfArgLiteral('Include'),
  );

  static const List<MonitorScheduledQueryRulesAlertV2Operator> values = [
    exclude,
    include,
  ];
}

/// Typed helper for the `criteria.failing_periods` block of
/// `azurerm_monitor_scheduled_query_rules_alert_v2` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertV2FailingPeriods {
  const MonitorScheduledQueryRulesAlertV2FailingPeriods({
    required this.minimumFailingPeriodsToTriggerAlert,
    required this.numberOfEvaluationPeriods,
  });

  final TfArg<num> minimumFailingPeriodsToTriggerAlert;

  final TfArg<num> numberOfEvaluationPeriods;

  @internal
  Map<String, Object?> encode() => {
    'minimum_failing_periods_to_trigger_alert':
        minimumFailingPeriodsToTriggerAlert.toTfJson(),
    'number_of_evaluation_periods': numberOfEvaluationPeriods.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_monitor_scheduled_query_rules_alert_v2` (derived from provider schema).
@immutable
final class MonitorScheduledQueryRulesAlertV2Identity {
  const MonitorScheduledQueryRulesAlertV2Identity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_monitor_scheduled_query_rules_alert_v2`.
final class AzurermMonitorScheduledQueryRulesAlertV2 extends Resource {
  static const String tfType = 'azurerm_monitor_scheduled_query_rules_alert_v2';

  AzurermMonitorScheduledQueryRulesAlertV2(
    super.localName, {
    TfArg<bool>? autoMitigationEnabled,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enabled,
    required MonitorScheduledQueryRulesAlertV2EvaluationFrequency
    evaluationFrequency,
    required TfArg<String> location,
    MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration?
    muteActionsAfterAlertDuration,
    required TfArg<String> name,
    MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride?
    queryTimeRangeOverride,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopes,
    required TfArg<num> severity,
    TfArg<bool>? skipQueryValidation,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? targetResourceTypes,
    required MonitorScheduledQueryRulesAlertV2WindowDuration windowDuration,
    TfArg<bool>? workspaceAlertsStorageEnabled,
    MonitorScheduledQueryRulesAlertV2Action? action,
    required List<MonitorScheduledQueryRulesAlertV2Criteria> criteria,
    MonitorScheduledQueryRulesAlertV2Identity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_mitigation_enabled': ?autoMitigationEnabled,
           'description': ?description,
           'display_name': ?displayName,
           'enabled': ?enabled,
           'evaluation_frequency': evaluationFrequency,
           'location': location,
           'mute_actions_after_alert_duration': ?muteActionsAfterAlertDuration,
           'name': name,
           'query_time_range_override': ?queryTimeRangeOverride,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scopes': scopes,
           'severity': severity,
           'skip_query_validation': ?skipQueryValidation,
           'tags': ?tags,
           'target_resource_types': ?targetResourceTypes,
           'window_duration': windowDuration,
           'workspace_alerts_storage_enabled': ?workspaceAlertsStorageEnabled,
           if (action != null) 'action': TfArg.literal(action.encode()),
           'criteria': TfArg.literal([for (final e in criteria) e.encode()]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorScheduledQueryRulesAlertV2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorScheduledQueryRulesAlertV2>`.
  RefTo<AzurermMonitorScheduledQueryRulesAlertV2> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_with_api_version` attribute.
  TfRef<String> get createdWithApiVersion =>
      TfRef.attribute<String>(this, 'created_with_api_version');

  /// Reference to `is_a_legacy_log_analytics_rule` attribute.
  TfRef<bool> get isALegacyLogAnalyticsRule =>
      TfRef.attribute<bool>(this, 'is_a_legacy_log_analytics_rule');

  /// Reference to `is_workspace_alerts_storage_configured` attribute.
  TfRef<bool> get isWorkspaceAlertsStorageConfigured =>
      TfRef.attribute<bool>(this, 'is_workspace_alerts_storage_configured');

  /// Reference to `auto_mitigation_enabled` attribute.
  TfRef<bool> get autoMitigationEnabled =>
      TfRef.attribute<bool>(this, 'auto_mitigation_enabled');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `evaluation_frequency` attribute.
  TfRef<String> get evaluationFrequency =>
      TfRef.attribute<String>(this, 'evaluation_frequency');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mute_actions_after_alert_duration` attribute.
  TfRef<String> get muteActionsAfterAlertDuration =>
      TfRef.attribute<String>(this, 'mute_actions_after_alert_duration');

  /// Reference to `query_time_range_override` attribute.
  TfRef<String> get queryTimeRangeOverride =>
      TfRef.attribute<String>(this, 'query_time_range_override');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `severity` attribute.
  TfRef<num> get severity => TfRef.attribute<num>(this, 'severity');

  /// Reference to `skip_query_validation` attribute.
  TfRef<bool> get skipQueryValidation =>
      TfRef.attribute<bool>(this, 'skip_query_validation');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_resource_types` attribute.
  TfRef<List<String>> get targetResourceTypes =>
      TfRef.attribute<List<String>>(this, 'target_resource_types');

  /// Reference to `window_duration` attribute.
  TfRef<String> get windowDuration =>
      TfRef.attribute<String>(this, 'window_duration');

  /// Reference to `workspace_alerts_storage_enabled` attribute.
  TfRef<bool> get workspaceAlertsStorageEnabled =>
      TfRef.attribute<bool>(this, 'workspace_alerts_storage_enabled');
}
