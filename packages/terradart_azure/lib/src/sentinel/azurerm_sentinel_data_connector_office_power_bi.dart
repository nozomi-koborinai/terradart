// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_office_power_bi`.
const Set<String> _azurermSentinelDataConnectorOfficePowerBiSensitive =
    <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_office_power_bi`.
final class AzurermSentinelDataConnectorOfficePowerBi extends Resource {
  static const String tfType =
      'azurerm_sentinel_data_connector_office_power_bi';

  AzurermSentinelDataConnectorOfficePowerBi(
    super.localName, {
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
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'tenant_id': ?tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorOfficePowerBiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorOfficePowerBi>`.
  RefTo<AzurermSentinelDataConnectorOfficePowerBi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
