// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../route/azurerm_route_table.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_route_table`.
const Set<String> _azurermRouteTableSensitive = <String>{};

/// Factory wrapper for `azurerm_route_table`.
final class DataAzurermRouteTable extends Data {
  static const String tfType = 'azurerm_route_table';

  DataAzurermRouteTable(
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
  Set<String> get sensitiveFields => _azurermRouteTableSensitive;

  /// A reference to the `azurerm_route_table` this data source reads, for
  /// arguments typed `RefTo<AzurermRouteTable>`.
  RefTo<AzurermRouteTable> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bgp_route_propagation_enabled` attribute.
  TfRef<bool> get bgpRoutePropagationEnabled =>
      TfRef.attribute<bool>(this, 'bgp_route_propagation_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `route` attribute.
  TfRef<List<Map<String, Object?>>> get route =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'route');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
