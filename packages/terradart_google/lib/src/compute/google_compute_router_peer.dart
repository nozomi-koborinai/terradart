// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router_peer`.
const Set<String> _googleComputeRouterPeerSensitive = <String>{
  'md5_authentication_key.key',
};

/// `advertise_mode` — BGP prefix advertisement mode of this peer.
/// Default (when unset) is [ComputeRouterPeerAdvertiseMode.defaultMode].
enum ComputeRouterPeerAdvertiseMode implements TerraformEnum {
  defaultMode('DEFAULT'),
  custom('CUSTOM');

  const ComputeRouterPeerAdvertiseMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `advertised_ip_ranges` block of
/// `google_compute_router_peer` (derived from provider schema).
@immutable
final class ComputeRouterPeerAdvertisedIpRanges {
  const ComputeRouterPeerAdvertisedIpRanges({
    this.description,
    required this.range,
  });

  final TfArg<String>? description;

  final TfArg<String> range;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'range': range.toTfJson(),
  };
}

/// Typed helper for the `bfd` block of
/// `google_compute_router_peer` (derived from provider schema).
@immutable
final class ComputeRouterPeerBfd {
  const ComputeRouterPeerBfd({
    this.minReceiveInterval,
    this.minTransmitInterval,
    this.multiplier,
    required this.sessionInitializationMode,
  });

  final TfArg<num>? minReceiveInterval;

  final TfArg<num>? minTransmitInterval;

  final TfArg<num>? multiplier;

  final TfArg<ComputeRouterPeerBfdSessionInitializationMode>
  sessionInitializationMode;

  Map<String, Object?> encode() => {
    if (minReceiveInterval != null)
      'min_receive_interval': minReceiveInterval!.toTfJson(),
    if (minTransmitInterval != null)
      'min_transmit_interval': minTransmitInterval!.toTfJson(),
    if (multiplier != null) 'multiplier': multiplier!.toTfJson(),
    'session_initialization_mode': sessionInitializationMode.toTfJson(),
  };
}

/// `session_initialization_mode` — derived from the provider schema description.
enum ComputeRouterPeerBfdSessionInitializationMode implements TerraformEnum {
  active('ACTIVE'),
  disabled('DISABLED'),
  passive('PASSIVE');

  const ComputeRouterPeerBfdSessionInitializationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_learned_ip_ranges` block of
/// `google_compute_router_peer` (derived from provider schema).
@immutable
final class ComputeRouterPeerCustomLearnedIpRanges {
  const ComputeRouterPeerCustomLearnedIpRanges({required this.range});

  final TfArg<String> range;

  Map<String, Object?> encode() => {'range': range.toTfJson()};
}

/// Typed helper for the `md5_authentication_key` block of
/// `google_compute_router_peer` (derived from provider schema).
@immutable
final class ComputeRouterPeerMd5AuthenticationKey {
  const ComputeRouterPeerMd5AuthenticationKey({
    required this.key,
    required this.name,
  });

  final TfArg<String> key;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_router_peer`.
final class GoogleComputeRouterPeer extends Resource {
  static const String tfType = 'google_compute_router_peer';

  GoogleComputeRouterPeer({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> router,
    required TfArg<String> interface,
    required TfArg<num> peerAsn,
    TfArg<String>? region,
    TfArg<String>? peerIpAddress,
    TfArg<ComputeRouterPeerAdvertiseMode>? advertiseMode,
    TfArg<List<String>>? advertisedGroups,
    TfArg<num>? advertisedRoutePriority,
    TfArg<bool>? enable,
    TfArg<bool>? enableIpv4,
    TfArg<bool>? enableIpv6,
    TfArg<String>? ipAddress,
    TfArg<String>? ipv4NexthopAddress,
    TfArg<String>? ipv6NexthopAddress,
    TfArg<String>? peerIpv4NexthopAddress,
    TfArg<String>? peerIpv6NexthopAddress,
    TfArg<List<String>>? exportPolicies,
    TfArg<List<String>>? importPolicies,
    TfArg<String>? routerApplianceInstance,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           'interface': interface,
           'peer_asn': peerAsn,
           if (region != null) 'region': region,
           if (peerIpAddress != null) 'peer_ip_address': peerIpAddress,
           if (advertiseMode != null) 'advertise_mode': advertiseMode,
           if (advertisedGroups != null) 'advertised_groups': advertisedGroups,
           if (advertisedRoutePriority != null)
             'advertised_route_priority': advertisedRoutePriority,
           if (enable != null) 'enable': enable,
           if (enableIpv4 != null) 'enable_ipv4': enableIpv4,
           if (enableIpv6 != null) 'enable_ipv6': enableIpv6,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (ipv4NexthopAddress != null)
             'ipv4_nexthop_address': ipv4NexthopAddress,
           if (ipv6NexthopAddress != null)
             'ipv6_nexthop_address': ipv6NexthopAddress,
           if (peerIpv4NexthopAddress != null)
             'peer_ipv4_nexthop_address': peerIpv4NexthopAddress,
           if (peerIpv6NexthopAddress != null)
             'peer_ipv6_nexthop_address': peerIpv6NexthopAddress,
           if (exportPolicies != null) 'export_policies': exportPolicies,
           if (importPolicies != null) 'import_policies': importPolicies,
           if (routerApplianceInstance != null)
             'router_appliance_instance': routerApplianceInstance,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterPeerSensitive;

  /// Reference to `is_advertised_route_priority_set` attribute.
  TfRef<bool> get isAdvertisedRoutePrioritySet =>
      TfRef.attribute<bool>(this, 'is_advertised_route_priority_set');

  /// Reference to `is_custom_learned_priority_set` attribute.
  TfRef<bool> get isCustomLearnedPrioritySet =>
      TfRef.attribute<bool>(this, 'is_custom_learned_priority_set');

  /// Reference to `management_type` attribute.
  TfRef<String> get managementType =>
      TfRef.attribute<String>(this, 'management_type');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
