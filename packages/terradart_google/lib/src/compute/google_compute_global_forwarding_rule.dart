// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_global_forwarding_rule`.
const Set<String> _googleComputeGlobalForwardingRuleSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// IP protocol for `google_compute_global_forwarding_rule.ip_protocol`.
/// The set of protocols accepted at apply time depends on the load
/// balancing scheme and target type — Application Load Balancers want
/// [tcp]; protocol forwarding rules may also pick [udp] / [esp] / [ah]
/// / [sctp] / [icmp].
///
/// The provider schema also documents `L3_DEFAULT` in narrative prose
/// for advanced internal protocol forwarding; that value is not
/// declared in the structured enum list and is therefore omitted from
/// this typed enum. Callers who need it can drop down to a raw
/// `TfArg.literal<String>('L3_DEFAULT')` via the wrapper's untyped
/// escape hatch.
enum GlobalForwardingRuleIpProtocol implements TerraformEnum {
  tcp('TCP'),
  udp('UDP'),
  esp('ESP'),
  ah('AH'),
  sctp('SCTP'),
  icmp('ICMP');

  const GlobalForwardingRuleIpProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// IP version for the global forwarding rule's VIP. Default `IPV4`.
/// Selecting [ipv6] requires a global IPv6 [GoogleComputeGlobalAddress]
/// for [GoogleComputeGlobalForwardingRule.ipAddress].
enum GlobalForwardingRuleIpVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const GlobalForwardingRuleIpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `load_balancing_scheme`. Picks which load balancer variant this
/// forwarding rule fronts.
///
/// - [external]: Classic Application Load Balancer (legacy global
///   external HTTP(S) LB). New deployments should prefer
///   [externalManaged].
/// - [externalManaged]: Global external Application Load Balancer
///   (modern L7). The dominant production setting for new global
///   HTTP(S) LB frontends today.
/// - [internalManaged]: API-rejected on most global forwarding rules.
///   The GCP API only accepts this value for the cross-region internal
///   Application Load Balancer exception, and even there it is
///   uncommon. Do not select this for general global LB frontends —
///   apply will fail.
/// - [internalSelfManaged]: Traffic Director (xDS) — proxyless gRPC
///   service mesh. The only scheme that honors `metadata_filters`.
enum GlobalForwardingRuleLoadBalancingScheme implements TerraformEnum {
  external('EXTERNAL'),
  externalManaged('EXTERNAL_MANAGED'),

  /// API-rejected on most global forwarding rules: the GCP API only
  /// accepts `INTERNAL_MANAGED` here for the cross-region internal
  /// Application Load Balancer exception, and even within that
  /// exception it is an uncommon configuration. Selecting this value
  /// for a standard global LB frontend will fail at apply time.
  internalManaged('INTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED');

  const GlobalForwardingRuleLoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network_tier`. For global forwarding rules GCP only accepts
/// `PREMIUM` at apply time — the schema lists `STANDARD` for symmetry
/// with the regional resource, but supplying it on a global rule
/// errors out. Leave the field `null` (provider default = `PREMIUM`)
/// unless overriding is explicitly needed.
enum GlobalForwardingRuleNetworkTier implements TerraformEnum {
  premium('PREMIUM'),
  standard('STANDARD');

  const GlobalForwardingRuleNetworkTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// `external_managed_backend_bucket_migration_state`. Drives the
/// canary migration of backend buckets attached to this forwarding
/// rule from `EXTERNAL` (Classic ALB) to `EXTERNAL_MANAGED` (modern
/// global external ALB).
///
/// Migration is staged via three states applied in order:
/// 1. [prepare]: ready the buckets for the cutover.
/// 2. [testByPercentage]: split traffic by
///    [GoogleComputeGlobalForwardingRule.externalManagedBackendBucketMigrationTestingPercentage].
/// 3. [testAllTraffic]: route 100% before switching
///    `loadBalancingScheme` to [GlobalForwardingRuleLoadBalancingScheme.externalManaged].
/// Rollback walks the same states in reverse.
enum GlobalForwardingRuleMigrationState implements TerraformEnum {
  prepare('PREPARE'),
  testByPercentage('TEST_BY_PERCENTAGE'),
  testAllTraffic('TEST_ALL_TRAFFIC');

  const GlobalForwardingRuleMigrationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `metadata_filters[*].filter_match_criteria`. Controls how the
/// nested [ComputeGlobalForwardingRuleMetadataFilterLabel] entries combine.
///
/// - [matchAny]: at least one filter label must match a label in the
///   xDS client's node metadata.
/// - [matchAll]: every filter label must match.
enum GlobalForwardingRuleMetadataFilterMatchCriteria implements TerraformEnum {
  matchAny('MATCH_ANY'),
  matchAll('MATCH_ALL');

  const GlobalForwardingRuleMetadataFilterMatchCriteria(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// metadata_filters (list block — Traffic Director only)
// ===========================================================================

/// One entry in `metadata_filters`. Only consulted by Traffic Director
/// (`loadBalancingScheme: INTERNAL_SELF_MANAGED`) forwarding rules —
/// silently ignored for every other scheme. xDS clients present node
/// metadata in their config request; this filter gates which routing
/// config gets returned to which client.
@immutable
class ComputeGlobalForwardingRuleMetadataFilter {
  const ComputeGlobalForwardingRuleMetadataFilter({
    required this.filterMatchCriteria,
    required this.filterLabels,
  });

  /// Whether the [filterLabels] entries are AND-combined ([GlobalForwardingRuleMetadataFilterMatchCriteria.matchAll])
  /// or OR-combined ([GlobalForwardingRuleMetadataFilterMatchCriteria.matchAny]).
  final TfArg<GlobalForwardingRuleMetadataFilterMatchCriteria>
  filterMatchCriteria;

  /// 1-64 label entries. Must be non-empty by schema (`min_items: 1`).
  final List<ComputeGlobalForwardingRuleMetadataFilterLabel> filterLabels;

  Map<String, Object?> toArgMap() => {
    'filter_match_criteria': filterMatchCriteria.toTfJson(),
    'filter_labels': filterLabels.map((l) => l.toArgMap()).toList(),
  };
}

/// One `metadata_filters[*].filter_labels[*]` entry. Both [name] and
/// [value] are required by the provider schema; lengths are capped at
/// 1024 characters by the API (not enforced here).
@immutable
class ComputeGlobalForwardingRuleMetadataFilterLabel {
  const ComputeGlobalForwardingRuleMetadataFilterLabel({
    required this.name,
    required this.value,
  });

  /// Label name xDS clients advertise in their node metadata.
  final TfArg<String> name;

  /// Required match value.
  final TfArg<String> value;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

// ===========================================================================
// service_directory_registrations (list block, max_items=1)
// ===========================================================================

/// One entry in `service_directory_registrations`. The schema caps the
/// list at one entry; populated only for Private Service Connect
/// forwarding rules that target Google APIs (so other consumers in the
/// same project can resolve the rule by Service Directory name).
@immutable
class ComputeGlobalForwardingRuleServiceDirectoryRegistration {
  const ComputeGlobalForwardingRuleServiceDirectoryRegistration({
    this.namespace,
    this.serviceDirectoryRegion,
  });

  /// Service Directory namespace under which to register the rule.
  /// Defaults from API when omitted.
  final TfArg<String>? namespace;

  /// Service Directory region for the registration. Defaults to
  /// `'us-central1'` on the API side. Only used for PSC-to-Google-APIs
  /// rules — all such rules on the same VPC should use the same region.
  final TfArg<String>? serviceDirectoryRegion;

  Map<String, Object?> toArgMap() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (serviceDirectoryRegion != null)
      'service_directory_region': serviceDirectoryRegion!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_global_forwarding_rule`.
///
/// Represents a GlobalForwardingRule resource. Global forwarding rules are used
/// to forward traffic to the correct load balancer for HTTP load balancing.
/// Global forwarding rules can only be used for HTTP load balancing.
///
/// For more information, see
/// https://cloud.google.com/compute/docs/load-balancing/http/
///
/// The entry point ("frontend") of a GCP global load balancer. A global
/// forwarding rule binds a public anycast VIP + port range to a target
/// proxy (HTTP / HTTPS / SSL / TCP / gRPC), which in turn fans out to a
/// `url_map` and one or more backend services. The full external HTTP(S)
/// LB chain looks like:
///
/// ```text
/// google_compute_global_forwarding_rule
///   → google_compute_target_https_proxy
///     → google_compute_url_map
///       → google_compute_backend_service
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_global_forwarding_rule.`).
/// - `name`: GCP forwarding rule resource name. 1-63 chars, RFC1035.
/// - `target`: self-link of the upstream target proxy. Typical callers
///   pass `targetHttpsProxy.selfLink` — see
///   [GoogleComputeTargetHttpsProxy] / [GoogleComputeTargetHttpProxy].
///
/// Strongly recommended:
/// - `loadBalancingScheme`: today the dominant production setting for
///   global rules is [GlobalForwardingRuleLoadBalancingScheme.externalManaged]
///   — the L7 Application Load Balancer (modern, non-classic). The legacy
///   `external` value still targets the Classic Application Load Balancer.
///   Note: [GlobalForwardingRuleLoadBalancingScheme.internalManaged] is
///   API-rejected on most global forwarding rules — the GCP API only
///   accepts it for the cross-region internal Application Load Balancer
///   exception (uncommon). Do not pick it for general global LB frontends.
/// - `ipAddress`: self-link or literal IP of a reserved
///   [GoogleComputeGlobalAddress]. When omitted GCP allocates an
///   ephemeral IP — surprising in CI, set explicitly for stable VIPs.
/// - `portRange`: a single port (e.g. `'443'`) or a range
///   (e.g. `'80-443'`). Required for proxy / Application Load Balancers.
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
/// sibling rule without source ranges.
///
/// `networkTier` is `PREMIUM`-only for global rules per GCP — the schema
/// declares both values for symmetry with the regional resource, but
/// `STANDARD` is rejected at apply time for global. Leave the field
/// `null` (provider default) unless you need to override.
///
/// `metadataFilters` only applies to forwarding rules whose
/// `loadBalancingScheme` is `INTERNAL_SELF_MANAGED` (Traffic Director).
/// Skip the field for normal Application LB frontends.
///
/// Example (external HTTPS L7 Application LB frontend):
/// ```dart
/// final feFwd = GoogleComputeGlobalForwardingRule(
///   localName: 'fe',
///   name: TfArg.literal('lb-https-frontend'),
///   target: httpsProxy.selfLink,
///   ipAddress: lbVip.selfLink,
///   ipProtocol: TfArg.literal(GlobalForwardingRuleIpProtocol.tcp),
///   portRange: TfArg.literal('443'),
///   loadBalancingScheme:
///       TfArg.literal(GlobalForwardingRuleLoadBalancingScheme.externalManaged),
/// );
/// ```
///
/// Composition pattern: extends `Resource`
/// for runtime behavior.
final class GoogleComputeGlobalForwardingRule extends Resource {
  static const String tfType = 'google_compute_global_forwarding_rule';

  GoogleComputeGlobalForwardingRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> target,
    TfArg<String>? ipAddress,
    TfArg<GlobalForwardingRuleIpProtocol>? ipProtocol,
    TfArg<GlobalForwardingRuleIpVersion>? ipVersion,
    TfArg<String>? portRange,
    TfArg<GlobalForwardingRuleLoadBalancingScheme>? loadBalancingScheme,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<GlobalForwardingRuleNetworkTier>? networkTier,
    TfArg<List<String>>? sourceIpRanges,
    List<ComputeGlobalForwardingRuleMetadataFilter>? metadataFilters,
    List<ComputeGlobalForwardingRuleServiceDirectoryRegistration>?
    serviceDirectoryRegistrations,
    TfArg<GlobalForwardingRuleMigrationState>?
    externalManagedBackendBucketMigrationState,
    TfArg<num>? externalManagedBackendBucketMigrationTestingPercentage,
    TfArg<bool>? noAutomateDnsZone,
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
           'target': target,
           'ip_address': ?ipAddress,
           'ip_protocol': ?ipProtocol,
           'ip_version': ?ipVersion,
           'port_range': ?portRange,
           'load_balancing_scheme': ?loadBalancingScheme,
           'network': ?network?.encodeAs('id'),
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'network_tier': ?networkTier,
           'source_ip_ranges': ?sourceIpRanges,
           if (metadataFilters != null)
             'metadata_filters': TfArg.literal(
               metadataFilters.map((f) => f.toArgMap()).toList(),
             ),
           if (serviceDirectoryRegistrations != null)
             'service_directory_registrations': TfArg.literal(
               serviceDirectoryRegistrations.map((r) => r.toArgMap()).toList(),
             ),
           'external_managed_backend_bucket_migration_state':
               ?externalManagedBackendBucketMigrationState,
           'external_managed_backend_bucket_migration_testing_percentage':
               ?externalManagedBackendBucketMigrationTestingPercentage,
           'no_automate_dns_zone': ?noAutomateDnsZone,
           'labels': ?labels,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeGlobalForwardingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeGlobalForwardingRule>`.
  RefTo<GoogleComputeGlobalForwardingRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_forwarding_rule` attribute.
  TfRef<String> get baseForwardingRule =>
      TfRef.attribute<String>(this, 'base_forwarding_rule');

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `external_managed_backend_bucket_migration_state` attribute.
  TfRef<String> get externalManagedBackendBucketMigrationState =>
      TfRef.attribute<String>(
        this,
        'external_managed_backend_bucket_migration_state',
      );

  /// Reference to `external_managed_backend_bucket_migration_testing_percentage` attribute.
  TfRef<num> get externalManagedBackendBucketMigrationTestingPercentage =>
      TfRef.attribute<num>(
        this,
        'external_managed_backend_bucket_migration_testing_percentage',
      );

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_ip_ranges` attribute.
  TfRef<List<String>> get sourceIpRanges =>
      TfRef.attribute<List<String>>(this, 'source_ip_ranges');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
