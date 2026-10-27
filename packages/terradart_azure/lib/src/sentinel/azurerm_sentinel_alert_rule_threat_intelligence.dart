// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_threat_intelligence`.
const Set<String> _azurermSentinelAlertRuleThreatIntelligenceSensitive =
    <String>{};

/// Factory wrapper for `azurerm_sentinel_alert_rule_threat_intelligence`.
final class AzurermSentinelAlertRuleThreatIntelligence extends Resource {
  static const String tfType =
      'azurerm_sentinel_alert_rule_threat_intelligence';

  AzurermSentinelAlertRuleThreatIntelligence(
    super.localName, {
    required TfArg<String> alertRuleTemplateGuid,
    TfArg<bool>? enabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alert_rule_template_guid': alertRuleTemplateGuid,
           'enabled': ?enabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelAlertRuleThreatIntelligenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleThreatIntelligence>`.
  RefTo<AzurermSentinelAlertRuleThreatIntelligence> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alert_rule_template_guid` attribute.
  TfRef<String> get alertRuleTemplateGuid =>
      TfRef.attribute<String>(this, 'alert_rule_template_guid');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
