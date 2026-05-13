// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_compute_network.schema.dart'
    show $GoogleComputeNetwork, googleComputeNetworkSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleComputeNetworkSchemaInstance implements $GoogleComputeNetwork {
  const _GoogleComputeNetworkSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// Phase 4.5.1: dartTypeOverrides re-enabled for enum-typed fields. Callers
// pass `TfArg.literal(RoutingMode.regional)` (enum value directly) and the
// TfArg.toTfJson layer detects the `terraformValue` getter convention.

/// Routing mode for `google_compute_network`. Controls how routes are
/// advertised between VPC subnets (regional) or all subnets (global).
enum RoutingMode {
  regional('REGIONAL'),
  global('GLOBAL');

  const RoutingMode(this.terraformValue);
  final String terraformValue;
}

/// BGP best-path selection algorithm for the VPC.
enum BgpBestPathSelectionMode {
  legacy('LEGACY'),
  standard('STANDARD');

  const BgpBestPathSelectionMode(this.terraformValue);
  final String terraformValue;
}

/// BGP inter-region cost calculation behaviour. Used when
/// `bgpBestPathSelectionMode == standard`.
enum BgpInterRegionCost {
  defaultCost('DEFAULT'),
  addCostToMed('ADD_COST_TO_MED');

  const BgpInterRegionCost(this.terraformValue);
  final String terraformValue;
}

/// Order in which a network firewall policy is enforced relative to
/// classic firewall rules.
enum NetworkFirewallPolicyEnforcementOrder {
  beforeClassicFirewall('BEFORE_CLASSIC_FIREWALL'),
  afterClassicFirewall('AFTER_CLASSIC_FIREWALL');

  const NetworkFirewallPolicyEnforcementOrder(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_compute_network` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_network.`).
/// - `name`: GCP VPC network name. Pass `TfArg.literal('main-vpc')` or
///   `TfArg.ref(otherNetwork.nameRef)`.
///
/// Example:
/// ```dart
/// final vpc = GoogleComputeNetwork(
///   localName: 'main',
///   name: TfArg.literal('main-vpc'),
///   autoCreateSubnetworks: TfArg.literal(false),
///   routingMode: TfArg.literal(RoutingMode.regional),
/// );
/// ```
///
/// Manages a VPC network or legacy network resource on GCP. Composition
/// pattern: extends `Resource<$GoogleComputeNetwork>` for runtime behavior.
final class GoogleComputeNetwork extends Resource<$GoogleComputeNetwork> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_network';

  GoogleComputeNetwork({
    required super.localName,
    required TfArg<String> name,
    TfArg<bool>? autoCreateSubnetworks,
    TfArg<RoutingMode>? routingMode,
    TfArg<num>? mtu,
    TfArg<String>? description,
    TfArg<NetworkFirewallPolicyEnforcementOrder>?
    networkFirewallPolicyEnforcementOrder,
    TfArg<String>? networkProfile,
    TfArg<bool>? enableUlaInternalIpv6,
    TfArg<bool>? deleteDefaultRoutesOnCreate,
    TfArg<bool>? deleteBgpAlwaysCompareMed,
    TfArg<bool>? bgpAlwaysCompareMed,
    TfArg<BgpBestPathSelectionMode>? bgpBestPathSelectionMode,
    TfArg<BgpInterRegionCost>? bgpInterRegionCost,
    TfArg<String>? internalIpv6Range,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleComputeNetworkSchemaInstance(),
         argMap: {
           'name': name,
           if (autoCreateSubnetworks != null)
             'auto_create_subnetworks': autoCreateSubnetworks,
           if (routingMode != null) 'routing_mode': routingMode,
           if (mtu != null) 'mtu': mtu,
           if (description != null) 'description': description,
           if (networkFirewallPolicyEnforcementOrder != null)
             'network_firewall_policy_enforcement_order':
                 networkFirewallPolicyEnforcementOrder,
           if (networkProfile != null) 'network_profile': networkProfile,
           if (enableUlaInternalIpv6 != null)
             'enable_ula_internal_ipv6': enableUlaInternalIpv6,
           if (deleteDefaultRoutesOnCreate != null)
             'delete_default_routes_on_create': deleteDefaultRoutesOnCreate,
           if (deleteBgpAlwaysCompareMed != null)
             'delete_bgp_always_compare_med': deleteBgpAlwaysCompareMed,
           if (bgpAlwaysCompareMed != null)
             'bgp_always_compare_med': bgpAlwaysCompareMed,
           if (bgpBestPathSelectionMode != null)
             'bgp_best_path_selection_mode': bgpBestPathSelectionMode,
           if (bgpInterRegionCost != null)
             'bgp_inter_region_cost': bgpInterRegionCost,
           if (internalIpv6Range != null)
             'internal_ipv6_range': internalIpv6Range,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleComputeNetworkSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `network.nameRef` → `${google_compute_network.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/networks/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the `network`
  /// param of downstream resources like `google_compute_subnetwork`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
