// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../virtual_wan/azurerm_virtual_hub_connection.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_hub_connection`.
const Set<String> _azurermVirtualHubConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_hub_connection`.
final class DataAzurermVirtualHubConnection extends Data {
  static const String tfType = 'azurerm_virtual_hub_connection';

  DataAzurermVirtualHubConnection(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> virtualHubName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'virtual_hub_name': virtualHubName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubConnectionSensitive;

  /// A reference to the `azurerm_virtual_hub_connection` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualHubConnection>`.
  RefTo<AzurermVirtualHubConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `internet_security_enabled` attribute.
  TfRef<bool> get internetSecurityEnabled =>
      TfRef.attribute<bool>(this, 'internet_security_enabled');

  /// Reference to `remote_virtual_network_id` attribute.
  TfRef<String> get remoteVirtualNetworkId =>
      TfRef.attribute<String>(this, 'remote_virtual_network_id');

  /// Reference to `routing` attribute.
  TfRef<List<Map<String, Object?>>> get routing =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routing');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `virtual_hub_name` attribute.
  TfRef<String> get virtualHubName =>
      TfRef.attribute<String>(this, 'virtual_hub_name');
}
