// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
enum GlobalForwardingRuleIpProtocol {
  tcp('TCP'),
  udp('UDP'),
  esp('ESP'),
  ah('AH'),
  sctp('SCTP'),
  icmp('ICMP');

  const GlobalForwardingRuleIpProtocol(this.terraformValue);
  final String terraformValue;
}

/// IP version for the global forwarding rule's VIP. Default `IPV4`.
/// Selecting [ipv6] requires a global IPv6 [GoogleComputeGlobalAddress]
/// for [GoogleComputeGlobalForwardingRule.ipAddress].
enum GlobalForwardingRuleIpVersion {
  ipv4('IPV4'),
  ipv6('IPV6');

  const GlobalForwardingRuleIpVersion(this.terraformValue);
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
enum GlobalForwardingRuleLoadBalancingScheme {
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
  final String terraformValue;
}

/// `network_tier`. For global forwarding rules GCP only accepts
/// `PREMIUM` at apply time — the schema lists `STANDARD` for symmetry
/// with the regional resource, but supplying it on a global rule
/// errors out. Leave the field `null` (provider default = `PREMIUM`)
/// unless overriding is explicitly needed.
enum GlobalForwardingRuleNetworkTier {
  premium('PREMIUM'),
  standard('STANDARD');

  const GlobalForwardingRuleNetworkTier(this.terraformValue);
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
enum GlobalForwardingRuleMigrationState {
  prepare('PREPARE'),
  testByPercentage('TEST_BY_PERCENTAGE'),
  testAllTraffic('TEST_ALL_TRAFFIC');

  const GlobalForwardingRuleMigrationState(this.terraformValue);
  final String terraformValue;
}

/// `metadata_filters[*].filter_match_criteria`. Controls how the
/// nested [GlobalForwardingRuleMetadataFilterLabel] entries combine.
///
/// - [matchAny]: at least one filter label must match a label in the
///   xDS client's node metadata.
/// - [matchAll]: every filter label must match.
enum GlobalForwardingRuleMetadataFilterMatchCriteria {
  matchAny('MATCH_ANY'),
  matchAll('MATCH_ALL');

  const GlobalForwardingRuleMetadataFilterMatchCriteria(this.terraformValue);
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
class GlobalForwardingRuleMetadataFilter {
  const GlobalForwardingRuleMetadataFilter({
    required this.filterMatchCriteria,
    required this.filterLabels,
  });

  /// Whether the [filterLabels] entries are AND-combined ([GlobalForwardingRuleMetadataFilterMatchCriteria.matchAll])
  /// or OR-combined ([GlobalForwardingRuleMetadataFilterMatchCriteria.matchAny]).
  final TfArg<GlobalForwardingRuleMetadataFilterMatchCriteria>
      filterMatchCriteria;

  /// 1-64 label entries. Must be non-empty by schema (`min_items: 1`).
  final List<GlobalForwardingRuleMetadataFilterLabel> filterLabels;

