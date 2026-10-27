// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../virtual_wan/azurerm_virtual_hub_route_table.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_hub_route_table`.
const Set<String> _azurermVirtualHubRouteTableSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_hub_route_table`.
final class DataAzurermVirtualHubRouteTable extends Data {
  static const String tfType = 'azurerm_virtual_hub_route_table';

  DataAzurermVirtualHubRouteTable(
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
  Set<String> get sensitiveFields => _azurermVirtualHubRouteTableSensitive;

  /// A reference to the `azurerm_virtual_hub_route_table` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualHubRouteTable>`.
  RefTo<AzurermVirtualHubRouteTable> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

  /// Reference to `route` attribute.
  TfRef<List<Map<String, Object?>>> get route =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'route');

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
