// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_microsoft_threat_intelligence`.
const Set<String>
_azurermSentinelDataConnectorMicrosoftThreatIntelligenceSensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_microsoft_threat_intelligence`.
final class AzurermSentinelDataConnectorMicrosoftThreatIntelligence
    extends Resource {
  static const String tfType =
      'azurerm_sentinel_data_connector_microsoft_threat_intelligence';

  AzurermSentinelDataConnectorMicrosoftThreatIntelligence(
    super.localName, {
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> microsoftEmergingThreatFeedLookbackDate,
    required TfArg<String> name,
    TfArg<String>? tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'microsoft_emerging_threat_feed_lookback_date':
               microsoftEmergingThreatFeedLookbackDate,
           'name': name,
           'tenant_id': ?tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorMicrosoftThreatIntelligenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorMicrosoftThreatIntelligence>`.
  RefTo<AzurermSentinelDataConnectorMicrosoftThreatIntelligence> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `microsoft_emerging_threat_feed_lookback_date` attribute.
  TfRef<String> get microsoftEmergingThreatFeedLookbackDate =>
      TfRef.attribute<String>(
        this,
        'microsoft_emerging_threat_feed_lookback_date',
      );

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
