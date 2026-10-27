// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dynatrace_tag_rules`.
const Set<String> _azurermDynatraceTagRulesSensitive = <String>{};

/// Typed helper for the `log_rule` block of
/// `azurerm_dynatrace_tag_rules` (derived from provider schema).
@immutable
final class DynatraceTagRulesLogRule {
  const DynatraceTagRulesLogRule({
    this.sendActivityLogsEnabled,
    this.sendAzureActiveDirectoryLogsEnabled,
    this.sendSubscriptionLogsEnabled,
    this.filteringTag,
  });

  final TfArg<bool>? sendActivityLogsEnabled;

  final TfArg<bool>? sendAzureActiveDirectoryLogsEnabled;

  final TfArg<bool>? sendSubscriptionLogsEnabled;

  final List<DynatraceTagRulesFilteringTag>? filteringTag;

  @internal
  Map<String, Object?> encode() => {
    'send_activity_logs_enabled': ?sendActivityLogsEnabled?.toTfJson(),
    'send_azure_active_directory_logs_enabled':
        ?sendAzureActiveDirectoryLogsEnabled?.toTfJson(),
    'send_subscription_logs_enabled': ?sendSubscriptionLogsEnabled?.toTfJson(),
    if (filteringTag != null)
      'filtering_tag': [for (final e in filteringTag!) e.encode()],
  };
}

/// Typed helper for the `log_rule.filtering_tag` block of
/// `azurerm_dynatrace_tag_rules` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DynatraceTagRulesFilteringTag {
  const DynatraceTagRulesFilteringTag({
    required this.action,
    required this.name,
    required this.value,
  });

  final DynatraceTagRulesAction action;

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
extension type const DynatraceTagRulesAction._(TfArg<String> _)
    implements TfArg<String> {
  DynatraceTagRulesAction.variable(String name) : this._(TfArg.variable(name));
  DynatraceTagRulesAction.expression(String template)
    : this._(TfArg.expression(template));
  const DynatraceTagRulesAction.arg(TfArg<String> arg) : this._(arg);

  static const include = DynatraceTagRulesAction._(TfArgLiteral('Include'));
  static const exclude = DynatraceTagRulesAction._(TfArgLiteral('Exclude'));

  static const List<DynatraceTagRulesAction> values = [include, exclude];
}

/// Typed helper for the `metric_rule` block of
/// `azurerm_dynatrace_tag_rules` (derived from provider schema).
@immutable
final class DynatraceTagRulesMetricRule {
  const DynatraceTagRulesMetricRule({
    this.sendingMetricsEnabled,
    this.filteringTag,
  });

  final TfArg<bool>? sendingMetricsEnabled;

  final List<DynatraceTagRulesFilteringTag>? filteringTag;

  @internal
  Map<String, Object?> encode() => {
    'sending_metrics_enabled': ?sendingMetricsEnabled?.toTfJson(),
    if (filteringTag != null)
      'filtering_tag': [for (final e in filteringTag!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_dynatrace_tag_rules`.
final class AzurermDynatraceTagRules extends Resource {
  static const String tfType = 'azurerm_dynatrace_tag_rules';

  AzurermDynatraceTagRules(
    super.localName, {
    required TfArg<String> monitorId,
    required TfArg<String> name,
    DynatraceTagRulesLogRule? logRule,
    DynatraceTagRulesMetricRule? metricRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'monitor_id': monitorId,
           'name': name,
           if (logRule != null) 'log_rule': TfArg.literal(logRule.encode()),
           if (metricRule != null)
             'metric_rule': TfArg.literal(metricRule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDynatraceTagRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDynatraceTagRules>`.
  RefTo<AzurermDynatraceTagRules> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `monitor_id` attribute.
  TfRef<String> get monitorId => TfRef.attribute<String>(this, 'monitor_id');
}
