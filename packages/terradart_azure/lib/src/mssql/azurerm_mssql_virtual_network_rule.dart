// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_mssql_virtual_network_rule`.
const Set<String> _azurermMssqlVirtualNetworkRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_virtual_network_rule`.
final class AzurermMssqlVirtualNetworkRule extends Resource {
  static const String tfType = 'azurerm_mssql_virtual_network_rule';

  AzurermMssqlVirtualNetworkRule(
    super.localName, {
    TfArg<bool>? ignoreMissingVnetServiceEndpoint,
    required TfArg<String> name,
    required TfArg<String> serverId,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ignore_missing_vnet_service_endpoint':
               ?ignoreMissingVnetServiceEndpoint,
           'name': name,
           'server_id': serverId,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlVirtualNetworkRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlVirtualNetworkRule>`.
  RefTo<AzurermMssqlVirtualNetworkRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ignore_missing_vnet_service_endpoint` attribute.
  TfRef<bool> get ignoreMissingVnetServiceEndpoint =>
      TfRef.attribute<bool>(this, 'ignore_missing_vnet_service_endpoint');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
