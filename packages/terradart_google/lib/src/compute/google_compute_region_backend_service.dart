// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_backend_service`.
const Set<String> _googleComputeRegionBackendServiceSensitive = <String>{
  'iap.oauth2_client_secret',
  'iap.oauth2_client_secret_sha256',
};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Wire protocol the regional backend service uses to talk to backends.
/// `HTTP2` and `H2C` require an HTTP(S)-class load balancer; `TCP`,
/// `SSL`, and `UDP` are for Passthrough Network Load Balancing /
/// regional internal proxy routing. `GRPC` is required when the URL
/// map is bound to a regional target gRPC proxy.
enum RegionBackendServiceProtocol {
  http('HTTP'),
  https('HTTPS'),
  http2('HTTP2'),
  tcp('TCP'),
  ssl('SSL'),
  udp('UDP'),
  grpc('GRPC'),
  unspecified('UNSPECIFIED'),
  h2c('H2C');

  const RegionBackendServiceProtocol(this.terraformValue);
  final String terraformValue;
}

/// `load_balancing_scheme`. A backend service of one scheme cannot be
/// repurposed for another — the value is effectively immutable.
///
/// **Regional-vs-global**: this wrapper is for the *regional* variant
/// (`google_compute_region_backend_service`). The full set of values
/// is accepted at apply time depending on the front-end load balancer
/// kind — most notably [internal] (Internal Passthrough NLB) and
/// [internalManaged] (Internal Application LB / Regional External
/// Application LB) are unique to the regional resource and will be
/// rejected by `google_compute_backend_service`.
enum RegionBackendServiceLoadBalancingScheme {
  external('EXTERNAL'),
  externalManaged('EXTERNAL_MANAGED'),
  internal('INTERNAL'),
  internalManaged('INTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED');

  const RegionBackendServiceLoadBalancingScheme(this.terraformValue);
  final String terraformValue;
}

/// `locality_lb_policy`. See the schema docstring for the matrix of which
/// values are valid for which combination of `protocol` and
/// `load_balancing_scheme` — Cloud Load Balancing silently coerces
/// invalid values to the scheme's default at apply time. For External
/// Passthrough NLBs only [maglev] and [weightedMaglev] are honored;
/// for INTERNAL_MANAGED with HTTP-class protocols the full set is
/// available.
enum RegionBackendServiceLocalityLbPolicy {
  roundRobin('ROUND_ROBIN'),
  leastRequest('LEAST_REQUEST'),
  ringHash('RING_HASH'),
  random('RANDOM'),
  originalDestination('ORIGINAL_DESTINATION'),
  maglev('MAGLEV'),
  weightedMaglev('WEIGHTED_MAGLEV'),
  weightedRoundRobin('WEIGHTED_ROUND_ROBIN');

  const RegionBackendServiceLocalityLbPolicy(this.terraformValue);
  final String terraformValue;
}

/// `session_affinity`. Applicable only when the locality LB policy is
/// one of `MAGLEV`, `WEIGHTED_MAGLEV`, or `RING_HASH` for HTTP-class
/// balancers; for Passthrough NLBs [clientIp] and the
/// 5-tuple variants apply directly. The regional resource adds
/// [clientIpNoDestination] (Passthrough NLB variant that ignores the
/// destination tuple component) versus the global resource.
enum RegionBackendServiceSessionAffinity {
  none('NONE'),
  clientIp('CLIENT_IP'),
  clientIpPortProto('CLIENT_IP_PORT_PROTO'),
  clientIpProto('CLIENT_IP_PROTO'),
  generatedCookie('GENERATED_COOKIE'),
  headerField('HEADER_FIELD'),
  httpCookie('HTTP_COOKIE'),
  clientIpNoDestination('CLIENT_IP_NO_DESTINATION'),
  strongCookieAffinity('STRONG_COOKIE_AFFINITY');

  const RegionBackendServiceSessionAffinity(this.terraformValue);
  final String terraformValue;
}

/// `ip_address_selection_policy`. Controls IPv4-vs-IPv6 preference when
/// the load balancer dials a backend (or when a proxyless gRPC client
/// dials directly).
enum RegionBackendServiceIpAddressSelectionPolicy {
  ipv4Only('IPV4_ONLY'),
  preferIpv6('PREFER_IPV6'),
  ipv6Only('IPV6_ONLY');

  const RegionBackendServiceIpAddressSelectionPolicy(this.terraformValue);
  final String terraformValue;
}

/// Per-backend balancing mode. See [RegionBackendServiceBackend.balancingMode].
/// Note: the regional resource omits the global `IN_FLIGHT` mode.
enum RegionBackendServiceBalancingMode {
  utilization('UTILIZATION'),
  rate('RATE'),
  connection('CONNECTION'),
  customMetrics('CUSTOM_METRICS');

  const RegionBackendServiceBalancingMode(this.terraformValue);
  final String terraformValue;
}

/// `cdn_policy.cache_mode`. Enabling CDN (`enable_cdn = true`) without
/// setting this defaults to `CACHE_ALL_STATIC`.
enum RegionBackendServiceCacheMode {
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  cacheAllStatic('CACHE_ALL_STATIC');

  const RegionBackendServiceCacheMode(this.terraformValue);
  final String terraformValue;
}

/// `log_config.optional_mode`. Controls which optional access-log
/// fields are exported when [RegionBackendServiceLogConfig.enable] is
/// true.
enum RegionBackendServiceLogOptionalMode {
  includeAllOptional('INCLUDE_ALL_OPTIONAL'),
  excludeAllOptional('EXCLUDE_ALL_OPTIONAL'),
  custom('CUSTOM');

