// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_azure_security_center`.
const Set<String> _azurermSentinelDataConnectorAzureSecurityCenterSensitive =
    <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_azure_security_center`.
final class AzurermSentinelDataConnectorAzureSecurityCenter extends Resource {
  static const String tfType =
      'azurerm_sentinel_data_connector_azure_security_center';

  AzurermSentinelDataConnectorAzureSecurityCenter(
    super.localName, {
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    TfArg<String>? subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'subscription_id': ?subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorAzureSecurityCenterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorAzureSecurityCenter>`.
  RefTo<AzurermSentinelDataConnectorAzureSecurityCenter> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
