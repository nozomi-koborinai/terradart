// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_router.dart' show GoogleComputeRouter;

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
    'description': ?description?.toTfJson(),
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

  final TfArg<ComputeRouterPeerSessionInitializationMode>
  sessionInitializationMode;

  Map<String, Object?> encode() => {
    'min_receive_interval': ?minReceiveInterval?.toTfJson(),
    'min_transmit_interval': ?minTransmitInterval?.toTfJson(),
    'multiplier': ?multiplier?.toTfJson(),
    'session_initialization_mode': sessionInitializationMode.toTfJson(),
  };
}

/// `session_initialization_mode` — derived from the provider schema description.
enum ComputeRouterPeerSessionInitializationMode implements TerraformEnum {
  active('ACTIVE'),
  disabled('DISABLED'),
  passive('PASSIVE');

  const ComputeRouterPeerSessionInitializationMode(this.terraformValue);
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
    required RefTo<GoogleComputeRouter> router,
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
    List<ComputeRouterPeerAdvertisedIpRanges>? advertisedIpRanges,
    ComputeRouterPeerBfd? bfd,
    List<ComputeRouterPeerCustomLearnedIpRanges>? customLearnedIpRanges,
    ComputeRouterPeerMd5AuthenticationKey? md5AuthenticationKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router.encodeAs('name'),
           'interface': interface,
           'peer_asn': peerAsn,
           'region': ?region,
           'peer_ip_address': ?peerIpAddress,
           'advertise_mode': ?advertiseMode,
           'advertised_groups': ?advertisedGroups,
           'advertised_route_priority': ?advertisedRoutePriority,
           'enable': ?enable,
           'enable_ipv4': ?enableIpv4,
           'enable_ipv6': ?enableIpv6,
           'ip_address': ?ipAddress,
           'ipv4_nexthop_address': ?ipv4NexthopAddress,
           'ipv6_nexthop_address': ?ipv6NexthopAddress,
           'peer_ipv4_nexthop_address': ?peerIpv4NexthopAddress,
           'peer_ipv6_nexthop_address': ?peerIpv6NexthopAddress,
           'export_policies': ?exportPolicies,
           'import_policies': ?importPolicies,
           'router_appliance_instance': ?routerApplianceInstance,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (advertisedIpRanges != null)
             'advertised_ip_ranges': TfArg.literal([
               for (final e in advertisedIpRanges) e.encode(),
             ]),
           if (bfd != null) 'bfd': TfArg.literal(bfd.encode()),
           if (customLearnedIpRanges != null)
             'custom_learned_ip_ranges': TfArg.literal([
               for (final e in customLearnedIpRanges) e.encode(),
             ]),
           if (md5AuthenticationKey != null)
             'md5_authentication_key': TfArg.literal(
               md5AuthenticationKey.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterPeerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRouterPeer>`.
  RefTo<GoogleComputeRouterPeer> get ref => RefTo.of(this);

  /// Reference to `is_advertised_route_priority_set` attribute.
  TfRef<bool> get isAdvertisedRoutePrioritySet =>
      TfRef.attribute<bool>(this, 'is_advertised_route_priority_set');

  /// Reference to `is_custom_learned_priority_set` attribute.
  TfRef<bool> get isCustomLearnedPrioritySet =>
      TfRef.attribute<bool>(this, 'is_custom_learned_priority_set');

  /// Reference to `management_type` attribute.
  TfRef<String> get managementType =>
      TfRef.attribute<String>(this, 'management_type');

  /// Reference to `advertise_mode` attribute.
  TfRef<String> get advertiseModeRef =>
      TfRef.attribute<String>(this, 'advertise_mode');

  /// Reference to `advertised_groups` attribute.
  TfRef<List<String>> get advertisedGroupsRef =>
      TfRef.attribute<List<String>>(this, 'advertised_groups');

  /// Reference to `advertised_route_priority` attribute.
  TfRef<num> get advertisedRoutePriorityRef =>
      TfRef.attribute<num>(this, 'advertised_route_priority');

  /// Reference to `custom_learned_route_priority` attribute.
  TfRef<num> get customLearnedRoutePriorityRef =>
      TfRef.attribute<num>(this, 'custom_learned_route_priority');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enable` attribute.
  TfRef<bool> get enableRef => TfRef.attribute<bool>(this, 'enable');

  /// Reference to `enable_ipv4` attribute.
  TfRef<bool> get enableIpv4Ref => TfRef.attribute<bool>(this, 'enable_ipv4');

  /// Reference to `enable_ipv6` attribute.
  TfRef<bool> get enableIpv6Ref => TfRef.attribute<bool>(this, 'enable_ipv6');

  /// Reference to `export_policies` attribute.
  TfRef<List<String>> get exportPoliciesRef =>
      TfRef.attribute<List<String>>(this, 'export_policies');

  /// Reference to `import_policies` attribute.
  TfRef<List<String>> get importPoliciesRef =>
      TfRef.attribute<List<String>>(this, 'import_policies');

  /// Reference to `interface` attribute.
  TfRef<String> get interfaceRef => TfRef.attribute<String>(this, 'interface');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddressRef => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ipv4_nexthop_address` attribute.
  TfRef<String> get ipv4NexthopAddressRef =>
      TfRef.attribute<String>(this, 'ipv4_nexthop_address');

  /// Reference to `ipv6_nexthop_address` attribute.
  TfRef<String> get ipv6NexthopAddressRef =>
      TfRef.attribute<String>(this, 'ipv6_nexthop_address');

  /// Reference to `peer_asn` attribute.
  TfRef<num> get peerAsnRef => TfRef.attribute<num>(this, 'peer_asn');

  /// Reference to `peer_ip_address` attribute.
  TfRef<String> get peerIpAddressRef =>
      TfRef.attribute<String>(this, 'peer_ip_address');

  /// Reference to `peer_ipv4_nexthop_address` attribute.
  TfRef<String> get peerIpv4NexthopAddressRef =>
      TfRef.attribute<String>(this, 'peer_ipv4_nexthop_address');

  /// Reference to `peer_ipv6_nexthop_address` attribute.
  TfRef<String> get peerIpv6NexthopAddressRef =>
      TfRef.attribute<String>(this, 'peer_ipv6_nexthop_address');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get routerRef => TfRef.attribute<String>(this, 'router');

  /// Reference to `router_appliance_instance` attribute.
  TfRef<String> get routerApplianceInstanceRef =>
      TfRef.attribute<String>(this, 'router_appliance_instance');

  /// Reference to `zero_advertised_route_priority` attribute.
  TfRef<bool> get zeroAdvertisedRoutePriorityRef =>
      TfRef.attribute<bool>(this, 'zero_advertised_route_priority');

  /// Reference to `zero_custom_learned_route_priority` attribute.
  TfRef<bool> get zeroCustomLearnedRoutePriorityRef =>
      TfRef.attribute<bool>(this, 'zero_custom_learned_route_priority');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
