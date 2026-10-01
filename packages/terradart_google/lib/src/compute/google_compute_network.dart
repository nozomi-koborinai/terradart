// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network`.
const Set<String> _googleComputeNetworkSensitive = <String>{};

/// Routing mode for `google_compute_network`. Controls how routes are
/// advertised between VPC subnets (regional) or all subnets (global).
extension type const RoutingMode._(TfArg<String> _) implements TfArg<String> {
  RoutingMode.variable(String name) : this._(TfArg.variable(name));
  RoutingMode.expression(String template) : this._(TfArg.expression(template));
  const RoutingMode.arg(TfArg<String> arg) : this._(arg);

  static const regional = RoutingMode._(TfArgLiteral('REGIONAL'));
  static const global = RoutingMode._(TfArgLiteral('GLOBAL'));

  static const List<RoutingMode> values = [regional, global];
}

/// BGP best-path selection algorithm for the VPC.
extension type const BgpBestPathSelectionMode._(TfArg<String> _)
    implements TfArg<String> {
  BgpBestPathSelectionMode.variable(String name) : this._(TfArg.variable(name));
  BgpBestPathSelectionMode.expression(String template)
    : this._(TfArg.expression(template));
  const BgpBestPathSelectionMode.arg(TfArg<String> arg) : this._(arg);

  static const legacy = BgpBestPathSelectionMode._(TfArgLiteral('LEGACY'));
  static const standard = BgpBestPathSelectionMode._(TfArgLiteral('STANDARD'));

  static const List<BgpBestPathSelectionMode> values = [legacy, standard];
}

/// BGP inter-region cost calculation behaviour. Used when
/// `bgpBestPathSelectionMode == standard`.
extension type const BgpInterRegionCost._(TfArg<String> _)
    implements TfArg<String> {
  BgpInterRegionCost.variable(String name) : this._(TfArg.variable(name));
  BgpInterRegionCost.expression(String template)
    : this._(TfArg.expression(template));
  const BgpInterRegionCost.arg(TfArg<String> arg) : this._(arg);

  static const defaultCost = BgpInterRegionCost._(TfArgLiteral('DEFAULT'));
  static const addCostToMed = BgpInterRegionCost._(
    TfArgLiteral('ADD_COST_TO_MED'),
  );

  static const List<BgpInterRegionCost> values = [defaultCost, addCostToMed];
}

/// Order in which a network firewall policy is enforced relative to
/// classic firewall rules.
extension type const NetworkFirewallPolicyEnforcementOrder._(TfArg<String> _)
    implements TfArg<String> {
  NetworkFirewallPolicyEnforcementOrder.variable(String name)
    : this._(TfArg.variable(name));
  NetworkFirewallPolicyEnforcementOrder.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkFirewallPolicyEnforcementOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const beforeClassicFirewall = NetworkFirewallPolicyEnforcementOrder._(
    TfArgLiteral('BEFORE_CLASSIC_FIREWALL'),
  );
  static const afterClassicFirewall = NetworkFirewallPolicyEnforcementOrder._(
    TfArgLiteral('AFTER_CLASSIC_FIREWALL'),
  );

  static const List<NetworkFirewallPolicyEnforcementOrder> values = [
    beforeClassicFirewall,
    afterClassicFirewall,
  ];
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
///   `otherNetwork.name`.
///
/// Example:
/// ```dart
/// final vpc = GoogleComputeNetwork(
///   'main',
///   name: TfArg.literal('main-vpc'),
///   autoCreateSubnetworks: TfArg.literal(false),
///   routingMode: RoutingMode.regional,
/// );
/// ```
final class GoogleComputeNetwork extends Resource {
  static const String tfType = 'google_compute_network';

  GoogleComputeNetwork(
    super.localName, {
    required TfArg<String> name,
    TfArg<bool>? autoCreateSubnetworks,
    RoutingMode? routingMode,
    TfArg<num>? mtu,
    TfArg<String>? description,
    NetworkFirewallPolicyEnforcementOrder?
    networkFirewallPolicyEnforcementOrder,
    TfArg<String>? networkProfile,
    TfArg<bool>? enableUlaInternalIpv6,
    TfArg<bool>? deleteDefaultRoutesOnCreate,
    TfArg<bool>? deleteBgpAlwaysCompareMed,
    TfArg<bool>? bgpAlwaysCompareMed,
    BgpBestPathSelectionMode? bgpBestPathSelectionMode,
    BgpInterRegionCost? bgpInterRegionCost,
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
