// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_route`.
const Set<String> _googleComputeRouteSensitive = <String>{};

/// Factory wrapper for `google_compute_route`.
final class GoogleComputeRoute extends Resource {
  static const String tfType = 'google_compute_route';

  GoogleComputeRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    required TfArg<String> destRange,
    TfArg<String>? description,
    TfArg<num>? priority,
    TfArg<String>? nextHopGateway,
    TfArg<String>? nextHopIp,
    TfArg<String>? nextHopInstance,
    TfArg<String>? nextHopInstanceZone,
    TfArg<String>? nextHopIlb,
    TfArg<String>? nextHopVpnTunnel,
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
           if (nextHopGateway != null) 'next_hop_gateway': nextHopGateway,
           if (nextHopIp != null) 'next_hop_ip': nextHopIp,
           if (nextHopInstance != null) 'next_hop_instance': nextHopInstance,
           if (nextHopInstanceZone != null)
             'next_hop_instance_zone': nextHopInstanceZone,
           if (nextHopIlb != null) 'next_hop_ilb': nextHopIlb,
           if (nextHopVpnTunnel != null)
             'next_hop_vpn_tunnel': nextHopVpnTunnel,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
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