  const RegionBackendServiceLogOptionalMode(this.terraformValue);
  final String terraformValue;
}

/// `ha_policy.fast_ip_move`. Controls fast IP-move behavior for
/// self-managed HA on Passthrough NLBs.
///
/// - [disabled]: only the `haPolicy.leader` API can update the leader.
/// - [garpRa]: a candidate endpoint VM sends a Gratuitous ARP (IPv4)
///   or ICMPv6 Router Advertisement (IPv6) packet to immediately but
///   temporarily redirect traffic to itself. Faster than the leader
///   API path; intended for sub-second failover.
enum RegionBackendServiceFastIpMove {
  disabled('DISABLED'),
  garpRa('GARP_RA');

  const RegionBackendServiceFastIpMove(this.terraformValue);
  final String terraformValue;
}

/// `network_pass_through_lb_traffic_policy.zonal_affinity.spillover`.
/// Zonal-affinity selector for Internal Passthrough NLBs.
enum RegionBackendServiceZonalAffinitySpillover {
  zonalAffinityDisabled('ZONAL_AFFINITY_DISABLED'),
  zonalAffinitySpillCrossZone('ZONAL_AFFINITY_SPILL_CROSS_ZONE'),
  zonalAffinityStayWithinZone('ZONAL_AFFINITY_STAY_WITHIN_ZONE');

