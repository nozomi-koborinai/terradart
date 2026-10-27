// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_microsoft_cloud_app_security`.
const Set<String>
_azurermSentinelDataConnectorMicrosoftCloudAppSecuritySensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_microsoft_cloud_app_security`.
final class AzurermSentinelDataConnectorMicrosoftCloudAppSecurity
    extends Resource {
  static const String tfType =
      'azurerm_sentinel_data_connector_microsoft_cloud_app_security';

  AzurermSentinelDataConnectorMicrosoftCloudAppSecurity(
    super.localName, {
    TfArg<bool>? alertsEnabled,
    TfArg<bool>? discoveryLogsEnabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    TfArg<String>? tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alerts_enabled': ?alertsEnabled,
           'discovery_logs_enabled': ?discoveryLogsEnabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'tenant_id': ?tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorMicrosoftCloudAppSecuritySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorMicrosoftCloudAppSecurity>`.
  RefTo<AzurermSentinelDataConnectorMicrosoftCloudAppSecurity> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alerts_enabled` attribute.
  TfRef<bool> get alertsEnabled =>
      TfRef.attribute<bool>(this, 'alerts_enabled');

  /// Reference to `discovery_logs_enabled` attribute.
  TfRef<bool> get discoveryLogsEnabled =>
      TfRef.attribute<bool>(this, 'discovery_logs_enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
