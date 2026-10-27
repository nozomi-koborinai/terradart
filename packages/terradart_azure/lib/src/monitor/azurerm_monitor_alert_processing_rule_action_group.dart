// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_alert_processing_rule_action_group`.
const Set<String> _azurermMonitorAlertProcessingRuleActionGroupSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupCondition {
  const MonitorAlertProcessingRuleActionGroupCondition({
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

  final MonitorAlertProcessingRuleActionGroupAlertContext? alertContext;

  final MonitorAlertProcessingRuleActionGroupAlertRuleId? alertRuleId;

  final MonitorAlertProcessingRuleActionGroupAlertRuleName? alertRuleName;

  final MonitorAlertProcessingRuleActionGroupConditionDescription? description;

  final MonitorAlertProcessingRuleActionGroupMonitorCondition? monitorCondition;

  final MonitorAlertProcessingRuleActionGroupMonitorService? monitorService;

  final MonitorAlertProcessingRuleActionGroupSeverity? severity;

  final MonitorAlertProcessingRuleActionGroupSignalType? signalType;

  final MonitorAlertProcessingRuleActionGroupTargetResource? targetResource;

  final MonitorAlertProcessingRuleActionGroupTargetResourceGroup?
  targetResourceGroup;

  final MonitorAlertProcessingRuleActionGroupTargetResourceType?
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupAlertContext {
  const MonitorAlertProcessingRuleActionGroupAlertContext({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupAlertRuleId {
  const MonitorAlertProcessingRuleActionGroupAlertRuleId({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupAlertRuleName {
  const MonitorAlertProcessingRuleActionGroupAlertRuleName({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupConditionDescription {
  const MonitorAlertProcessingRuleActionGroupConditionDescription({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupMonitorCondition {
  const MonitorAlertProcessingRuleActionGroupMonitorCondition({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupMonitorService {
  const MonitorAlertProcessingRuleActionGroupMonitorService({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupSeverity {
  const MonitorAlertProcessingRuleActionGroupSeverity({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupSignalType {
  const MonitorAlertProcessingRuleActionGroupSignalType({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupTargetResource {
  const MonitorAlertProcessingRuleActionGroupTargetResource({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupTargetResourceGroup {
  const MonitorAlertProcessingRuleActionGroupTargetResourceGroup({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupTargetResourceType {
  const MonitorAlertProcessingRuleActionGroupTargetResourceType({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupSchedule {
  const MonitorAlertProcessingRuleActionGroupSchedule({
    this.effectiveFrom,
    this.effectiveUntil,
    this.timeZone,
    this.recurrence,
  });

  final TfArg<String>? effectiveFrom;

  final TfArg<String>? effectiveUntil;

  final TfArg<String>? timeZone;

  final MonitorAlertProcessingRuleActionGroupRecurrence? recurrence;

  @internal
  Map<String, Object?> encode() => {
    'effective_from': ?effectiveFrom?.toTfJson(),
    'effective_until': ?effectiveUntil?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
    'recurrence': ?recurrence?.encode(),
  };
}

/// Typed helper for the `schedule.recurrence` block of
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupRecurrence {
  const MonitorAlertProcessingRuleActionGroupRecurrence({
    this.daily,
    this.monthly,
    this.weekly,
  });

  final List<MonitorAlertProcessingRuleActionGroupDaily>? daily;

  final List<MonitorAlertProcessingRuleActionGroupMonthly>? monthly;

  final List<MonitorAlertProcessingRuleActionGroupWeekly>? weekly;

  @internal
  Map<String, Object?> encode() => {
    if (daily != null) 'daily': [for (final e in daily!) e.encode()],
    if (monthly != null) 'monthly': [for (final e in monthly!) e.encode()],
    if (weekly != null) 'weekly': [for (final e in weekly!) e.encode()],
  };
}

/// Typed helper for the `schedule.recurrence.daily` block of
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupDaily {
  const MonitorAlertProcessingRuleActionGroupDaily({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupMonthly {
  const MonitorAlertProcessingRuleActionGroupMonthly({
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
/// `azurerm_monitor_alert_processing_rule_action_group` (derived from provider schema).
@immutable
final class MonitorAlertProcessingRuleActionGroupWeekly {
  const MonitorAlertProcessingRuleActionGroupWeekly({
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

/// Factory wrapper for `azurerm_monitor_alert_processing_rule_action_group`.
final class AzurermMonitorAlertProcessingRuleActionGroup extends Resource {
  static const String tfType =
      'azurerm_monitor_alert_processing_rule_action_group';

  AzurermMonitorAlertProcessingRuleActionGroup(
    super.localName, {
    required TfArg<List<String>> addActionGroupIds,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopes,
    TfArg<Map<String, String>>? tags,
    MonitorAlertProcessingRuleActionGroupCondition? condition,
    MonitorAlertProcessingRuleActionGroupSchedule? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'add_action_group_ids': addActionGroupIds,
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
      _azurermMonitorAlertProcessingRuleActionGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorAlertProcessingRuleActionGroup>`.
  RefTo<AzurermMonitorAlertProcessingRuleActionGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `add_action_group_ids` attribute.
  TfRef<List<String>> get addActionGroupIds =>
      TfRef.attribute<List<String>>(this, 'add_action_group_ids');

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
