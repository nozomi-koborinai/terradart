// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_template`.
const Set<String> _azurermSentinelAlertRuleTemplateSensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_alert_rule_template`.
final class DataAzurermSentinelAlertRuleTemplate extends Data {
  static const String tfType = 'azurerm_sentinel_alert_rule_template';

  DataAzurermSentinelAlertRuleTemplate(
    super.localName, {
    TfArg<String>? displayName,
    required TfArg<String> logAnalyticsWorkspaceId,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelAlertRuleTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `nrt_template` attribute.
  TfRef<List<Map<String, Object?>>> get nrtTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nrt_template');

  /// Reference to `scheduled_template` attribute.
  TfRef<List<Map<String, Object?>>> get scheduledTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scheduled_template');

  /// Reference to `security_incident_template` attribute.
  TfRef<List<Map<String, Object?>>> get securityIncidentTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'security_incident_template',
      );

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
