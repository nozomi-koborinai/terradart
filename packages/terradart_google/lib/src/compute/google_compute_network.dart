// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network`.
const Set<String> _googleComputeNetworkSensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled for enum-typed fields. Callers
// pass `TfArg.literal(RoutingMode.regional)` (enum value directly) and the
// TfArg.toTfJson layer detects the `terraformValue` getter convention.

/// Routing mode for `google_compute_network`. Controls how routes are
/// advertised between VPC subnets (regional) or all subnets (global).
enum RoutingMode implements TerraformEnum {
  regional('REGIONAL'),
  global('GLOBAL');

  const RoutingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// BGP best-path selection algorithm for the VPC.
enum BgpBestPathSelectionMode implements TerraformEnum {
  legacy('LEGACY'),
  standard('STANDARD');

  const BgpBestPathSelectionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// BGP inter-region cost calculation behaviour. Used when
/// `bgpBestPathSelectionMode == standard`.
enum BgpInterRegionCost implements TerraformEnum {
  defaultCost('DEFAULT'),
  addCostToMed('ADD_COST_TO_MED');

  const BgpInterRegionCost(this.terraformValue);
  @override
  final String terraformValue;
}

/// Order in which a network firewall policy is enforced relative to
/// classic firewall rules.
enum NetworkFirewallPolicyEnforcementOrder implements TerraformEnum {
  beforeClassicFirewall('BEFORE_CLASSIC_FIREWALL'),
  afterClassicFirewall('AFTER_CLASSIC_FIREWALL');

  const NetworkFirewallPolicyEnforcementOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `params` block of
/// `google_compute_network` (derived from provider schema).
@immutable
final class ComputeNetworkParams {
  const ComputeNetworkParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_network`.
///
/// Manages a VPC network or legacy network resource on GCP.
///
/// Required identity:
/// - [localName]: Terraform local name.
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
final class GoogleComputeNetwork extends Resource {
  static const String tfType = 'google_compute_network';

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
    ComputeNetworkParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'auto_create_subnetworks': ?autoCreateSubnetworks,
           'routing_mode': ?routingMode,
           'mtu': ?mtu,
           'description': ?description,
           'network_firewall_policy_enforcement_order':
               ?networkFirewallPolicyEnforcementOrder,
           'network_profile': ?networkProfile,
           'enable_ula_internal_ipv6': ?enableUlaInternalIpv6,
           'delete_default_routes_on_create': ?deleteDefaultRoutesOnCreate,
           'delete_bgp_always_compare_med': ?deleteBgpAlwaysCompareMed,
           'bgp_always_compare_med': ?bgpAlwaysCompareMed,
           'bgp_best_path_selection_mode': ?bgpBestPathSelectionMode,
           'bgp_inter_region_cost': ?bgpInterRegionCost,
           'internal_ipv6_range': ?internalIpv6Range,
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetwork>`.
  RefTo<GoogleComputeNetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `gateway_ipv4` attribute.
  TfRef<String> get gatewayIpv4 =>
      TfRef.attribute<String>(this, 'gateway_ipv4');

  /// Reference to `network_id` attribute.
  TfRef<String> get networkId => TfRef.attribute<String>(this, 'network_id');

  /// Reference to `numeric_id` attribute.
  TfRef<String> get numericId => TfRef.attribute<String>(this, 'numeric_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `auto_create_subnetworks` attribute.
  TfRef<bool> get autoCreateSubnetworks =>
      TfRef.attribute<bool>(this, 'auto_create_subnetworks');

  /// Reference to `bgp_always_compare_med` attribute.
  TfRef<bool> get bgpAlwaysCompareMed =>
      TfRef.attribute<bool>(this, 'bgp_always_compare_med');

  /// Reference to `bgp_best_path_selection_mode` attribute.
  TfRef<String> get bgpBestPathSelectionMode =>
      TfRef.attribute<String>(this, 'bgp_best_path_selection_mode');

  /// Reference to `bgp_inter_region_cost` attribute.
  TfRef<String> get bgpInterRegionCost =>
      TfRef.attribute<String>(this, 'bgp_inter_region_cost');

  /// Reference to `delete_bgp_always_compare_med` attribute.
  TfRef<bool> get deleteBgpAlwaysCompareMed =>
      TfRef.attribute<bool>(this, 'delete_bgp_always_compare_med');

  /// Reference to `delete_default_routes_on_create` attribute.
  TfRef<bool> get deleteDefaultRoutesOnCreate =>
      TfRef.attribute<bool>(this, 'delete_default_routes_on_create');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_ula_internal_ipv6` attribute.
  TfRef<bool> get enableUlaInternalIpv6 =>
      TfRef.attribute<bool>(this, 'enable_ula_internal_ipv6');

  /// Reference to `internal_ipv6_range` attribute.
  TfRef<String> get internalIpv6Range =>
      TfRef.attribute<String>(this, 'internal_ipv6_range');

  /// Reference to `mtu` attribute.
  TfRef<num> get mtu => TfRef.attribute<num>(this, 'mtu');

  /// Reference to `network_firewall_policy_enforcement_order` attribute.
  TfRef<String> get networkFirewallPolicyEnforcementOrder =>
      TfRef.attribute<String>(
        this,
        'network_firewall_policy_enforcement_order',
      );

  /// Reference to `network_profile` attribute.
  TfRef<String> get networkProfile =>
      TfRef.attribute<String>(this, 'network_profile');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `routing_mode` attribute.
  TfRef<String> get routingMode =>
      TfRef.attribute<String>(this, 'routing_mode');
}
