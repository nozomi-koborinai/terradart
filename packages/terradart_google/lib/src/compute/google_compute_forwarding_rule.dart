// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_backend_service.dart'
    show GoogleComputeBackendService;
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_forwarding_rule`.
const Set<String> _googleComputeForwardingRuleSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// IP protocol for `google_compute_forwarding_rule.ip_protocol`. The set
/// of protocols accepted at apply time depends on the load balancing
/// scheme and target type — Application Load Balancers want [tcp];
/// protocol forwarding rules may also pick [udp] / [esp] / [ah] /
/// [sctp] / [icmp].
///
/// [l3Default] is regional-only: it attaches the rule to a backend
/// service with `UNSPECIFIED` protocol, and pairs with `allPorts: true`
/// for internal protocol forwarding. It is rejected when the backend
/// service explicitly declares `TCP` or `UDP`.
enum ForwardingRuleIpProtocol implements TerraformEnum {
  tcp('TCP'),
  udp('UDP'),
  esp('ESP'),
  ah('AH'),
  sctp('SCTP'),
  icmp('ICMP'),
  l3Default('L3_DEFAULT');

  const ForwardingRuleIpProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// IP version for the regional forwarding rule's VIP. Default `IPV4`.
/// Selecting [ipv6] requires a regional IPv6 [GoogleComputeAddress] for
/// [GoogleComputeForwardingRule.ipAddress], and (for external IPv6 NetLB
/// rules) typically pairs with [GoogleComputeForwardingRule.ipCollection]
/// pointing at a `PublicDelegatedPrefix` in
/// `EXTERNAL_IPV6_FORWARDING_RULE_CREATION` mode.
enum ForwardingRuleIpVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const ForwardingRuleIpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `load_balancing_scheme`. Picks which regional load balancer variant
/// this forwarding rule fronts.
///
/// - [external]: Regional external passthrough Network Load Balancer
///   (and legacy Regional external proxy NLB). The provider default
///   when the field is left unset.
/// - [externalManaged]: Modern Regional external Application Load
///   Balancer (L7).
/// - [internal]: Internal passthrough Network Load Balancer (L4 ILB).
///   Pairs with [GoogleComputeForwardingRule.backendService] rather
///   than [GoogleComputeForwardingRule.target].
/// - [internalManaged]: Regional Internal Application Load Balancer
///   (L7 ILB) — the dominant production setting for new Regional
///   Internal LB frontends today. Pairs with
///   [GoogleComputeForwardingRule.target] pointing at a regional target
///   HTTP(S) / SSL / TCP proxy.
///
/// Note: the global resource also accepts `INTERNAL_SELF_MANAGED`
/// (Traffic Director); regional forwarding rules do **not** — that
/// scheme is global-only.
enum ForwardingRuleLoadBalancingScheme implements TerraformEnum {
  external('EXTERNAL'),
  externalManaged('EXTERNAL_MANAGED'),
  internal('INTERNAL'),
  internalManaged('INTERNAL_MANAGED');

  const ForwardingRuleLoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network_tier`. Unlike global forwarding rules (which only accept
/// `PREMIUM`), regional forwarding rules accept both tiers. The tier
/// must match the tier of the referenced
/// [GoogleComputeForwardingRule.ipAddress] when one is supplied. Leave
/// `null` to inherit the provider default (`PREMIUM`).
enum ForwardingRuleNetworkTier implements TerraformEnum {
  premium('PREMIUM'),
  standard('STANDARD');

  const ForwardingRuleNetworkTier(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// service_directory_registrations (list block, max_items=1)
// ===========================================================================

/// One entry in `service_directory_registrations`. The schema caps the
/// list at one entry; populated only for forwarding rules whose
/// `loadBalancingScheme` is `INTERNAL` or `INTERNAL_MANAGED` so other
/// consumers in the same project can resolve the rule by Service
/// Directory name.
///
/// Note: the regional resource uses `namespace` + `service` (the
/// Service Directory service name to register under), distinct from
/// the global resource which exposes `namespace` + `service_directory_region`.
@immutable
class ComputeForwardingRuleServiceDirectoryRegistration {
  const ComputeForwardingRuleServiceDirectoryRegistration({
    this.namespace,
    this.service,
  });

  /// Service Directory namespace under which to register the rule.
  /// Defaults from API when omitted.
  final TfArg<String>? namespace;

  /// Service Directory service name to register the rule under.
  final TfArg<String>? service;

  Map<String, Object?> toArgMap() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_forwarding_rule`.
///
/// A ForwardingRule resource. A ForwardingRule resource specifies which pool of
/// target virtual machines to forward a packet to if it matches the given
/// [IPAddress, IPProtocol, portRange] tuple.
///
/// The entry point ("frontend") of a GCP **regional** load balancer. A
/// regional forwarding rule binds a VIP + port range (or port list) to
/// either a regional target proxy (HTTP / HTTPS / TCP / SSL) for L7 /
/// proxy-based balancing, or to a `region_backend_service` for L4
/// passthrough balancing.
///
/// The typical Regional Internal Application LB (L7 ILB) chain looks like:
///
/// ```text
/// google_compute_forwarding_rule              (this resource)
///   → google_compute_region_target_https_proxy
///     → google_compute_region_url_map
///       → google_compute_region_backend_service
/// ```
///
/// The L4 Internal Network LB chain instead routes traffic directly:
///
/// ```text
/// google_compute_forwarding_rule
///   → google_compute_region_backend_service     (via backendService)
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_forwarding_rule.`).
/// - `name`: GCP forwarding rule resource name. 1-63 chars, RFC1035.
///
/// Strongly recommended:
/// - `region`: GCP region the rule lives in. Schema marks the field
///   `Optional + Computed` (provider falls back to the provider's default
///   region), but production callers almost always pin it explicitly so
///   the chain composes deterministically with sibling regional targets,
///   subnetworks, and backend services.
/// - `target` **or** `backendService` (exactly one):
///   - `target`: self-link of an upstream regional target proxy. Required
///     for proxy / Application Load Balancers. Typical L7 callers pass
///     `regionTargetHttpsProxy.selfLink`.
///   - `backendService`: self-link of a regional backend service.
///     Required for **Internal TCP/UDP Load Balancing** and Network Load
///     Balancing; **must be omitted** for all other LB types. Wave 6
///     focuses on the L7 path, so the dominant production pattern is
///     `target`-only.
/// - `loadBalancingScheme`: the dominant production setting for Regional
///   Internal Application Load Balancers is
///   [ForwardingRuleLoadBalancingScheme.internalManaged]. The legacy
///   `EXTERNAL` value (default when unset) targets the older Regional
///   external passthrough / proxy NLB family. `INTERNAL` is the L4 ILB
///   passthrough scheme. `EXTERNAL_MANAGED` is the modern Regional
///   external Application Load Balancer.
/// - `ipAddress`: self-link or literal IP of a reserved
///   [GoogleComputeAddress] (the regional sibling of
///   [GoogleComputeGlobalAddress]). When omitted GCP allocates an
///   ephemeral IP — surprising in CI, set explicitly for stable VIPs.
/// - `portRange`: a single port (e.g. `'443'`) or a range (e.g.
///   `'80-443'`). Required for proxy / Application LBs.
///
/// For Internal forwarding rules (`loadBalancingScheme: INTERNAL` or
/// `INTERNAL_MANAGED`):
/// - `network`: self-link of the VPC the rule's VIP belongs to.
/// - `subnetwork`: self-link of the subnet the VIP is allocated from.
/// Both are required by the API for internal schemes; the schema marks
/// them `Optional + Computed` only because external rules omit them.
///
/// Mutual exclusivity:
/// - `target` vs `backendService`: exactly one. Setting both is rejected
///   at apply time.
/// - `portRange`, `ports`, `allPorts`: pairwise mutually exclusive. Pick
///   one. Application LBs use `portRange`. L4 internal passthrough LBs
///   typically use `ports` (a discrete list, up to 5) or `allPorts`.
///
/// `networkTier` accepts both `PREMIUM` and `STANDARD` for regional
/// rules (unlike global rules, which only accept `PREMIUM`). When
/// `ipAddress` is set, the network tier must match the address's tier.
/// Leave `null` for the provider default (`PREMIUM`).
///
/// The [ipAddress] getter reads `ip_address` — populated with the actual
/// VIP after apply. Useful when the `ipAddress` argument was left unset
/// and GCP allocated an ephemeral IP, or when downstream DNS records need
/// the resolved address.
///
/// [pscConnectionId] is populated only for Private Service Connect
/// consumer forwarding rules; empty otherwise. [pscConnectionStatus]
/// values: `STATUS_UNSPECIFIED` / `PENDING` / `ACCEPTED` / `REJECTED` /
/// `CLOSED`. [baseForwardingRule] is set when this rule has
/// `source_ip_ranges` and shares an `[ip, protocol, port]` tuple with a
/// sibling rule without source ranges. [serviceName] is the internal
/// fully qualified service name; populated only for `INTERNAL` load
/// balancing rules that set [serviceLabel].
///
/// Example (Regional Internal Application LB frontend):
/// ```dart
/// final ilbFwd = GoogleComputeForwardingRule(
///   localName: 'ilb',
///   name: TfArg.literal('ilb-https-frontend'),
///   region: TfArg.literal('us-central1'),
///   target: regionTargetHttpsProxy.selfLink,
///   network: vpc.ref,
///   subnetwork: ilbSubnet.ref,
///   ipAddress: ilbVip.selfLink,
///   ipProtocol: TfArg.literal(ForwardingRuleIpProtocol.tcp),
///   portRange: TfArg.literal('443'),
///   loadBalancingScheme:
///       TfArg.literal(ForwardingRuleLoadBalancingScheme.internalManaged),
/// );
/// ```
///
/// Composition pattern: extends `Resource`
/// for runtime behavior.
final class GoogleComputeForwardingRule extends Resource {
  static const String tfType = 'google_compute_forwarding_rule';

  GoogleComputeForwardingRule({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? target,
    RefTo<GoogleComputeBackendService>? backendService,
    TfArg<String>? ipAddress,
    TfArg<ForwardingRuleIpProtocol>? ipProtocol,
    TfArg<ForwardingRuleIpVersion>? ipVersion,
    TfArg<String>? portRange,
    TfArg<List<String>>? ports,
    TfArg<bool>? allPorts,
    TfArg<ForwardingRuleLoadBalancingScheme>? loadBalancingScheme,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<ForwardingRuleNetworkTier>? networkTier,
    TfArg<List<String>>? sourceIpRanges,
    TfArg<String>? serviceLabel,
    List<ComputeForwardingRuleServiceDirectoryRegistration>?
    serviceDirectoryRegistrations,
    TfArg<bool>? allowGlobalAccess,
    TfArg<bool>? allowPscGlobalAccess,
    TfArg<bool>? isMirroringCollector,
    TfArg<bool>? noAutomateDnsZone,
    TfArg<bool>? recreateClosedPsc,
    TfArg<String>? ipCollection,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'target': ?target,
           'backend_service': ?backendService?.encodeAs('self_link'),
           'ip_address': ?ipAddress,
           'ip_protocol': ?ipProtocol,
           'ip_version': ?ipVersion,
           'port_range': ?portRange,
           'ports': ?ports,
           'all_ports': ?allPorts,
           'load_balancing_scheme': ?loadBalancingScheme,
           'network': ?network?.encodeAs('id'),
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'network_tier': ?networkTier,
           'source_ip_ranges': ?sourceIpRanges,
           'service_label': ?serviceLabel,
           if (serviceDirectoryRegistrations != null)
             'service_directory_registrations': TfArg.literal(
               serviceDirectoryRegistrations.map((r) => r.toArgMap()).toList(),
             ),
           'allow_global_access': ?allowGlobalAccess,
           'allow_psc_global_access': ?allowPscGlobalAccess,
           'is_mirroring_collector': ?isMirroringCollector,
           'no_automate_dns_zone': ?noAutomateDnsZone,
           'recreate_closed_psc': ?recreateClosedPsc,
           'ip_collection': ?ipCollection,
           'labels': ?labels,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeForwardingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeForwardingRule>`.
  RefTo<GoogleComputeForwardingRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_forwarding_rule` attribute.
  TfRef<String> get baseForwardingRule =>
      TfRef.attribute<String>(this, 'base_forwarding_rule');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `forwarding_rule_id` attribute.
  TfRef<num> get forwardingRuleId =>
      TfRef.attribute<num>(this, 'forwarding_rule_id');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `psc_connection_id` attribute.
  TfRef<String> get pscConnectionId =>
      TfRef.attribute<String>(this, 'psc_connection_id');

  /// Reference to `psc_connection_status` attribute.
  TfRef<String> get pscConnectionStatus =>
      TfRef.attribute<String>(this, 'psc_connection_status');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `all_ports` attribute.
  TfRef<bool> get allPorts => TfRef.attribute<bool>(this, 'all_ports');

  /// Reference to `allow_global_access` attribute.
  TfRef<bool> get allowGlobalAccess =>
      TfRef.attribute<bool>(this, 'allow_global_access');

  /// Reference to `allow_psc_global_access` attribute.
  TfRef<bool> get allowPscGlobalAccess =>
      TfRef.attribute<bool>(this, 'allow_psc_global_access');

  /// Reference to `backend_service` attribute.
  TfRef<String> get backendService =>
      TfRef.attribute<String>(this, 'backend_service');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_collection` attribute.
  TfRef<String> get ipCollection =>
      TfRef.attribute<String>(this, 'ip_collection');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `is_mirroring_collector` attribute.
  TfRef<bool> get isMirroringCollector =>
      TfRef.attribute<bool>(this, 'is_mirroring_collector');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_tier` attribute.
  TfRef<String> get networkTier =>
      TfRef.attribute<String>(this, 'network_tier');

  /// Reference to `no_automate_dns_zone` attribute.
  TfRef<bool> get noAutomateDnsZone =>
      TfRef.attribute<bool>(this, 'no_automate_dns_zone');

  /// Reference to `port_range` attribute.
  TfRef<String> get portRange => TfRef.attribute<String>(this, 'port_range');

  /// Reference to `ports` attribute.
  TfRef<List<String>> get ports => TfRef.attribute<List<String>>(this, 'ports');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `recreate_closed_psc` attribute.
  TfRef<bool> get recreateClosedPsc =>
      TfRef.attribute<bool>(this, 'recreate_closed_psc');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_label` attribute.
  TfRef<String> get serviceLabel =>
      TfRef.attribute<String>(this, 'service_label');

  /// Reference to `source_ip_ranges` attribute.
  TfRef<List<String>> get sourceIpRanges =>
      TfRef.attribute<List<String>>(this, 'source_ip_ranges');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
