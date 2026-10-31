// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_hub_route_table`.
const Set<String> _azurermVirtualHubRouteTableSensitive = <String>{};

/// Typed helper for the `route` block of
/// `azurerm_virtual_hub_route_table` (derived from provider schema).
@immutable
final class VirtualHubRouteTableRoute {
  const VirtualHubRouteTableRoute({
    required this.destinations,
    required this.destinationsType,
    required this.name,
    required this.nextHop,
    this.nextHopType,
  });

  final TfArg<List<String>> destinations;

  final VirtualHubRouteTableDestinationsType destinationsType;

  final TfArg<String> name;

  final TfArg<String> nextHop;

  final VirtualHubRouteTableNextHopType? nextHopType;

  @internal
  Map<String, Object?> encode() => {
    'destinations': destinations.toTfJson(),
    'destinations_type': destinationsType.toTfJson(),
    'name': name.toTfJson(),
    'next_hop': nextHop.toTfJson(),
    'next_hop_type': ?nextHopType?.toTfJson(),
  };
}

/// `destinations_type` — derived from the provider schema description.
extension type const VirtualHubRouteTableDestinationsType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualHubRouteTableDestinationsType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubRouteTableDestinationsType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubRouteTableDestinationsType.arg(TfArg<String> arg)
    : this._(arg);

  static const cidr = VirtualHubRouteTableDestinationsType._(
    TfArgLiteral('CIDR'),
  );
  static const resourceid = VirtualHubRouteTableDestinationsType._(
    TfArgLiteral('ResourceId'),
  );
  static const service = VirtualHubRouteTableDestinationsType._(
    TfArgLiteral('Service'),
  );

  static const List<VirtualHubRouteTableDestinationsType> values = [
    cidr,
    resourceid,
    service,
  ];
}

/// `next_hop_type` — derived from the provider schema description.
extension type const VirtualHubRouteTableNextHopType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualHubRouteTableNextHopType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubRouteTableNextHopType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubRouteTableNextHopType.arg(TfArg<String> arg) : this._(arg);

  static const resourceid = VirtualHubRouteTableNextHopType._(
    TfArgLiteral('ResourceId'),
  );

  static const List<VirtualHubRouteTableNextHopType> values = [resourceid];
}

/// Factory wrapper for `azurerm_virtual_hub_route_table`.
final class AzurermVirtualHubRouteTable extends Resource {
  static const String tfType = 'azurerm_virtual_hub_route_table';

  AzurermVirtualHubRouteTable(
    super.localName, {
    TfArg<List<String>>? labels,
    required TfArg<String> name,
    required TfArg<String> virtualHubId,
    List<VirtualHubRouteTableRoute>? route,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'labels': ?labels,
           'name': name,
           'virtual_hub_id': virtualHubId,
           if (route != null)
             'route': TfArg.literal([for (final e in route) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubRouteTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubRouteTable>`.
  RefTo<AzurermVirtualHubRouteTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
