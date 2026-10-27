// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_alert_processing_rule_suppression`.
const Set<String> _azurermMonitorAlertProcessingRuleSuppressionSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionCondition {
  const MonitorAlertProcessingRuleSuppressionCondition({
    this.alertContext,
    this.alertRuleId,
    this.alertRuleName,
    this.description,
    this.monitorCondition,
    this.monitorService,
    this.severity,
    this.signalType,
    this.targetResource,
    this.targetResourceGroup,
    this.targetResourceType,
  });

  final MonitorAlertProcessingRuleSuppressionAlertContext? alertContext;

  final MonitorAlertProcessingRuleSuppressionAlertRuleId? alertRuleId;

  final MonitorAlertProcessingRuleSuppressionAlertRuleName? alertRuleName;

  final MonitorAlertProcessingRuleSuppressionConditionDescription? description;

  final MonitorAlertProcessingRuleSuppressionMonitorCondition? monitorCondition;

  final MonitorAlertProcessingRuleSuppressionMonitorService? monitorService;

  final MonitorAlertProcessingRuleSuppressionSeverity? severity;

  final MonitorAlertProcessingRuleSuppressionSignalType? signalType;

  final MonitorAlertProcessingRuleSuppressionTargetResource? targetResource;

  final MonitorAlertProcessingRuleSuppressionTargetResourceGroup?
  targetResourceGroup;

  final MonitorAlertProcessingRuleSuppressionTargetResourceType?
  targetResourceType;

  @internal
  Map<String, Object?> encode() => {
    'alert_context': ?alertContext?.encode(),
    'alert_rule_id': ?alertRuleId?.encode(),
    'alert_rule_name': ?alertRuleName?.encode(),
    'description': ?description?.encode(),
    'monitor_condition': ?monitorCondition?.encode(),
    'monitor_service': ?monitorService?.encode(),
    'severity': ?severity?.encode(),
    'signal_type': ?signalType?.encode(),
    'target_resource': ?targetResource?.encode(),
    'target_resource_group': ?targetResourceGroup?.encode(),
    'target_resource_type': ?targetResourceType?.encode(),
  };
}

/// Typed helper for the `condition.alert_context` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionAlertContext {
  const MonitorAlertProcessingRuleSuppressionAlertContext({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.alert_rule_id` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionAlertRuleId {
  const MonitorAlertProcessingRuleSuppressionAlertRuleId({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.alert_rule_name` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionAlertRuleName {
  const MonitorAlertProcessingRuleSuppressionAlertRuleName({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.description` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionConditionDescription {
  const MonitorAlertProcessingRuleSuppressionConditionDescription({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.monitor_condition` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionMonitorCondition {
  const MonitorAlertProcessingRuleSuppressionMonitorCondition({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.monitor_service` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionMonitorService {
  const MonitorAlertProcessingRuleSuppressionMonitorService({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.severity` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionSeverity {
  const MonitorAlertProcessingRuleSuppressionSeverity({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.signal_type` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionSignalType {
  const MonitorAlertProcessingRuleSuppressionSignalType({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.target_resource` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionTargetResource {
  const MonitorAlertProcessingRuleSuppressionTargetResource({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.target_resource_group` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionTargetResourceGroup {
  const MonitorAlertProcessingRuleSuppressionTargetResourceGroup({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `condition.target_resource_type` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionTargetResourceType {
  const MonitorAlertProcessingRuleSuppressionTargetResourceType({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionSchedule {
  const MonitorAlertProcessingRuleSuppressionSchedule({
    this.effectiveFrom,
    this.effectiveUntil,
    this.timeZone,
    this.recurrence,
  });

  final TfArg<String>? effectiveFrom;

  final TfArg<String>? effectiveUntil;

  final TfArg<String>? timeZone;

  final MonitorAlertProcessingRuleSuppressionRecurrence? recurrence;

  @internal
  Map<String, Object?> encode() => {
    'effective_from': ?effectiveFrom?.toTfJson(),
    'effective_until': ?effectiveUntil?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
    'recurrence': ?recurrence?.encode(),
  };
}

/// Typed helper for the `schedule.recurrence` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionRecurrence {
  const MonitorAlertProcessingRuleSuppressionRecurrence({
    this.daily,
    this.monthly,
    this.weekly,
  });

  final List<MonitorAlertProcessingRuleSuppressionDaily>? daily;

  final List<MonitorAlertProcessingRuleSuppressionMonthly>? monthly;

  final List<MonitorAlertProcessingRuleSuppressionWeekly>? weekly;

  @internal
  Map<String, Object?> encode() => {
    if (daily != null) 'daily': [for (final e in daily!) e.encode()],
    if (monthly != null) 'monthly': [for (final e in monthly!) e.encode()],
    if (weekly != null) 'weekly': [for (final e in weekly!) e.encode()],
  };
}

/// Typed helper for the `schedule.recurrence.daily` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionDaily {
  const MonitorAlertProcessingRuleSuppressionDaily({
    required this.endTime,
    required this.startTime,
  });

  final TfArg<String> endTime;

  final TfArg<String> startTime;

  @internal
  Map<String, Object?> encode() => {
    'end_time': endTime.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `schedule.recurrence.monthly` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionMonthly {
  const MonitorAlertProcessingRuleSuppressionMonthly({
    required this.daysOfMonth,
    this.endTime,
    this.startTime,
  });

  final TfArg<List<num>> daysOfMonth;

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  @internal
  Map<String, Object?> encode() => {
    'days_of_month': daysOfMonth.toTfJson(),
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `schedule.recurrence.weekly` block of
/// `azurerm_monitor_alert_processing_rule_suppression` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleSuppressionWeekly {
  const MonitorAlertProcessingRuleSuppressionWeekly({
    required this.daysOfWeek,
    this.endTime,
    this.startTime,
  });

  final TfArg<List<String>> daysOfWeek;

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  @internal
  Map<String, Object?> encode() => {
    'days_of_week': daysOfWeek.toTfJson(),
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_monitor_alert_processing_rule_suppression`.
final class AzurermMonitorAlertProcessingRuleSuppression extends Resource {
  static const String tfType =
      'azurerm_monitor_alert_processing_rule_suppression';

  AzurermMonitorAlertProcessingRuleSuppression(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopes,
    TfArg<Map<String, String>>? tags,
    MonitorAlertProcessingRuleSuppressionCondition? condition,
    MonitorAlertProcessingRuleSuppressionSchedule? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enabled': ?enabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scopes': scopes,
           'tags': ?tags,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorAlertProcessingRuleSuppressionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorAlertProcessingRuleSuppression>`.
  RefTo<AzurermMonitorAlertProcessingRuleSuppression> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
