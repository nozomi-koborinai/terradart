// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_alert_prometheus_rule_group`.
const Set<String> _azurermMonitorAlertPrometheusRuleGroupSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `azurerm_monitor_alert_prometheus_rule_group` (derived from provider schema).
@immutable
final class MonitorAlertPrometheusRuleGroupRule {
  const MonitorAlertPrometheusRuleGroupRule({
    this.alert,
    this.annotations,
    this.enabled,
    required this.expression,
    this.forCase,
    this.labels,
    this.record,
    this.severity,
    this.action,
    this.alertResolution,
  });

  final TfArg<String>? alert;

  final TfArg<Map<String, String>>? annotations;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final TfArg<String>? forCase;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? record;

  final TfArg<num>? severity;

  final List<MonitorAlertPrometheusRuleGroupAction>? action;

  final MonitorAlertPrometheusRuleGroupAlertResolution? alertResolution;

  @internal
  Map<String, Object?> encode() => {
    'alert': ?alert?.toTfJson(),
    'annotations': ?annotations?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'for': ?forCase?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'record': ?record?.toTfJson(),
    'severity': ?severity?.toTfJson(),
    if (action != null) 'action': [for (final e in action!) e.encode()],
    'alert_resolution': ?alertResolution?.encode(),
  };
}

/// Typed helper for the `rule.action` block of
/// `azurerm_monitor_alert_prometheus_rule_group` (derived from provider schema).
@immutable
final class MonitorAlertPrometheusRuleGroupAction {
  const MonitorAlertPrometheusRuleGroupAction({
    required this.actionGroupId,
    this.actionProperties,
  });

  final TfArg<String> actionGroupId;

  final TfArg<Map<String, String>>? actionProperties;

  @internal
  Map<String, Object?> encode() => {
    'action_group_id': actionGroupId.toTfJson(),
    'action_properties': ?actionProperties?.toTfJson(),
  };
}

/// Typed helper for the `rule.alert_resolution` block of
/// `azurerm_monitor_alert_prometheus_rule_group` (derived from provider schema).
@immutable
final class MonitorAlertPrometheusRuleGroupAlertResolution {
  const MonitorAlertPrometheusRuleGroupAlertResolution({
    this.autoResolved,
    this.timeToResolve,
  });

  final TfArg<bool>? autoResolved;

  final TfArg<String>? timeToResolve;

  @internal
  Map<String, Object?> encode() => {
    'auto_resolved': ?autoResolved?.toTfJson(),
    'time_to_resolve': ?timeToResolve?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_monitor_alert_prometheus_rule_group`.
final class AzurermMonitorAlertPrometheusRuleGroup extends Resource {
  static const String tfType = 'azurerm_monitor_alert_prometheus_rule_group';

  AzurermMonitorAlertPrometheusRuleGroup(
    super.localName, {
    TfArg<String>? clusterName,
    TfArg<String>? description,
    TfArg<String>? interval,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? ruleGroupEnabled,
    required TfArg<List<String>> scopes,
    TfArg<Map<String, String>>? tags,
    required List<MonitorAlertPrometheusRuleGroupRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': ?clusterName,
           'description': ?description,
           'interval': ?interval,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'rule_group_enabled': ?ruleGroupEnabled,
           'scopes': scopes,
           'tags': ?tags,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorAlertPrometheusRuleGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorAlertPrometheusRuleGroup>`.
  RefTo<AzurermMonitorAlertPrometheusRuleGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `interval` attribute.
  TfRef<String> get interval => TfRef.attribute<String>(this, 'interval');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `rule_group_enabled` attribute.
  TfRef<bool> get ruleGroupEnabled =>
      TfRef.attribute<bool>(this, 'rule_group_enabled');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
