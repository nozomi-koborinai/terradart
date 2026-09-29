// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_policy_based_route`.
const Set<String> _googleNetworkConnectivityPolicyBasedRouteSensitive =
    <String>{};

/// Network Connectivity Policy Based Route Next Hop Other enum for `next_hop_other_routes`.
enum NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes
    implements TerraformEnum {
  defaultRouting('DEFAULT_ROUTING');

  const NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one next-hop for [GoogleNetworkConnectivityPolicyBasedRoute]
/// (MM `exactly_one_of` on `next_hop_ilb_ip` / `next_hop_other_routes`).
/// Use [NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes] (derived)
/// for the `otherRoutes` variant.
sealed class NetworkConnectivityPolicyBasedRouteNextHop {
  const NetworkConnectivityPolicyBasedRouteNextHop();

  /// L4 ILB VIP (global-access enabled) as next hop.
  const factory NetworkConnectivityPolicyBasedRouteNextHop.ilbIp(
    TfArg<String> ip,
  ) = NetworkConnectivityPolicyBasedRouteNextHopIlbIp;

  /// Reference other routes — currently only `DEFAULT_ROUTING`.
  const factory NetworkConnectivityPolicyBasedRouteNextHop.otherRoutes(
    TfArg<NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes> value,
  ) = NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice;

  /// argMap key (`next_hop_ilb_ip` or `next_hop_other_routes`).
  String get blockKey;

  /// Value emitted under [blockKey] (string VIP or enum / string route).
  TfArg<dynamic> get value;

  /// Flat `{blockKey: value}` payload for Gate 6 encode round-trip.
  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// `next_hop_ilb_ip` variant.
@immutable
final class NetworkConnectivityPolicyBasedRouteNextHopIlbIp
    extends NetworkConnectivityPolicyBasedRouteNextHop {
  const NetworkConnectivityPolicyBasedRouteNextHopIlbIp(TfArg<String> ip)
    : value = ip;

  @override
  final TfArg<dynamic> value;

  @override
  String get blockKey => 'next_hop_ilb_ip';
}

/// `next_hop_other_routes` variant.
@immutable
final class NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice
    extends NetworkConnectivityPolicyBasedRouteNextHop {
  const NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice(
    TfArg<NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes> routes,
  ) : value = routes;

  @override
  final TfArg<dynamic> value;

  @override
  String get blockKey => 'next_hop_other_routes';
}

/// At most one of `virtual_machine`, `interconnect_attachment` on `google_network_connectivity_policy_based_route`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.virtualMachine(...)`.
sealed class NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment {
  const NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment();

  /// Sets `virtual_machine`.
  const factory NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment.virtualMachine(
    NetworkConnectivityPolicyBasedRouteVirtualMachine virtualMachine,
  ) = NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachmentVirtualMachine;

  /// Sets `interconnect_attachment`.
  const factory NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment.interconnectAttachment(
    NetworkConnectivityPolicyBasedRouteInterconnectAttachment
    interconnectAttachment,
  ) = NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachmentInterconnectAttachment;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment.virtualMachine] choice: sets `virtual_machine`.
final class NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachmentVirtualMachine
    extends
        NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment {
  const NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachmentVirtualMachine(
    this.virtualMachine,
  );

  final NetworkConnectivityPolicyBasedRouteVirtualMachine virtualMachine;

  @override
  String get blockKey => 'virtual_machine';

  @override
  Map<String, Object?> encode() => {'virtual_machine': virtualMachine.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'virtual_machine': TfArg.literal(virtualMachine.encode()),
  };
}

/// The [NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment.interconnectAttachment] choice: sets `interconnect_attachment`.
final class NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachmentInterconnectAttachment
    extends
        NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment {
  const NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachmentInterconnectAttachment(
    this.interconnectAttachment,
  );

  final NetworkConnectivityPolicyBasedRouteInterconnectAttachment
  interconnectAttachment;

  @override
  String get blockKey => 'interconnect_attachment';

  @override
  Map<String, Object?> encode() => {
    'interconnect_attachment': interconnectAttachment.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'interconnect_attachment': TfArg.literal(interconnectAttachment.encode()),
  };
}

/// Typed helper for the `filter` block of
/// `google_network_connectivity_policy_based_route` (derived from provider schema).
@immutable
final class NetworkConnectivityPolicyBasedRouteFilter {
  const NetworkConnectivityPolicyBasedRouteFilter({
    this.destRange,
    this.ipProtocol,
    required this.protocolVersion,
    this.srcRange,
  });

  final TfArg<String>? destRange;

  final TfArg<String>? ipProtocol;

  final TfArg<NetworkConnectivityPolicyBasedRouteFilterProtocolVersion>
  protocolVersion;

  final TfArg<String>? srcRange;

  Map<String, Object?> encode() => {
    if (destRange != null) 'dest_range': destRange!.toTfJson(),
    if (ipProtocol != null) 'ip_protocol': ipProtocol!.toTfJson(),
    'protocol_version': protocolVersion.toTfJson(),
    if (srcRange != null) 'src_range': srcRange!.toTfJson(),
  };
}

/// `protocol_version` — derived from the provider schema description.
enum NetworkConnectivityPolicyBasedRouteFilterProtocolVersion
    implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const NetworkConnectivityPolicyBasedRouteFilterProtocolVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `interconnect_attachment` block of
/// `google_network_connectivity_policy_based_route` (derived from provider schema).
@immutable
final class NetworkConnectivityPolicyBasedRouteInterconnectAttachment {
  const NetworkConnectivityPolicyBasedRouteInterconnectAttachment({
    required this.region,
  });

  final TfArg<String> region;

  Map<String, Object?> encode() => {'region': region.toTfJson()};
}

/// Typed helper for the `virtual_machine` block of
/// `google_network_connectivity_policy_based_route` (derived from provider schema).
@immutable
final class NetworkConnectivityPolicyBasedRouteVirtualMachine {
  const NetworkConnectivityPolicyBasedRouteVirtualMachine({required this.tags});

  final TfArg<List<Object?>> tags;

  Map<String, Object?> encode() => {'tags': tags.toTfJson()};
}

/// Factory wrapper for `google_network_connectivity_policy_based_route`.
///
/// Policy-based Routes are more powerful routes that route L4 network traffic
/// based on not just destination IP, but also source IP, protocol and more. A
/// Policy-based Route always take precedence when it conflicts with other types
/// of routes.
///
/// Network Connectivity **policy-based route** — L4 route that matches on
/// source/dest IP and protocol (not just destination), and always wins
/// over ordinary VPC routes when it matches.
///
/// Pass exactly one [nextHop] variant (`ilbIp` or `otherRoutes`). Scope
/// installation with at most one of VM tags or an interconnect attachment
/// ([virtualMachineOrInterconnectAttachment]).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU for PBR
/// (Network Connectivity Center `7BEB-7A51-4223` `list_skus` keywords
/// policy/route → 0; catalog only lists Partner CCI Managed Transport
/// hourly SKUs). billing-behavior: routing metadata — no existence/hourly
/// charge. Ships in [`ncc_hub_quickstart`] with
/// `nextHop.otherRoutes(DEFAULT_ROUTING)` + VM tags.
///
/// Example:
/// ```dart
/// GoogleNetworkConnectivityPolicyBasedRoute(
///   localName: 'default_pbr',
///   name: TfArg.literal('terradart-pbr'),
///   network: TfArg.ref(vpc.id),
///   filter: NetworkConnectivityPolicyBasedRouteFilter(
///     protocolVersion: TfArg.literal(
///       NetworkConnectivityPolicyBasedRouteFilterProtocolVersion.ipv4,
///     ),
///   ),
///   nextHop: NetworkConnectivityPolicyBasedRouteNextHop.otherRoutes(
///     TfArg.literal(
///       NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes.defaultRouting,
///     ),
///   ),
///   virtualMachineOrInterconnectAttachment:
///       NetworkConnectivityPolicyBasedRouteVirtualMachineOption(
///         virtualMachine: NetworkConnectivityPolicyBasedRouteVirtualMachine(
///           tags: TfArg.literal(['terradart-pbr']),
///         ),
///       ),
/// );
/// ```
final class GoogleNetworkConnectivityPolicyBasedRoute extends Resource {
  static const String tfType = 'google_network_connectivity_policy_based_route';

  GoogleNetworkConnectivityPolicyBasedRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    required NetworkConnectivityPolicyBasedRouteFilter filter,
    required NetworkConnectivityPolicyBasedRouteNextHop nextHop,
    NetworkConnectivityPolicyBasedRouteVirtualMachineOrInterconnectAttachment?
    virtualMachineOrInterconnectAttachment,
    TfArg<num>? priority,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network,
           'filter': TfArg.literal(filter.encode()),
           ...?virtualMachineOrInterconnectAttachment?.argMap,
           if (priority != null) 'priority': priority,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           nextHop.blockKey: nextHop.value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityPolicyBasedRouteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `warnings` attribute.
  TfRef<List<Map<String, Object?>>> get warnings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'warnings');
}
