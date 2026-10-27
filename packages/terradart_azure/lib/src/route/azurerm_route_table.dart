// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_route_table`.
const Set<String> _azurermRouteTableSensitive = <String>{};

/// Factory wrapper for `azurerm_route_table`.
final class AzurermRouteTable extends Resource {
  static const String tfType = 'azurerm_route_table';

  AzurermRouteTable(
    super.localName, {
    TfArg<bool>? bgpRoutePropagationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<List<Map<String, Object?>>>? route,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bgp_route_propagation_enabled': ?bgpRoutePropagationEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'route': ?route,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRouteTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRouteTable>`.
  RefTo<AzurermRouteTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `bgp_route_propagation_enabled` attribute.
  TfRef<bool> get bgpRoutePropagationEnabled =>
      TfRef.attribute<bool>(this, 'bgp_route_propagation_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `route` attribute.
  TfRef<List<Map<String, Object?>>> get route =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'route');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