  Map<String, Object?> toArgMap() => {
        'filter_match_criteria': filterMatchCriteria.toTfJson(),
        'filter_labels': filterLabels.map((l) => l.toArgMap()).toList(),
      };
}

/// One `metadata_filters[*].filter_labels[*]` entry. Both [name] and
/// [value] are required by the provider schema; lengths are capped at
/// 1024 characters by the API (not enforced here).
@immutable
class GlobalForwardingRuleMetadataFilterLabel {
  const GlobalForwardingRuleMetadataFilterLabel({
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
class GlobalForwardingRuleServiceDirectoryRegistration {
  const GlobalForwardingRuleServiceDirectoryRegistration({
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

/// Factory wrapper for `google_compute_global_forwarding_rule` (provider
/// `hashicorp/google ~> 7.0`).
///
/// The entry point ("frontend") of a GCP global load balancer. A global
/// forwarding rule binds a public anycast VIP + port range to a target
/// proxy (HTTP / HTTPS / SSL / TCP / gRPC), which in turn fans out to a
/// `url_map` and one or more backend services. The full external HTTP(S)
/// LB chain looks like:
///
/// ```
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
///   pass `TfArg.ref(targetHttpsProxy.selfLink)` — see
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
/// Example (external HTTPS L7 Application LB frontend):
/// ```dart
/// final feFwd = GoogleComputeGlobalForwardingRule(
///   localName: 'fe',
///   name: TfArg.literal('lb-https-frontend'),
///   target: TfArg.ref(httpsProxy.selfLink),
///   ipAddress: TfArg.ref(lbVip.selfLink),
///   ipProtocol: TfArg.literal(GlobalForwardingRuleIpProtocol.tcp),
///   portRange: TfArg.literal('443'),
///   loadBalancingScheme:
///       TfArg.literal(GlobalForwardingRuleLoadBalancingScheme.externalManaged),
/// );
/// ```
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
/// Composition pattern: extends `Resource<$GoogleComputeGlobalForwardingRule>`
/// for runtime behavior.
final class GoogleComputeGlobalForwardingRule extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_global_forwarding_rule';

  GoogleComputeGlobalForwardingRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> target,
    TfArg<String>? ipAddress,
    TfArg<GlobalForwardingRuleIpProtocol>? ipProtocol,
    TfArg<GlobalForwardingRuleIpVersion>? ipVersion,
    TfArg<String>? portRange,
    TfArg<GlobalForwardingRuleLoadBalancingScheme>? loadBalancingScheme,
    TfArg<String>? network,
    TfArg<String>? subnetwork,
    TfArg<GlobalForwardingRuleNetworkTier>? networkTier,
    TfArg<List<String>>? sourceIpRanges,
    List<GlobalForwardingRuleMetadataFilter>? metadataFilters,
    List<GlobalForwardingRuleServiceDirectoryRegistration>?
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
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'target': target,
            if (ipAddress != null) 'ip_address': ipAddress,
            if (ipProtocol != null) 'ip_protocol': ipProtocol,
            if (ipVersion != null) 'ip_version': ipVersion,
            if (portRange != null) 'port_range': portRange,
            if (loadBalancingScheme != null)
              'load_balancing_scheme': loadBalancingScheme,
            if (network != null) 'network': network,
            if (subnetwork != null) 'subnetwork': subnetwork,
            if (networkTier != null) 'network_tier': networkTier,
            if (sourceIpRanges != null) 'source_ip_ranges': sourceIpRanges,
            if (metadataFilters != null)
              'metadata_filters': TfArg.literal(
                metadataFilters.map((f) => f.toArgMap()).toList(),
              ),
            if (serviceDirectoryRegistrations != null)
              'service_directory_registrations': TfArg.literal(
                serviceDirectoryRegistrations.map((r) => r.toArgMap()).toList(),
              ),
            if (externalManagedBackendBucketMigrationState != null)
              'external_managed_backend_bucket_migration_state':
                  externalManagedBackendBucketMigrationState,
            if (externalManagedBackendBucketMigrationTestingPercentage != null)
              'external_managed_backend_bucket_migration_testing_percentage':
                  externalManagedBackendBucketMigrationTestingPercentage,
            if (noAutomateDnsZone != null)
              'no_automate_dns_zone': noAutomateDnsZone,
            if (labels != null) 'labels': labels,
            if (description != null) 'description': description,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeGlobalForwardingRuleSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `fwd.nameRef` →
  /// `${google_compute_global_forwarding_rule.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/forwardingRules/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `ip_address` — populated with the actual
  /// VIP after apply. Useful when [ipAddress] was left unset and GCP
  /// allocated an ephemeral IP, or when downstream DNS records need the
  /// resolved address.
  TfRef<String> get ipAddressRef => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to the computed `forwarding_rule_id` (numeric server-side
  /// resource identifier). Available after apply.
  TfRef<num> get forwardingRuleId =>
      TfRef.attribute<num>(this, 'forwarding_rule_id');

  /// Reference to the computed `psc_connection_id`. Populated only for
  /// Private Service Connect consumer forwarding rules; empty otherwise.
  TfRef<String> get pscConnectionId =>
      TfRef.attribute<String>(this, 'psc_connection_id');

  /// Reference to the computed `psc_connection_status`
  /// (`STATUS_UNSPECIFIED` / `PENDING` / `ACCEPTED` / `REJECTED` /
  /// `CLOSED`). Populated only for PSC consumer rules.
  TfRef<String> get pscConnectionStatus =>
      TfRef.attribute<String>(this, 'psc_connection_status');

  /// Reference to the computed `base_forwarding_rule` — set when this
  /// rule has `source_ip_ranges` and shares an `[ip, protocol, port]`
  /// tuple with a sibling rule without source ranges.
  TfRef<String> get baseForwardingRule =>
      TfRef.attribute<String>(this, 'base_forwarding_rule');

  /// Reference to the computed `label_fingerprint` for optimistic
  /// locking on label updates.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');
}
