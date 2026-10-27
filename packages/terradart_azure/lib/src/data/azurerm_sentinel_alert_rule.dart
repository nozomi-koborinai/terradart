// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule`.
const Set<String> _azurermSentinelAlertRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_alert_rule`.
final class DataAzurermSentinelAlertRule extends Data {
  static const String tfType = 'azurerm_sentinel_alert_rule';

  DataAzurermSentinelAlertRule(
    super.localName, {
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelAlertRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
