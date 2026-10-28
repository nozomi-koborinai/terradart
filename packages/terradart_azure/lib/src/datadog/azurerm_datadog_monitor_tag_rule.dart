// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_datadog_monitor_tag_rule`.
const Set<String> _azurermDatadogMonitorTagRuleSensitive = <String>{};

/// Typed helper for the `log` block of
/// `azurerm_datadog_monitor_tag_rule` (derived from provider schema).
@immutable
final class DatadogMonitorTagRuleLog {
  const DatadogMonitorTagRuleLog({
    this.aadLogEnabled,
    this.resourceLogEnabled,
    this.subscriptionLogEnabled,
    this.filter,
  });

  final TfArg<bool>? aadLogEnabled;

  final TfArg<bool>? resourceLogEnabled;

  final TfArg<bool>? subscriptionLogEnabled;

  final List<DatadogMonitorTagRuleFilter>? filter;

  @internal
  Map<String, Object?> encode() => {
    'aad_log_enabled': ?aadLogEnabled?.toTfJson(),
    'resource_log_enabled': ?resourceLogEnabled?.toTfJson(),
    'subscription_log_enabled': ?subscriptionLogEnabled?.toTfJson(),
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `log.filter` block of
/// `azurerm_datadog_monitor_tag_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatadogMonitorTagRuleFilter {
  const DatadogMonitorTagRuleFilter({
    required this.action,
    required this.name,
    required this.value,
  });

  final DatadogMonitorTagRuleAction action;

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const DatadogMonitorTagRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  DatadogMonitorTagRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  DatadogMonitorTagRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const DatadogMonitorTagRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const exclude = DatadogMonitorTagRuleAction._(TfArgLiteral('Exclude'));
  static const include = DatadogMonitorTagRuleAction._(TfArgLiteral('Include'));

  static const List<DatadogMonitorTagRuleAction> values = [exclude, include];
}

/// Typed helper for the `metric` block of
/// `azurerm_datadog_monitor_tag_rule` (derived from provider schema).
@immutable
final class DatadogMonitorTagRuleMetric {
  const DatadogMonitorTagRuleMetric({this.filter});

  final List<DatadogMonitorTagRuleFilter>? filter;

  @internal
  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_datadog_monitor_tag_rule`.
final class AzurermDatadogMonitorTagRule extends Resource {
  static const String tfType = 'azurerm_datadog_monitor_tag_rule';

  AzurermDatadogMonitorTagRule(
    super.localName, {
    required TfArg<String> datadogMonitorId,
    TfArg<String>? name,
    List<DatadogMonitorTagRuleLog>? log,
    List<DatadogMonitorTagRuleMetric>? metric,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'datadog_monitor_id': datadogMonitorId,
           'name': ?name,
           if (log != null)
             'log': TfArg.literal([for (final e in log) e.encode()]),
           if (metric != null)
             'metric': TfArg.literal([for (final e in metric) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDatadogMonitorTagRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatadogMonitorTagRule>`.
  RefTo<AzurermDatadogMonitorTagRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `datadog_monitor_id` attribute.
  TfRef<String> get datadogMonitorId =>
      TfRef.attribute<String>(this, 'datadog_monitor_id');
}
