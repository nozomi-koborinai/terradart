// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../virtual_wan/azurerm_virtual_hub.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_hub`.
const Set<String> _azurermVirtualHubSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_hub`.
final class DataAzurermVirtualHub extends Data {
  static const String tfType = 'azurerm_virtual_hub';

  DataAzurermVirtualHub(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubSensitive;

  /// A reference to the `azurerm_virtual_hub` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualHub>`.
  RefTo<AzurermVirtualHub> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefix` attribute.
  TfRef<String> get addressPrefix =>
      TfRef.attribute<String>(this, 'address_prefix');

  /// Reference to `default_route_table_id` attribute.
  TfRef<String> get defaultRouteTableId =>
      TfRef.attribute<String>(this, 'default_route_table_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_router_asn` attribute.
  TfRef<num> get virtualRouterAsn =>
      TfRef.attribute<num>(this, 'virtual_router_asn');

  /// Reference to `virtual_router_ips` attribute.
  TfRef<List<String>> get virtualRouterIps =>
      TfRef.attribute<List<String>>(this, 'virtual_router_ips');

  /// Reference to `virtual_wan_id` attribute.
  TfRef<String> get virtualWanId =>
      TfRef.attribute<String>(this, 'virtual_wan_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
