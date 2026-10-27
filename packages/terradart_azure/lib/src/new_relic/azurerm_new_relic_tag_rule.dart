// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_new_relic_tag_rule`.
const Set<String> _azurermNewRelicTagRuleSensitive = <String>{};

/// Typed helper for the `log_tag_filter` block of
/// `azurerm_new_relic_tag_rule` (derived from provider schema).
@immutable
final class NewRelicTagRuleLogTagFilter {
  const NewRelicTagRuleLogTagFilter({
    required this.action,
    required this.name,
    required this.value,
  });

  final NewRelicTagRuleAction action;

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
extension type const NewRelicTagRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  NewRelicTagRuleAction.variable(String name) : this._(TfArg.variable(name));
  NewRelicTagRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const NewRelicTagRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const exclude = NewRelicTagRuleAction._(TfArgLiteral('Exclude'));
  static const include = NewRelicTagRuleAction._(TfArgLiteral('Include'));

  static const List<NewRelicTagRuleAction> values = [exclude, include];
}

/// Typed helper for the `metric_tag_filter` block of
/// `azurerm_new_relic_tag_rule` (derived from provider schema).
@immutable
final class NewRelicTagRuleMetricTagFilter {
  const NewRelicTagRuleMetricTagFilter({
    required this.action,
    required this.name,
    required this.value,
  });

  final NewRelicTagRuleAction action;

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_new_relic_tag_rule`.
final class AzurermNewRelicTagRule extends Resource {
  static const String tfType = 'azurerm_new_relic_tag_rule';

  AzurermNewRelicTagRule(
    super.localName, {
    TfArg<bool>? activityLogEnabled,
    TfArg<bool>? azureActiveDirectoryLogEnabled,
    TfArg<bool>? metricEnabled,
    required TfArg<String> monitorId,
    TfArg<bool>? subscriptionLogEnabled,
    List<NewRelicTagRuleLogTagFilter>? logTagFilter,
    List<NewRelicTagRuleMetricTagFilter>? metricTagFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activity_log_enabled': ?activityLogEnabled,
           'azure_active_directory_log_enabled':
               ?azureActiveDirectoryLogEnabled,
           'metric_enabled': ?metricEnabled,
           'monitor_id': monitorId,
           'subscription_log_enabled': ?subscriptionLogEnabled,
           if (logTagFilter != null)
             'log_tag_filter': TfArg.literal([
               for (final e in logTagFilter) e.encode(),
             ]),
           if (metricTagFilter != null)
             'metric_tag_filter': TfArg.literal([
               for (final e in metricTagFilter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNewRelicTagRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNewRelicTagRule>`.
  RefTo<AzurermNewRelicTagRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activity_log_enabled` attribute.
  TfRef<bool> get activityLogEnabled =>
      TfRef.attribute<bool>(this, 'activity_log_enabled');

  /// Reference to `azure_active_directory_log_enabled` attribute.
  TfRef<bool> get azureActiveDirectoryLogEnabled =>
      TfRef.attribute<bool>(this, 'azure_active_directory_log_enabled');

  /// Reference to `metric_enabled` attribute.
  TfRef<bool> get metricEnabled =>
      TfRef.attribute<bool>(this, 'metric_enabled');

  /// Reference to `monitor_id` attribute.
  TfRef<String> get monitorId => TfRef.attribute<String>(this, 'monitor_id');

  /// Reference to `subscription_log_enabled` attribute.
  TfRef<bool> get subscriptionLogEnabled =>
      TfRef.attribute<bool>(this, 'subscription_log_enabled');
}
