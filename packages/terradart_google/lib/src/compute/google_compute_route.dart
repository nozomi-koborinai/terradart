// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_route`.
const Set<String> _googleComputeRouteSensitive = <String>{};

/// Next-hop target for [GoogleComputeRoute]. Sealed so the provider
/// `exactly_one_of` on the `next_hop_*` attributes is exhaustive at the
/// type level.
sealed class ComputeRouteNextHop {
  const ComputeRouteNextHop();

  /// Terraform attribute name (`next_hop_gateway`, `next_hop_ip`, …).
  String get blockKey;

  /// Scalar value written under [blockKey].
  TfArg<String> get value;

  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Route via the default internet gateway (`default-internet-gateway`).
@immutable
final class ComputeRouteGatewayNextHop extends ComputeRouteNextHop {
  const ComputeRouteGatewayNextHop({required this.nextHopGateway});

  final TfArg<String> nextHopGateway;

  @override
  String get blockKey => 'next_hop_gateway';

  @override
  TfArg<String> get value => nextHopGateway;
}

/// Route via an explicit next-hop IP address.
@immutable
final class ComputeRouteIpNextHop extends ComputeRouteNextHop {
  const ComputeRouteIpNextHop({required this.nextHopIp});

  final TfArg<String> nextHopIp;

  @override
  String get blockKey => 'next_hop_ip';

  @override
  TfArg<String> get value => nextHopIp;
}

/// Route via a Compute Engine VM instance (name or self-link).
@immutable
final class ComputeRouteInstanceNextHop extends ComputeRouteNextHop {
  const ComputeRouteInstanceNextHop({required this.nextHopInstance});

  final TfArg<String> nextHopInstance;

  @override
  String get blockKey => 'next_hop_instance';

  @override
  TfArg<String> get value => nextHopInstance;
}

/// Route via an internal load balancer.
@immutable
final class ComputeRouteIlbNextHop extends ComputeRouteNextHop {
  const ComputeRouteIlbNextHop({required this.nextHopIlb});

  final TfArg<String> nextHopIlb;

  @override
  String get blockKey => 'next_hop_ilb';

  @override
  TfArg<String> get value => nextHopIlb;
}

/// Route via a Cloud VPN tunnel.
@immutable
final class ComputeRouteVpnTunnelNextHop extends ComputeRouteNextHop {
  const ComputeRouteVpnTunnelNextHop({required this.nextHopVpnTunnel});

  final TfArg<String> nextHopVpnTunnel;

  @override
  String get blockKey => 'next_hop_vpn_tunnel';

  @override
  TfArg<String> get value => nextHopVpnTunnel;
}

/// Factory wrapper for `google_compute_route`.
///
/// Represents a Route resource.
///
/// A route is a rule that specifies how certain packets should be handled by
/// the virtual network. Routes are associated with virtual machines by tag, and
/// the set of routes for a particular virtual machine is called its routing
/// table. For each packet leaving a virtual machine, the system searches that
/// virtual machine's routing table for a single best matching route.
///
/// Routes match packets by destination IP address, preferring smaller or more
/// specific ranges over larger ones. If there is a tie, the system selects the
/// route with the smallest priority value. If there is still a tie, it uses the
/// layer three and four packet headers to select just one of the remaining
/// matching routes. The packet is then forwarded as specified by the next_hop
/// field of the winning route -- either to another virtual machine destination,
/// a virtual machine gateway or a Compute Engine-operated gateway. Packets that
/// do not match any route in the sending virtual machine's routing table will
/// be dropped.
///
/// A Route resource must have exactly one specification of either
/// nextHopGateway, nextHopInstance, nextHopIp, nextHopVpnTunnel, or nextHopIlb.
///
/// A Route resource must have exactly one [ComputeRouteNextHop]:
/// [ComputeRouteGatewayNextHop], [ComputeRouteIpNextHop],
/// [ComputeRouteInstanceNextHop], [ComputeRouteIlbNextHop], or
/// [ComputeRouteVpnTunnelNextHop].
///
/// When using [ComputeRouteInstanceNextHop], set [nextHopInstanceZone] on
/// the factory when the instance is specified by name only (not a full
/// self-link).
final class GoogleComputeRoute extends Resource {
  static const String tfType = 'google_compute_route';

  GoogleComputeRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    required TfArg<String> destRange,
    required ComputeRouteNextHop nextHop,
    TfArg<String>? description,
    TfArg<num>? priority,
    TfArg<String>? nextHopInstanceZone,
    TfArg<List<String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network,
           'dest_range': destRange,
           if (description != null) 'description': description,
           if (priority != null) 'priority': priority,
           if (nextHopInstanceZone != null)
             'next_hop_instance_zone': nextHopInstanceZone,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
           nextHop.blockKey: nextHop.value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `as_paths` attribute.
  TfRef<List<Map<String, Object?>>> get asPaths =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'as_paths');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `next_hop_hub` attribute.
  TfRef<String> get nextHopHub => TfRef.attribute<String>(this, 'next_hop_hub');

  /// Reference to `next_hop_inter_region_cost` attribute.
  TfRef<String> get nextHopInterRegionCost =>
      TfRef.attribute<String>(this, 'next_hop_inter_region_cost');

  /// Reference to `next_hop_med` attribute.
  TfRef<String> get nextHopMed => TfRef.attribute<String>(this, 'next_hop_med');

  /// Reference to `next_hop_network` attribute.
  TfRef<String> get nextHopNetwork =>
      TfRef.attribute<String>(this, 'next_hop_network');

  /// Reference to `next_hop_origin` attribute.
  TfRef<String> get nextHopOrigin =>
      TfRef.attribute<String>(this, 'next_hop_origin');

  /// Reference to `next_hop_peering` attribute.
  TfRef<String> get nextHopPeering =>
      TfRef.attribute<String>(this, 'next_hop_peering');

  /// Reference to `route_status` attribute.
  TfRef<String> get routeStatus =>
      TfRef.attribute<String>(this, 'route_status');

  /// Reference to `route_type` attribute.
  TfRef<String> get routeType => TfRef.attribute<String>(this, 'route_type');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `warnings` attribute.
  TfRef<List<Map<String, Object?>>> get warnings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'warnings');
}
