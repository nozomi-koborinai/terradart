// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_office_365`.
const Set<String> _azurermSentinelDataConnectorOffice365Sensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_office_365`.
final class AzurermSentinelDataConnectorOffice365 extends Resource {
  static const String tfType = 'azurerm_sentinel_data_connector_office_365';

  AzurermSentinelDataConnectorOffice365(
    super.localName, {
    TfArg<bool>? exchangeEnabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    TfArg<bool>? sharepointEnabled,
    TfArg<bool>? teamsEnabled,
    TfArg<String>? tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'exchange_enabled': ?exchangeEnabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'sharepoint_enabled': ?sharepointEnabled,
           'teams_enabled': ?teamsEnabled,
           'tenant_id': ?tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorOffice365Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorOffice365>`.
  RefTo<AzurermSentinelDataConnectorOffice365> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `exchange_enabled` attribute.
  TfRef<bool> get exchangeEnabled =>
      TfRef.attribute<bool>(this, 'exchange_enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `sharepoint_enabled` attribute.
  TfRef<bool> get sharepointEnabled =>
      TfRef.attribute<bool>(this, 'sharepoint_enabled');

  /// Reference to `teams_enabled` attribute.
  TfRef<bool> get teamsEnabled => TfRef.attribute<bool>(this, 'teams_enabled');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