  const RegionBackendServiceZonalAffinitySpillover(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// backend block (nesting=set) and its custom_metrics sub-block
// ===========================================================================

/// One entry in the `backends` set. The backend's [group] is the
/// self-link of an Instance Group, regional MIG, or regional Network
/// Endpoint Group — all backends in a single service must share the
/// same kind (no mixing IG with NEG). Note: regional backends carry
/// a [failover] flag (used by
/// [RegionBackendServiceFailoverPolicy]) and do **not** support the
/// global resource's `preference` field.
@immutable
class RegionBackendServiceBackend {
  const RegionBackendServiceBackend({
    required this.group,
    this.balancingMode,
    this.capacityScaler,
    this.description,
    this.failover,
    this.maxConnections,
    this.maxConnectionsPerEndpoint,
    this.maxConnectionsPerInstance,
    this.maxRate,
    this.maxRatePerEndpoint,
    this.maxRatePerInstance,
    this.maxUtilization,
    this.customMetrics,
  });

  /// Fully-qualified self-link of an Instance Group or Network
  /// Endpoint Group. Required.
  final TfArg<String> group;

  /// How the load balancer measures capacity for this backend.
  final RegionBackendServiceBalancingMode? balancingMode;

  /// Multiplier on the group's configured capacity (`0.0`-`1.0`).
  /// Setting to `0.0` drains the backend. Cannot be set for `INTERNAL`
  /// (Passthrough NLB) backend services; required for every other
  /// scheme.
  final double? capacityScaler;

  /// Free-form description.
  final TfArg<String>? description;

  /// Marks this backend as a failover backend within an Internal
  /// Passthrough NLB. More than one failover backend may be configured;
  /// promotion is driven by [RegionBackendServiceFailoverPolicy].
  final bool? failover;

  /// Max simultaneous connections for the group (`CONNECTION` /
  /// `UTILIZATION` modes). Cannot be set for `INTERNAL` schemes.
  final int? maxConnections;

  /// Max simultaneous connections per endpoint (NEG-shaped backends).
  final int? maxConnectionsPerEndpoint;

  /// Max simultaneous connections per backend instance (IG-shaped
  /// backends).
  final int? maxConnectionsPerInstance;

  /// Max RPS for the group (`RATE` / `UTILIZATION` modes).
  final int? maxRate;

  /// Max RPS per endpoint.
  final double? maxRatePerEndpoint;

  /// Max RPS per instance.
  final double? maxRatePerInstance;

  /// Target CPU utilization in `UTILIZATION` mode (`0.0`-`1.0`).
  final double? maxUtilization;

  /// Custom metrics descriptors for `CUSTOM_METRICS` balancing.
  final List<RegionBackendServiceBackendCustomMetric>? customMetrics;

  Map<String, Object?> toArgMap() => {
        'group': group.toTfJson(),
        if (balancingMode != null)
          'balancing_mode': balancingMode!.terraformValue,
        if (capacityScaler != null) 'capacity_scaler': capacityScaler,
        if (description != null) 'description': description!.toTfJson(),
        if (failover != null) 'failover': failover,
        if (maxConnections != null) 'max_connections': maxConnections,
        if (maxConnectionsPerEndpoint != null)
          'max_connections_per_endpoint': maxConnectionsPerEndpoint,
        if (maxConnectionsPerInstance != null)
          'max_connections_per_instance': maxConnectionsPerInstance,
        if (maxRate != null) 'max_rate': maxRate,
        if (maxRatePerEndpoint != null)
          'max_rate_per_endpoint': maxRatePerEndpoint,
        if (maxRatePerInstance != null)
          'max_rate_per_instance': maxRatePerInstance,
        if (maxUtilization != null) 'max_utilization': maxUtilization,
        if (customMetrics != null)
          'custom_metrics': customMetrics!.map((m) => m.toArgMap()).toList(),
      };
}

/// One entry under `backend.custom_metrics` — a signal exported by the
/// backend that the load balancer should consider when `balancingMode`
/// is [RegionBackendServiceBalancingMode.customMetrics].
@immutable
class RegionBackendServiceBackendCustomMetric {
  const RegionBackendServiceBackendCustomMetric({
    required this.name,
    required this.dryRun,
    this.maxUtilization,
  });

  /// Metric name. 1-64 chars, lowercase RFC1035-ish (see schema).
  final TfArg<String> name;

  /// If `true`, the metric is reported to Cloud Monitoring but is not
  /// used for load balancing.
  final bool dryRun;

  /// Optional target utilization (`0.0`-`1.0`) for this metric.
  final double? maxUtilization;

  Map<String, Object?> toArgMap() => {
        'name': name.toTfJson(),
        'dry_run': dryRun,
        if (maxUtilization != null) 'max_utilization': maxUtilization,
      };
}

// ===========================================================================
// cdn_policy block (max_items=1) and its sub-blocks
// ===========================================================================

/// `cdn_policy` block. Only honored when [enableCdn] is `true`.
/// The regional schema omits the global resource's
/// `bypass_cache_on_request_headers` and `request_coalescing` fields.
@immutable
class RegionBackendServiceCdnPolicy {
  const RegionBackendServiceCdnPolicy({
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
    this.cacheKeyPolicy,
    this.negativeCachingPolicy,
  });

  /// Cache mode. Defaults to `CACHE_ALL_STATIC` when CDN is enabled.
  final RegionBackendServiceCacheMode? cacheMode;

  /// Max TTL (seconds) for content served to clients.
  final int? clientTtl;

  /// Default TTL for cached content with no upstream `Cache-Control`.
  final int? defaultTtl;

  /// Hard ceiling on cached content TTL.
  final int? maxTtl;

  /// Negative caching for selected status codes.
  final bool? negativeCaching;

  /// Serve cached content during origin revalidation/errors (seconds).
  final int? serveWhileStale;

  /// TTL for signed-URL responses (defaults to 3600).
  final int? signedUrlCacheMaxAgeSec;

  /// Cache key policy — which request components participate in the
  /// cache key.
  final RegionBackendServiceCdnCacheKeyPolicy? cacheKeyPolicy;

  /// Per-status-code negative-cache TTLs. Only honored when
  /// [negativeCaching] is `true`.
  final List<RegionBackendServiceCdnNegativeCachingPolicy>?
      negativeCachingPolicy;

  Map<String, Object?> toArgMap() => {
        if (cacheMode != null) 'cache_mode': cacheMode!.terraformValue,
        if (clientTtl != null) 'client_ttl': clientTtl,
        if (defaultTtl != null) 'default_ttl': defaultTtl,
        if (maxTtl != null) 'max_ttl': maxTtl,
        if (negativeCaching != null) 'negative_caching': negativeCaching,
        if (serveWhileStale != null) 'serve_while_stale': serveWhileStale,
        if (signedUrlCacheMaxAgeSec != null)
          'signed_url_cache_max_age_sec': signedUrlCacheMaxAgeSec,
        if (cacheKeyPolicy != null)
          'cache_key_policy': [cacheKeyPolicy!.toArgMap()],
        if (negativeCachingPolicy != null)
          'negative_caching_policy':
              negativeCachingPolicy!.map((p) => p.toArgMap()).toList(),
      };
}

/// `cdn_policy.cache_key_policy` (`max_items=1`).
@immutable
class RegionBackendServiceCdnCacheKeyPolicy {
  const RegionBackendServiceCdnCacheKeyPolicy({
    this.includeHost,
    this.includeProtocol,
    this.includeQueryString,
    this.includeNamedCookies,
    this.queryStringWhitelist,
    this.queryStringBlacklist,
  });

  final bool? includeHost;
  final bool? includeProtocol;
  final bool? includeQueryString;
  final List<String>? includeNamedCookies;
  final List<String>? queryStringWhitelist;
  final List<String>? queryStringBlacklist;

  Map<String, Object?> toArgMap() => {
        if (includeHost != null) 'include_host': includeHost,
        if (includeProtocol != null) 'include_protocol': includeProtocol,
        if (includeQueryString != null)
          'include_query_string': includeQueryString,
        if (includeNamedCookies != null)
          'include_named_cookies': includeNamedCookies,
        if (queryStringWhitelist != null)
          'query_string_whitelist': queryStringWhitelist,
        if (queryStringBlacklist != null)
          'query_string_blacklist': queryStringBlacklist,
      };
}

/// One row in `cdn_policy.negative_caching_policy`. The regional
/// schema does not model the `ttl` attribute (status-code key only).
@immutable
class RegionBackendServiceCdnNegativeCachingPolicy {
  const RegionBackendServiceCdnNegativeCachingPolicy({this.code});

  /// HTTP status code to apply a TTL to. Valid values per schema:
  /// 300, 301, 308, 404, 405, 410, 421, 451, 501. Each code may appear
  /// at most once.
  final int? code;

  Map<String, Object?> toArgMap() => {if (code != null) 'code': code};
}

// ===========================================================================
// iap block (max_items=1) — Identity-Aware Proxy
// ===========================================================================

/// `iap` block. Wraps the regional backend service in Cloud IAP, which
/// gates requests on an authenticated end-user identity / IAM check
/// before they reach the backend.
///
/// **Sensitive**: [oauth2ClientSecret] is flagged sensitive in the
/// schema and is masked at synth time via the generated
/// `$sensitiveFields` set. The computed
/// `oauth2_client_secret_sha256` is also sensitive — provider
/// implementation detail; nothing to set on this side.
@immutable
class RegionBackendServiceIap {
  const RegionBackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
  });

