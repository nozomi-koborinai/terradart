// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_hub_route_table_route`.
const Set<String> _azurermVirtualHubRouteTableRouteSensitive = <String>{};

/// Virtual Hub Route Table Route Destinations enum for `destinations_type`.
extension type const VirtualHubRouteTableRouteDestinationsType._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualHubRouteTableRouteDestinationsType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubRouteTableRouteDestinationsType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubRouteTableRouteDestinationsType.arg(TfArg<String> arg)
    : this._(arg);

  static const cidr = VirtualHubRouteTableRouteDestinationsType._(
    TfArgLiteral('CIDR'),
  );
  static const resourceid = VirtualHubRouteTableRouteDestinationsType._(
    TfArgLiteral('ResourceId'),
  );
  static const service = VirtualHubRouteTableRouteDestinationsType._(
    TfArgLiteral('Service'),
  );

  static const List<VirtualHubRouteTableRouteDestinationsType> values = [
    cidr,
    resourceid,
    service,
  ];
}

/// Virtual Hub Route Table Route Next Hop enum for `next_hop_type`.
extension type const VirtualHubRouteTableRouteNextHopType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualHubRouteTableRouteNextHopType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubRouteTableRouteNextHopType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubRouteTableRouteNextHopType.arg(TfArg<String> arg)
    : this._(arg);

  static const resourceid = VirtualHubRouteTableRouteNextHopType._(
    TfArgLiteral('ResourceId'),
  );

  static const List<VirtualHubRouteTableRouteNextHopType> values = [resourceid];
}

/// Factory wrapper for `azurerm_virtual_hub_route_table_route`.
final class AzurermVirtualHubRouteTableRoute extends Resource {
  static const String tfType = 'azurerm_virtual_hub_route_table_route';

  AzurermVirtualHubRouteTableRoute(
    super.localName, {
    required TfArg<List<String>> destinations,
    required VirtualHubRouteTableRouteDestinationsType destinationsType,
    required TfArg<String> name,
    required TfArg<String> nextHop,
    VirtualHubRouteTableRouteNextHopType? nextHopType,
    required TfArg<String> routeTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destinations': destinations,
           'destinations_type': destinationsType,
           'name': name,
           'next_hop': nextHop,
           'next_hop_type': ?nextHopType,
           'route_table_id': routeTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubRouteTableRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubRouteTableRoute>`.
  RefTo<AzurermVirtualHubRouteTableRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destinations` attribute.
  TfRef<List<String>> get destinations =>
      TfRef.attribute<List<String>>(this, 'destinations');

  /// Reference to `destinations_type` attribute.
  TfRef<String> get destinationsType =>
      TfRef.attribute<String>(this, 'destinations_type');

  /// Reference to `next_hop` attribute.
  TfRef<String> get nextHop => TfRef.attribute<String>(this, 'next_hop');

  /// Reference to `next_hop_type` attribute.
  TfRef<String> get nextHopType =>
      TfRef.attribute<String>(this, 'next_hop_type');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');
}