  /// Whether IAP is on. Setting `false` keeps the block but disables
  /// IAP enforcement.
  final bool enabled;

  /// OAuth 2.0 client ID for the OAuth consent screen.
  final TfArg<String>? oauth2ClientId;

  /// OAuth 2.0 client secret. **Sensitive** — round-trips through
  /// `$sensitiveFields`.
  final TfArg<String>? oauth2ClientSecret;

  Map<String, Object?> toArgMap() => {
        'enabled': enabled,
        if (oauth2ClientId != null)
          'oauth2_client_id': oauth2ClientId!.toTfJson(),
        if (oauth2ClientSecret != null)
          'oauth2_client_secret': oauth2ClientSecret!.toTfJson(),
      };
}

// ===========================================================================
// circuit_breakers (max_items=1)
// ===========================================================================

/// `circuit_breakers` block — caps on simultaneous activity per backend
/// before the load balancer trips. Only honored for
/// `INTERNAL_SELF_MANAGED` / `INTERNAL_MANAGED` / `EXTERNAL_MANAGED`
/// schemes.
@immutable
class RegionBackendServiceCircuitBreakers {
  const RegionBackendServiceCircuitBreakers({
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  final int? maxConnections;
  final int? maxPendingRequests;
  final int? maxRequests;
  final int? maxRequestsPerConnection;
  final int? maxRetries;

  Map<String, Object?> toArgMap() => {
        if (maxConnections != null) 'max_connections': maxConnections,
        if (maxPendingRequests != null)
          'max_pending_requests': maxPendingRequests,
        if (maxRequests != null) 'max_requests': maxRequests,
        if (maxRequestsPerConnection != null)
          'max_requests_per_connection': maxRequestsPerConnection,
        if (maxRetries != null) 'max_retries': maxRetries,
      };
}

// ===========================================================================
// consistent_hash (max_items=1)
// ===========================================================================

/// `consistent_hash` block. Only meaningful when
/// [RegionBackendServiceLocalityLbPolicy] is `ringHash` or `maglev`.
@immutable
class RegionBackendServiceConsistentHash {
  const RegionBackendServiceConsistentHash({
    this.httpHeaderName,
    this.minimumRingSize,
    this.httpCookie,
  });

  /// Hash on the named HTTP header.
  final TfArg<String>? httpHeaderName;

  /// Minimum ring size for `RING_HASH`. Default 1024.
  final int? minimumRingSize;

  /// Hash on a named HTTP cookie.
  final RegionBackendServiceConsistentHashHttpCookie? httpCookie;

  Map<String, Object?> toArgMap() => {
        if (httpHeaderName != null)
          'http_header_name': httpHeaderName!.toTfJson(),
        if (minimumRingSize != null) 'minimum_ring_size': minimumRingSize,
        if (httpCookie != null) 'http_cookie': [httpCookie!.toArgMap()],
      };
}

/// `consistent_hash.http_cookie` (max_items=1).
@immutable
class RegionBackendServiceConsistentHashHttpCookie {
  const RegionBackendServiceConsistentHashHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;
  final TfArg<String>? path;
  final RegionBackendServiceDuration? ttl;

  Map<String, Object?> toArgMap() => {
        if (name != null) 'name': name!.toTfJson(),
        if (path != null) 'path': path!.toTfJson(),
        if (ttl != null) 'ttl': [ttl!.toArgMap()],
      };
}

/// google.protobuf.Duration-shaped value used by several sub-blocks
/// (`consistent_hash.http_cookie.ttl`,
/// `strong_session_affinity_cookie.ttl`,
/// `outlier_detection.base_ejection_time`,
/// `outlier_detection.interval`).
@immutable
class RegionBackendServiceDuration {
  const RegionBackendServiceDuration({required this.seconds, this.nanos});

  /// Whole seconds. Required by the schema for every Duration block.
  final int seconds;

  /// Sub-second nanoseconds (`0`-`999_999_999`).
  final int? nanos;

  Map<String, Object?> toArgMap() => {
        'seconds': seconds,
        if (nanos != null) 'nanos': nanos,
      };
}

// ===========================================================================
// log_config (max_items=1)
// ===========================================================================

/// `log_config` block — Cloud Logging export configuration for the
/// regional backend service.
@immutable
class RegionBackendServiceLogConfig {
  const RegionBackendServiceLogConfig({
    this.enable,
    this.sampleRate,
    this.optionalMode,
    this.optionalFields,
  });

  /// Master switch.
  final bool? enable;

  /// Sample rate `0.0`-`1.0`. Ignored when [enable] is `false`.
  final double? sampleRate;

  /// Which optional fields to include.
  final RegionBackendServiceLogOptionalMode? optionalMode;

  /// Custom field list when [optionalMode] is
  /// [RegionBackendServiceLogOptionalMode.custom].
  final List<String>? optionalFields;

  Map<String, Object?> toArgMap() => {
        if (enable != null) 'enable': enable,
        if (sampleRate != null) 'sample_rate': sampleRate,
        if (optionalMode != null) 'optional_mode': optionalMode!.terraformValue,
        if (optionalFields != null) 'optional_fields': optionalFields,
      };
}

// ===========================================================================
// outlier_detection (max_items=1)
// ===========================================================================

/// `outlier_detection` block — passive health checking. Hosts that
/// exceed the configured failure thresholds are ejected from the load
/// balancing pool for `base_ejection_time` * consecutive-ejection-count.
@immutable
class RegionBackendServiceOutlierDetection {
  const RegionBackendServiceOutlierDetection({
    this.consecutiveErrors,
    this.consecutiveGatewayFailure,
    this.enforcingConsecutiveErrors,
    this.enforcingConsecutiveGatewayFailure,
    this.enforcingSuccessRate,
    this.maxEjectionPercent,
    this.successRateMinimumHosts,
    this.successRateRequestVolume,
    this.successRateStdevFactor,
    this.baseEjectionTime,
    this.interval,
  });

  final int? consecutiveErrors;
  final int? consecutiveGatewayFailure;
  final int? enforcingConsecutiveErrors;
  final int? enforcingConsecutiveGatewayFailure;
  final int? enforcingSuccessRate;
  final int? maxEjectionPercent;
  final int? successRateMinimumHosts;
  final int? successRateRequestVolume;
  final int? successRateStdevFactor;

  /// Base time a host stays ejected. Schema requires `seconds`.
  final RegionBackendServiceDuration? baseEjectionTime;

  /// How often outlier detection runs. Schema requires `seconds`.
  final RegionBackendServiceDuration? interval;

  Map<String, Object?> toArgMap() => {
        if (consecutiveErrors != null) 'consecutive_errors': consecutiveErrors,
        if (consecutiveGatewayFailure != null)
          'consecutive_gateway_failure': consecutiveGatewayFailure,
        if (enforcingConsecutiveErrors != null)
          'enforcing_consecutive_errors': enforcingConsecutiveErrors,
        if (enforcingConsecutiveGatewayFailure != null)
          'enforcing_consecutive_gateway_failure':
              enforcingConsecutiveGatewayFailure,
        if (enforcingSuccessRate != null)
          'enforcing_success_rate': enforcingSuccessRate,
        if (maxEjectionPercent != null)
          'max_ejection_percent': maxEjectionPercent,
        if (successRateMinimumHosts != null)
          'success_rate_minimum_hosts': successRateMinimumHosts,
        if (successRateRequestVolume != null)
          'success_rate_request_volume': successRateRequestVolume,
        if (successRateStdevFactor != null)
          'success_rate_stdev_factor': successRateStdevFactor,
        if (baseEjectionTime != null)
          'base_ejection_time': [baseEjectionTime!.toArgMap()],
        if (interval != null) 'interval': [interval!.toArgMap()],
      };
}

// ===========================================================================
// strong_session_affinity_cookie (max_items=1)
// ===========================================================================

/// `strong_session_affinity_cookie` block. Used only when
/// [sessionAffinity] is
/// [RegionBackendServiceSessionAffinity.strongCookieAffinity].
@immutable
class RegionBackendServiceStrongSessionAffinityCookie {
  const RegionBackendServiceStrongSessionAffinityCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;
  final TfArg<String>? path;

  /// Cookie TTL. Schema requires `seconds`.
  final RegionBackendServiceDuration? ttl;

  Map<String, Object?> toArgMap() => {
        if (name != null) 'name': name!.toTfJson(),
        if (path != null) 'path': path!.toTfJson(),
        if (ttl != null) 'ttl': [ttl!.toArgMap()],
      };
}

// ===========================================================================
// failover_policy (max_items=1) — regional only
// ===========================================================================

/// `failover_policy` block — only meaningful for Internal Passthrough
/// NLBs. Backends are split into primary / failover pools (see
/// [RegionBackendServiceBackend.failover]); when the primary pool's
/// healthy fraction drops below [failoverRatio], traffic is shifted to
/// the failover pool.
@immutable
class RegionBackendServiceFailoverPolicy {
  const RegionBackendServiceFailoverPolicy({
    this.disableConnectionDrainOnFailover,
    this.dropTrafficIfUnhealthy,
    this.failoverRatio,
  });

  /// If `true`, connections to the old active pool are not drained on
  /// failover. Can be set to `true` only when [protocol] is `TCP`.
  final bool? disableConnectionDrainOnFailover;

  /// If `true`, drop traffic when **no** healthy VM is detected in
  /// either pool. If `false`, traffic is spread across all VMs in the
  /// primary group as a best-effort fallback.
  final bool? dropTrafficIfUnhealthy;

  /// Health-fraction threshold (`0.0`-`1.0`) that triggers failover.
  /// L4 LBs only.
  final double? failoverRatio;

  Map<String, Object?> toArgMap() => {
        if (disableConnectionDrainOnFailover != null)
          'disable_connection_drain_on_failover':
              disableConnectionDrainOnFailover,
        if (dropTrafficIfUnhealthy != null)
          'drop_traffic_if_unhealthy': dropTrafficIfUnhealthy,
        if (failoverRatio != null) 'failover_ratio': failoverRatio,
      };
}

// ===========================================================================
// ha_policy (max_items=1) — regional only
// ===========================================================================

/// `ha_policy` block — self-managed HA for External / Internal
/// Passthrough NLBs. Conflicts with `sessionAffinity`,
/// `failoverPolicy`, and `healthChecks` — when [haPolicy] is set, the
/// caller is responsible for tracking endpoint health and electing a
/// leader.
///
/// Backends under an HA policy must be zonal NEGs of type `GCE_VM_IP`.
@immutable
class RegionBackendServiceHaPolicy {
  const RegionBackendServiceHaPolicy({this.fastIpMove, this.leader});

  /// Fast-IP-move mode. See [RegionBackendServiceFastIpMove].
  final RegionBackendServiceFastIpMove? fastIpMove;

  /// Selects the current leader endpoint.
  final RegionBackendServiceHaPolicyLeader? leader;

  Map<String, Object?> toArgMap() => {
        if (fastIpMove != null) 'fast_ip_move': fastIpMove!.terraformValue,
        if (leader != null) 'leader': [leader!.toArgMap()],
      };
}

/// `ha_policy.leader` (max_items=1).
@immutable
class RegionBackendServiceHaPolicyLeader {
  const RegionBackendServiceHaPolicyLeader({
    this.backendGroup,
    this.networkEndpoint,
  });

  /// Self-link of the zonal NEG that hosts the current leader endpoint.
  final TfArg<String>? backendGroup;

  /// Which endpoint inside [backendGroup] is the leader.
  final RegionBackendServiceHaPolicyLeaderNetworkEndpoint? networkEndpoint;

  Map<String, Object?> toArgMap() => {
        if (backendGroup != null) 'backend_group': backendGroup!.toTfJson(),
        if (networkEndpoint != null)
          'network_endpoint': [networkEndpoint!.toArgMap()],
      };
}

/// `ha_policy.leader.network_endpoint` (max_items=1).
@immutable
class RegionBackendServiceHaPolicyLeaderNetworkEndpoint {
  const RegionBackendServiceHaPolicyLeaderNetworkEndpoint({this.instance});

  /// Name of the VM instance hosting the leader endpoint. The instance
  /// must already be attached to the NEG referenced by
  /// `haPolicy.leader.backendGroup`.
  final TfArg<String>? instance;

  Map<String, Object?> toArgMap() => {
        if (instance != null) 'instance': instance!.toTfJson(),
      };
}

// ===========================================================================
// network_pass_through_lb_traffic_policy (max_items=1) — regional only
// ===========================================================================

/// `network_pass_through_lb_traffic_policy` block — traffic steering
/// for Internal Passthrough NLBs (currently only zonal-affinity).
@immutable
class RegionBackendServiceNetworkPassThroughLbTrafficPolicy {
  const RegionBackendServiceNetworkPassThroughLbTrafficPolicy({
    this.zonalAffinity,
  });

  final RegionBackendServiceZonalAffinity? zonalAffinity;

  Map<String, Object?> toArgMap() => {
        if (zonalAffinity != null)
          'zonal_affinity': [zonalAffinity!.toArgMap()],
      };
}

/// `network_pass_through_lb_traffic_policy.zonal_affinity`
/// (max_items=1). New connections are load balanced across healthy
/// backend endpoints in the local zone first; behavior when the
/// in-zone healthy fraction drops below [spilloverRatio] is governed
/// by [spillover].
@immutable
class RegionBackendServiceZonalAffinity {
  const RegionBackendServiceZonalAffinity({
    this.spillover,
    this.spilloverRatio,
  });

  /// Zonal-affinity mode.
  final RegionBackendServiceZonalAffinitySpillover? spillover;

  /// Healthy-fraction threshold (`0.0`-`1.0`) that triggers spillover.
  final double? spilloverRatio;

  Map<String, Object?> toArgMap() => {
        if (spillover != null) 'spillover': spillover!.terraformValue,
        if (spilloverRatio != null) 'spillover_ratio': spilloverRatio,
      };
}

// ===========================================================================
// tls_settings (max_items=1) and its subject_alt_names sub-block
// ===========================================================================

/// `tls_settings` block — TLS / mTLS configuration used when dialing
/// backends. Only meaningful when [protocol] is `SSL`, `HTTPS`, or
/// `HTTP2`. The regional resource does not surface
/// `security_settings` — this is the only TLS-config block available
/// here.
@immutable
class RegionBackendServiceTlsSettings {
  const RegionBackendServiceTlsSettings({
    this.authenticationConfig,
    this.sni,
    this.subjectAltNames,
  });

  /// Self-link of a `google_network_security_backend_authentication_config`.
  final TfArg<String>? authenticationConfig;

  /// SNI value to send on the TLS handshake.
  final TfArg<String>? sni;

  /// SAN matchers — at least one must match the backend's certificate.
  final List<RegionBackendServiceTlsSubjectAltName>? subjectAltNames;

  Map<String, Object?> toArgMap() => {
        if (authenticationConfig != null)
          'authentication_config': authenticationConfig!.toTfJson(),
        if (sni != null) 'sni': sni!.toTfJson(),
        if (subjectAltNames != null)
          'subject_alt_names':
              subjectAltNames!.map((s) => s.toArgMap()).toList(),
      };
}

/// One entry under `tls_settings.subject_alt_names`. Exactly one of
/// [dnsName] / [uniformResourceIdentifier] should be set.
@immutable
class RegionBackendServiceTlsSubjectAltName {
  const RegionBackendServiceTlsSubjectAltName({
    this.dnsName,
    this.uniformResourceIdentifier,
  });

  final TfArg<String>? dnsName;
  final TfArg<String>? uniformResourceIdentifier;

  Map<String, Object?> toArgMap() => {
        if (dnsName != null) 'dns_name': dnsName!.toTfJson(),
        if (uniformResourceIdentifier != null)
          'uniform_resource_identifier': uniformResourceIdentifier!.toTfJson(),
      };
}

// ===========================================================================
// custom_metrics (top-level list) — backend-service-wide signals
// ===========================================================================

/// One entry under the top-level `custom_metrics`. Mirrors
/// [RegionBackendServiceBackendCustomMetric] but without
/// [maxUtilization] (schema only models `name` + `dry_run` at this
/// scope).
@immutable
class RegionBackendServiceCustomMetric {
  const RegionBackendServiceCustomMetric({
    required this.name,
    required this.dryRun,
  });
  final TfArg<String> name;
  final bool dryRun;
  Map<String, Object?> toArgMap() => {
        'name': name.toTfJson(),
        'dry_run': dryRun,
      };
}

// ===========================================================================
// params (max_items=1)
// ===========================================================================

/// `params` block — currently only carries resource-manager tags.
@immutable
class RegionBackendServiceParams {
  const RegionBackendServiceParams({this.resourceManagerTags});

  /// `{tagKey: tagValue}` map of resource-manager tag bindings applied
  /// at creation time.
  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> toArgMap() => {
        if (resourceManagerTags != null)
          'resource_manager_tags': resourceManagerTags!.toTfJson(),
      };
}

/// Factory wrapper for `google_compute_region_backend_service` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **regional** backend service is the load-balancing target for
/// Internal Application LBs, Internal Proxy NLBs, Regional External
/// Application LBs, Regional External Proxy NLBs, and Internal /
/// External Passthrough Network LBs. It groups a set of backends
/// (instance groups or network endpoint groups) inside a single GCP
/// region and routes traffic to them according to the configured
/// [protocol], [loadBalancingScheme], [localityLbPolicy], and
/// [sessionAffinity].
///
/// For globally-scoped load balancing use `google_compute_backend_service`
/// (curated separately). The regional resource accepts `INTERNAL` and
/// `INTERNAL_MANAGED` schemes that the global resource will reject at
/// apply time, and it also surfaces a handful of regional-only blocks:
/// [RegionBackendServiceFailoverPolicy] (Internal Passthrough NLB
/// failover), [RegionBackendServiceHaPolicy] (self-managed HA for
/// Passthrough NLBs), and
/// [RegionBackendServiceNetworkPassThroughLbTrafficPolicy] (zonal
/// affinity for Internal Passthrough NLBs). It does *not* support the
/// global-only blocks `locality_lb_policies`, `security_settings`, or
/// `max_stream_duration`, nor the global-only `compression_mode`,
/// `custom_request_headers`, `custom_response_headers`,
/// `edge_security_policy`, or `service_lb_policy` attributes.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_backend_service.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
/// - `region`: GCP region. The Terraform schema lists this as
///   optional+computed (the provider falls back to the provider-level
///   region), but it is wrapped as required here to keep cross-region
///   composition explicit.
///
/// Cross-resource references (typical wiring):
/// - [healthChecks]: list of self-links to `google_compute_health_check`
///   or `google_compute_region_health_check` resources. Required unless
///   every backend is an internet/serverless NEG, or the resource uses
///   [RegionBackendServiceHaPolicy] (HA-managed services cannot
///   coexist with health checks).
/// - [securityPolicy]: self-link to a regional Cloud Armor
///   `google_compute_region_security_policy`. Regional Cloud Armor
///   support is restricted to certain `load_balancing_scheme` values
///   (notably the regional managed schemes); the API rejects
///   incompatible combinations at apply time.
/// - [RegionBackendServiceBackend.group]: self-link of an instance
///   group, regional MIG, or `region_network_endpoint_group`. All
///   backends in one service must share a kind (no mixing instance
///   groups with NEGs).
/// - [network]: self-link of a `google_compute_network`. Required for
///   Internal Passthrough NLBs when [RegionBackendServiceHaPolicy] is
///   set, and for External Passthrough NLBs when `haPolicy.fastIpMove`
///   is enabled. Only settable when [loadBalancingScheme] is `INTERNAL`,
///   or `EXTERNAL` with `haPolicy.fastIpMove`.
///
/// Example (internal application LB backend, IAP-protected):
/// ```dart
/// final api = GoogleComputeRegionBackendService(
///   localName: 'api',
///   name: TfArg.literal('api-rbs'),
///   region: TfArg.literal('asia-northeast1'),
///   protocol: TfArg.literal(RegionBackendServiceProtocol.https),
///   loadBalancingScheme:
///       TfArg.literal(RegionBackendServiceLoadBalancingScheme.internalManaged),
///   portName: TfArg.literal('https'),
///   timeoutSec: TfArg.literal(30),
///   healthChecks: TfArg.literal([
///     // From Batch 2: either `google_compute_health_check` or
///     // `google_compute_region_health_check` is acceptable.
///     'projects/p/regions/asia-northeast1/healthChecks/api-hc',
///   ]),
///   securityPolicy: TfArg.literal(
///     // var.security_policy_id — see Batch 4 regional Cloud Armor.
///     'projects/p/regions/asia-northeast1/securityPolicies/edge-deny-all',
///   ),
///   backends: [
///     RegionBackendServiceBackend(
///       group: TfArg.literal(
///         // var.backend_group_id — typically a Batch 4 regional NEG
///         // or a Batch 3 regional MIG self-link.
///         'projects/p/regions/asia-northeast1/networkEndpointGroups/api-rneg',
///       ),
///       balancingMode: RegionBackendServiceBalancingMode.rate,
///       maxRatePerEndpoint: 100,
///       capacityScaler: 1.0,
///     ),
///   ],
///   iap: const RegionBackendServiceIap(
///     enabled: true,
///     oauth2ClientId: 'xxx.apps.googleusercontent.com',
///     oauth2ClientSecret: 'super-secret', // sensitive — masked at synth.
///   ),
///   logConfig: const RegionBackendServiceLogConfig(
///     enable: true,
///     sampleRate: 1.0,
///   ),
/// );
/// ```
///
/// Sensitive fields (round-trip through the generated `$sensitiveFields`
/// set): `iap.oauth2_client_secret` and the computed
/// `iap.oauth2_client_secret_sha256` (provider-side detail). The global
/// `security_settings.aws_v4_authentication.access_key` is **not**
/// present on the regional resource — `security_settings` has no
/// regional analog.
final class GoogleComputeRegionBackendService extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_region_backend_service';

  GoogleComputeRegionBackendService({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<RegionBackendServiceProtocol>? protocol,
    TfArg<String>? portName,
    TfArg<RegionBackendServiceLoadBalancingScheme>? loadBalancingScheme,
    TfArg<RegionBackendServiceLocalityLbPolicy>? localityLbPolicy,
    TfArg<RegionBackendServiceSessionAffinity>? sessionAffinity,
    TfArg<num>? affinityCookieTtlSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? connectionDrainingTimeoutSec,
    TfArg<bool>? enableCdn,
    TfArg<RegionBackendServiceIpAddressSelectionPolicy>?
        ipAddressSelectionPolicy,
    TfArg<String>? network,
    TfArg<List<String>>? healthChecks,
    TfArg<String>? securityPolicy,
    List<RegionBackendServiceBackend>? backends,
    RegionBackendServiceCdnPolicy? cdnPolicy,
    RegionBackendServiceIap? iap,
    RegionBackendServiceCircuitBreakers? circuitBreakers,
    RegionBackendServiceConsistentHash? consistentHash,
    RegionBackendServiceOutlierDetection? outlierDetection,
    RegionBackendServiceLogConfig? logConfig,
    List<RegionBackendServiceCustomMetric>? customMetrics,
    RegionBackendServiceStrongSessionAffinityCookie?
        strongSessionAffinityCookie,
    RegionBackendServiceFailoverPolicy? failoverPolicy,
    RegionBackendServiceHaPolicy? haPolicy,
    RegionBackendServiceNetworkPassThroughLbTrafficPolicy?
        networkPassThroughLbTrafficPolicy,
    RegionBackendServiceTlsSettings? tlsSettings,
    RegionBackendServiceParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            if (region != null) 'region': region,
            if (description != null) 'description': description,
            if (protocol != null) 'protocol': protocol,
            if (portName != null) 'port_name': portName,
            if (loadBalancingScheme != null)
              'load_balancing_scheme': loadBalancingScheme,
            if (localityLbPolicy != null)
              'locality_lb_policy': localityLbPolicy,
            if (sessionAffinity != null) 'session_affinity': sessionAffinity,
            if (affinityCookieTtlSec != null)
              'affinity_cookie_ttl_sec': affinityCookieTtlSec,
            if (timeoutSec != null) 'timeout_sec': timeoutSec,
            if (connectionDrainingTimeoutSec != null)
              'connection_draining_timeout_sec': connectionDrainingTimeoutSec,
            if (enableCdn != null) 'enable_cdn': enableCdn,
            if (ipAddressSelectionPolicy != null)
              'ip_address_selection_policy': ipAddressSelectionPolicy,
            if (network != null) 'network': network,
            if (healthChecks != null) 'health_checks': healthChecks,
            if (securityPolicy != null) 'security_policy': securityPolicy,
            if (backends != null)
              'backend': TfArg.literal(
                backends.map((b) => b.toArgMap()).toList(),
              ),
            if (cdnPolicy != null)
              'cdn_policy': TfArg.literal([cdnPolicy.toArgMap()]),
            if (iap != null) 'iap': TfArg.literal([iap.toArgMap()]),
            if (circuitBreakers != null)
              'circuit_breakers': TfArg.literal([circuitBreakers.toArgMap()]),
            if (consistentHash != null)
              'consistent_hash': TfArg.literal([consistentHash.toArgMap()]),
            if (outlierDetection != null)
              'outlier_detection': TfArg.literal([outlierDetection.toArgMap()]),
            if (logConfig != null)
              'log_config': TfArg.literal([logConfig.toArgMap()]),
            if (customMetrics != null)
              'custom_metrics': TfArg.literal(
                customMetrics.map((m) => m.toArgMap()).toList(),
              ),
            if (strongSessionAffinityCookie != null)
              'strong_session_affinity_cookie': TfArg.literal([
                strongSessionAffinityCookie.toArgMap(),
              ]),
            if (failoverPolicy != null)
              'failover_policy': TfArg.literal([failoverPolicy.toArgMap()]),
            if (haPolicy != null)
              'ha_policy': TfArg.literal([haPolicy.toArgMap()]),
            if (networkPassThroughLbTrafficPolicy != null)
              'network_pass_through_lb_traffic_policy': TfArg.literal([
                networkPassThroughLbTrafficPolicy.toArgMap(),
              ]),
            if (tlsSettings != null)
              'tls_settings': TfArg.literal([tlsSettings.toArgMap()]),
            if (params != null) 'params': TfArg.literal([params.toArgMap()]),
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeRegionBackendServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute
  /// (`projects/{project}/regions/{region}/backendServices/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute (HTTPS API path). The canonical
  /// reference downstream `google_compute_region_url_map` /
  /// `google_compute_region_target_*_proxy` resources expect.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the server-assigned numeric `generated_id`.
  TfRef<int> get generatedId => TfRef.attribute<int>(this, 'generated_id');

  /// Reference to `fingerprint` — used by the API for optimistic locking.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `creation_timestamp` (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
