// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

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
enum RegionBackendServiceProtocol implements TerraformEnum {
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
  @override
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
enum RegionBackendServiceLoadBalancingScheme implements TerraformEnum {
  external('EXTERNAL'),
  externalManaged('EXTERNAL_MANAGED'),
  internal('INTERNAL'),
  internalManaged('INTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED');

  const RegionBackendServiceLoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// `locality_lb_policy`. See the schema docstring for the matrix of which
/// values are valid for which combination of `protocol` and
/// `load_balancing_scheme` — Cloud Load Balancing silently coerces
/// invalid values to the scheme's default at apply time. For External
/// Passthrough NLBs only [maglev] and [weightedMaglev] are honored;
/// for INTERNAL_MANAGED with HTTP-class protocols the full set is
/// available.
enum RegionBackendServiceLocalityLbPolicy implements TerraformEnum {
  roundRobin('ROUND_ROBIN'),
  leastRequest('LEAST_REQUEST'),
  ringHash('RING_HASH'),
  random('RANDOM'),
  originalDestination('ORIGINAL_DESTINATION'),
  maglev('MAGLEV'),
  weightedMaglev('WEIGHTED_MAGLEV'),
  weightedRoundRobin('WEIGHTED_ROUND_ROBIN');

  const RegionBackendServiceLocalityLbPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `session_affinity`. Applicable only when the locality LB policy is
/// one of `MAGLEV`, `WEIGHTED_MAGLEV`, or `RING_HASH` for HTTP-class
/// balancers; for Passthrough NLBs [clientIp] and the
/// 5-tuple variants apply directly. The regional resource adds
/// [clientIpNoDestination] (Passthrough NLB variant that ignores the
/// destination tuple component) versus the global resource.
enum RegionBackendServiceSessionAffinity implements TerraformEnum {
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
  @override
  final String terraformValue;
}

/// `ip_address_selection_policy`. Controls IPv4-vs-IPv6 preference when
/// the load balancer dials a backend (or when a proxyless gRPC client
/// dials directly).
enum RegionBackendServiceIpAddressSelectionPolicy implements TerraformEnum {
  ipv4Only('IPV4_ONLY'),
  preferIpv6('PREFER_IPV6'),
  ipv6Only('IPV6_ONLY');

  const RegionBackendServiceIpAddressSelectionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Per-backend balancing mode. See [ComputeRegionBackendServiceBackend.balancingMode].
/// Note: the regional resource omits the global `IN_FLIGHT` mode.
enum RegionBackendServiceBalancingMode implements TerraformEnum {
  utilization('UTILIZATION'),
  rate('RATE'),
  connection('CONNECTION'),
  customMetrics('CUSTOM_METRICS');

  const RegionBackendServiceBalancingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cdn_policy.cache_mode`. Enabling CDN (`enable_cdn = true`) without
/// setting this defaults to `CACHE_ALL_STATIC`.
enum RegionBackendServiceCacheMode implements TerraformEnum {
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  cacheAllStatic('CACHE_ALL_STATIC');

  const RegionBackendServiceCacheMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_config.optional_mode`. Controls which optional access-log
/// fields are exported when [ComputeRegionBackendServiceLogConfig.enable] is
/// true.
enum RegionBackendServiceLogOptionalMode implements TerraformEnum {
  includeAllOptional('INCLUDE_ALL_OPTIONAL'),
  excludeAllOptional('EXCLUDE_ALL_OPTIONAL'),
  custom('CUSTOM');

  const RegionBackendServiceLogOptionalMode(this.terraformValue);
  @override
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
enum RegionBackendServiceFastIpMove implements TerraformEnum {
  disabled('DISABLED'),
  garpRa('GARP_RA');

  const RegionBackendServiceFastIpMove(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network_pass_through_lb_traffic_policy.zonal_affinity.spillover`.
/// Zonal-affinity selector for Internal Passthrough NLBs.
enum RegionBackendServiceZonalAffinitySpillover implements TerraformEnum {
  zonalAffinityDisabled('ZONAL_AFFINITY_DISABLED'),
  zonalAffinitySpillCrossZone('ZONAL_AFFINITY_SPILL_CROSS_ZONE'),
  zonalAffinityStayWithinZone('ZONAL_AFFINITY_STAY_WITHIN_ZONE');

  const RegionBackendServiceZonalAffinitySpillover(this.terraformValue);
  @override
  final String terraformValue;
}

/// `connection_tracking_policy.connection_persistence_on_unhealthy_backends`.
/// Whether existing connections persist on backends that have become
/// unhealthy. Default `DEFAULT_FOR_PROTOCOL`.
enum RegionBackendServiceConnectionPersistence implements TerraformEnum {
  defaultForProtocol('DEFAULT_FOR_PROTOCOL'),
  neverPersist('NEVER_PERSIST'),
  alwaysPersist('ALWAYS_PERSIST');

  const RegionBackendServiceConnectionPersistence(this.terraformValue);
  @override
  final String terraformValue;
}

/// `connection_tracking_policy.tracking_mode`. Connection-tracking key:
/// [perConnection] tracks 5-tuple (default); [perSession] tracks 3-tuple.
enum RegionBackendServiceTrackingMode implements TerraformEnum {
  perConnection('PER_CONNECTION'),
  perSession('PER_SESSION');

  const RegionBackendServiceTrackingMode(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// backend block (nesting=set) and its custom_metrics sub-block
// ===========================================================================

// ===========================================================================
// cdn_policy block (max_items=1) and its sub-blocks
// ===========================================================================

// ===========================================================================
// iap block (max_items=1) — Identity-Aware Proxy
// ===========================================================================

// ===========================================================================
// circuit_breakers (max_items=1)
// ===========================================================================

// ===========================================================================
// consistent_hash (max_items=1)
// ===========================================================================

// ===========================================================================
// log_config (max_items=1)
// ===========================================================================

// ===========================================================================
// outlier_detection (max_items=1)
// ===========================================================================

// ===========================================================================
// strong_session_affinity_cookie (max_items=1)
// ===========================================================================

// ===========================================================================
// failover_policy (max_items=1) — regional only
// ===========================================================================

// ===========================================================================
// ha_policy (max_items=1) — regional only
// ===========================================================================

// ===========================================================================
// network_pass_through_lb_traffic_policy (max_items=1) — regional only
// ===========================================================================

// ===========================================================================
// tls_settings (max_items=1) and its subject_alt_names sub-block
// ===========================================================================

// ===========================================================================
// custom_metrics (top-level list) — backend-service-wide signals
// ===========================================================================

// ===========================================================================
// params (max_items=1)
// ===========================================================================

// ===========================================================================
// connection_tracking_policy (max_items=1)
// ===========================================================================

/// Typed helper for the `backend` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceBackend {
  const ComputeRegionBackendServiceBackend({
    this.balancingMode,
    this.capacityScaler,
    this.description,
    this.failover,
    required this.group,
    this.maxConnections,
    this.maxConnectionsPerEndpoint,
    this.maxConnectionsPerInstance,
    this.maxRate,
    this.maxRatePerEndpoint,
    this.maxRatePerInstance,
    this.maxUtilization,
    this.customMetrics,
  });

  final TfArg<RegionBackendServiceBalancingMode>? balancingMode;

  final TfArg<num>? capacityScaler;

  final TfArg<String>? description;

  final TfArg<bool>? failover;

  final TfArg<String> group;

  final TfArg<num>? maxConnections;

  final TfArg<num>? maxConnectionsPerEndpoint;

  final TfArg<num>? maxConnectionsPerInstance;

  final TfArg<num>? maxRate;

  final TfArg<num>? maxRatePerEndpoint;

  final TfArg<num>? maxRatePerInstance;

  final TfArg<num>? maxUtilization;

  final List<ComputeRegionBackendServiceBackendCustomMetrics>? customMetrics;

  Map<String, Object?> encode() => {
    'balancing_mode': ?balancingMode?.toTfJson(),
    'capacity_scaler': ?capacityScaler?.toTfJson(),
    'description': ?description?.toTfJson(),
    'failover': ?failover?.toTfJson(),
    'group': group.toTfJson(),
    'max_connections': ?maxConnections?.toTfJson(),
    'max_connections_per_endpoint': ?maxConnectionsPerEndpoint?.toTfJson(),
    'max_connections_per_instance': ?maxConnectionsPerInstance?.toTfJson(),
    'max_rate': ?maxRate?.toTfJson(),
    'max_rate_per_endpoint': ?maxRatePerEndpoint?.toTfJson(),
    'max_rate_per_instance': ?maxRatePerInstance?.toTfJson(),
    'max_utilization': ?maxUtilization?.toTfJson(),
    if (customMetrics != null)
      'custom_metrics': [for (final e in customMetrics!) e.encode()],
  };
}

/// Typed helper for the `backend.custom_metrics` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceBackendCustomMetrics {
  const ComputeRegionBackendServiceBackendCustomMetrics({
    required this.dryRun,
    this.maxUtilization,
    required this.name,
  });

  final TfArg<bool> dryRun;

  final TfArg<num>? maxUtilization;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'dry_run': dryRun.toTfJson(),
    'max_utilization': ?maxUtilization?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `cdn_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceCdnPolicy {
  const ComputeRegionBackendServiceCdnPolicy({
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

  final TfArg<RegionBackendServiceCacheMode>? cacheMode;

  final TfArg<num>? clientTtl;

  final TfArg<num>? defaultTtl;

  final TfArg<num>? maxTtl;

  final TfArg<bool>? negativeCaching;

  final TfArg<num>? serveWhileStale;

  final TfArg<num>? signedUrlCacheMaxAgeSec;

  final ComputeRegionBackendServiceCacheKeyPolicy? cacheKeyPolicy;

  final List<ComputeRegionBackendServiceNegativeCachingPolicy>?
  negativeCachingPolicy;

  Map<String, Object?> encode() => {
    'cache_mode': ?cacheMode?.toTfJson(),
    'client_ttl': ?clientTtl?.toTfJson(),
    'default_ttl': ?defaultTtl?.toTfJson(),
    'max_ttl': ?maxTtl?.toTfJson(),
    'negative_caching': ?negativeCaching?.toTfJson(),
    'serve_while_stale': ?serveWhileStale?.toTfJson(),
    'signed_url_cache_max_age_sec': ?signedUrlCacheMaxAgeSec?.toTfJson(),
    'cache_key_policy': ?cacheKeyPolicy?.encode(),
    if (negativeCachingPolicy != null)
      'negative_caching_policy': [
        for (final e in negativeCachingPolicy!) e.encode(),
      ],
  };
}

/// Typed helper for the `cdn_policy.cache_key_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceCacheKeyPolicy {
  const ComputeRegionBackendServiceCacheKeyPolicy({
    this.includeHost,
    this.includeNamedCookies,
    this.includeProtocol,
    this.includeQueryString,
    this.queryStringBlacklist,
    this.queryStringWhitelist,
  });

  final TfArg<bool>? includeHost;

  final TfArg<List<String>>? includeNamedCookies;

  final TfArg<bool>? includeProtocol;

  final TfArg<bool>? includeQueryString;

  final TfArg<List<String>>? queryStringBlacklist;

  final TfArg<List<String>>? queryStringWhitelist;

  Map<String, Object?> encode() => {
    'include_host': ?includeHost?.toTfJson(),
    'include_named_cookies': ?includeNamedCookies?.toTfJson(),
    'include_protocol': ?includeProtocol?.toTfJson(),
    'include_query_string': ?includeQueryString?.toTfJson(),
    'query_string_blacklist': ?queryStringBlacklist?.toTfJson(),
    'query_string_whitelist': ?queryStringWhitelist?.toTfJson(),
  };
}

/// Typed helper for the `cdn_policy.negative_caching_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceNegativeCachingPolicy {
  const ComputeRegionBackendServiceNegativeCachingPolicy({this.code});

  final TfArg<num>? code;

  Map<String, Object?> encode() => {'code': ?code?.toTfJson()};
}

/// Typed helper for the `circuit_breakers` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceCircuitBreakers {
  const ComputeRegionBackendServiceCircuitBreakers({
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  final TfArg<num>? maxConnections;

  final TfArg<num>? maxPendingRequests;

  final TfArg<num>? maxRequests;

  final TfArg<num>? maxRequestsPerConnection;

  final TfArg<num>? maxRetries;

  Map<String, Object?> encode() => {
    'max_connections': ?maxConnections?.toTfJson(),
    'max_pending_requests': ?maxPendingRequests?.toTfJson(),
    'max_requests': ?maxRequests?.toTfJson(),
    'max_requests_per_connection': ?maxRequestsPerConnection?.toTfJson(),
    'max_retries': ?maxRetries?.toTfJson(),
  };
}

/// Typed helper for the `connection_tracking_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceConnectionTrackingPolicy {
  const ComputeRegionBackendServiceConnectionTrackingPolicy({
    this.connectionPersistenceOnUnhealthyBackends,
    this.enableStrongAffinity,
    this.idleTimeoutSec,
    this.trackingMode,
  });

  final TfArg<RegionBackendServiceConnectionPersistence>?
  connectionPersistenceOnUnhealthyBackends;

  final TfArg<bool>? enableStrongAffinity;

  final TfArg<num>? idleTimeoutSec;

  final TfArg<RegionBackendServiceTrackingMode>? trackingMode;

  Map<String, Object?> encode() => {
    'connection_persistence_on_unhealthy_backends':
        ?connectionPersistenceOnUnhealthyBackends?.toTfJson(),
    'enable_strong_affinity': ?enableStrongAffinity?.toTfJson(),
    'idle_timeout_sec': ?idleTimeoutSec?.toTfJson(),
    'tracking_mode': ?trackingMode?.toTfJson(),
  };
}

/// Typed helper for the `consistent_hash` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceConsistentHash {
  const ComputeRegionBackendServiceConsistentHash({
    this.httpHeaderName,
    this.minimumRingSize,
    this.httpCookie,
  });

  final TfArg<String>? httpHeaderName;

  final TfArg<num>? minimumRingSize;

  final ComputeRegionBackendServiceHttpCookie? httpCookie;

  Map<String, Object?> encode() => {
    'http_header_name': ?httpHeaderName?.toTfJson(),
    'minimum_ring_size': ?minimumRingSize?.toTfJson(),
    'http_cookie': ?httpCookie?.encode(),
  };
}

/// Typed helper for the `consistent_hash.http_cookie` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceHttpCookie {
  const ComputeRegionBackendServiceHttpCookie({this.name, this.path, this.ttl});

  final TfArg<String>? name;

  final TfArg<String>? path;

  final ComputeRegionBackendServiceTtl? ttl;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `strong_session_affinity_cookie.ttl` block of
/// `google_compute_region_backend_service` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ComputeRegionBackendServiceTtl {
  const ComputeRegionBackendServiceTtl({this.nanos, required this.seconds});

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `custom_metrics` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceCustomMetrics {
  const ComputeRegionBackendServiceCustomMetrics({
    required this.dryRun,
    required this.name,
  });

  final TfArg<bool> dryRun;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'dry_run': dryRun.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `failover_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceFailoverPolicy {
  const ComputeRegionBackendServiceFailoverPolicy({
    this.disableConnectionDrainOnFailover,
    this.dropTrafficIfUnhealthy,
    this.failoverRatio,
  });

  final TfArg<bool>? disableConnectionDrainOnFailover;

  final TfArg<bool>? dropTrafficIfUnhealthy;

  final TfArg<num>? failoverRatio;

  Map<String, Object?> encode() => {
    'disable_connection_drain_on_failover': ?disableConnectionDrainOnFailover
        ?.toTfJson(),
    'drop_traffic_if_unhealthy': ?dropTrafficIfUnhealthy?.toTfJson(),
    'failover_ratio': ?failoverRatio?.toTfJson(),
  };
}

/// Typed helper for the `ha_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceHaPolicy {
  const ComputeRegionBackendServiceHaPolicy({this.fastIpMove, this.leader});

  final TfArg<RegionBackendServiceFastIpMove>? fastIpMove;

  final ComputeRegionBackendServiceLeader? leader;

  Map<String, Object?> encode() => {
    'fast_ip_move': ?fastIpMove?.toTfJson(),
    'leader': ?leader?.encode(),
  };
}

/// Typed helper for the `ha_policy.leader` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceLeader {
  const ComputeRegionBackendServiceLeader({
    this.backendGroup,
    this.networkEndpoint,
  });

  final TfArg<String>? backendGroup;

  final ComputeRegionBackendServiceNetworkEndpoint? networkEndpoint;

  Map<String, Object?> encode() => {
    'backend_group': ?backendGroup?.toTfJson(),
    'network_endpoint': ?networkEndpoint?.encode(),
  };
}

/// Typed helper for the `ha_policy.leader.network_endpoint` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceNetworkEndpoint {
  const ComputeRegionBackendServiceNetworkEndpoint({this.instance});

  final TfArg<String>? instance;

  Map<String, Object?> encode() => {'instance': ?instance?.toTfJson()};
}

/// Typed helper for the `iap` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceIap {
  const ComputeRegionBackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? oauth2ClientId;

  final TfArg<String>? oauth2ClientSecret;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'oauth2_client_id': ?oauth2ClientId?.toTfJson(),
    'oauth2_client_secret': ?oauth2ClientSecret?.toTfJson(),
  };
}

/// Typed helper for the `log_config` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceLogConfig {
  const ComputeRegionBackendServiceLogConfig({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
    this.requestHeaders,
    this.responseHeaders,
  });

  final TfArg<bool>? enable;

  final TfArg<List<String>>? optionalFields;

  final TfArg<RegionBackendServiceLogOptionalMode>? optionalMode;

  final TfArg<num>? sampleRate;

  final List<ComputeRegionBackendServiceRequestHeaders>? requestHeaders;

  final List<ComputeRegionBackendServiceResponseHeaders>? responseHeaders;

  Map<String, Object?> encode() => {
    'enable': ?enable?.toTfJson(),
    'optional_fields': ?optionalFields?.toTfJson(),
    'optional_mode': ?optionalMode?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
    if (requestHeaders != null)
      'request_headers': [for (final e in requestHeaders!) e.encode()],
    if (responseHeaders != null)
      'response_headers': [for (final e in responseHeaders!) e.encode()],
  };
}

/// Typed helper for the `log_config.request_headers` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceRequestHeaders {
  const ComputeRegionBackendServiceRequestHeaders({required this.headerName});

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `log_config.response_headers` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceResponseHeaders {
  const ComputeRegionBackendServiceResponseHeaders({required this.headerName});

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `network_pass_through_lb_traffic_policy` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceNetworkPassThroughLbTrafficPolicy {
  const ComputeRegionBackendServiceNetworkPassThroughLbTrafficPolicy({
    this.zonalAffinity,
  });

  final ComputeRegionBackendServiceZonalAffinity? zonalAffinity;

  Map<String, Object?> encode() => {'zonal_affinity': ?zonalAffinity?.encode()};
}

/// Typed helper for the `network_pass_through_lb_traffic_policy.zonal_affinity` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceZonalAffinity {
  const ComputeRegionBackendServiceZonalAffinity({
    this.spillover,
    this.spilloverRatio,
  });

  final TfArg<RegionBackendServiceZonalAffinitySpillover>? spillover;

  final TfArg<num>? spilloverRatio;

  Map<String, Object?> encode() => {
    'spillover': ?spillover?.toTfJson(),
    'spillover_ratio': ?spilloverRatio?.toTfJson(),
  };
}

/// Typed helper for the `outlier_detection` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceOutlierDetection {
  const ComputeRegionBackendServiceOutlierDetection({
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

  final TfArg<num>? consecutiveErrors;

  final TfArg<num>? consecutiveGatewayFailure;

  final TfArg<num>? enforcingConsecutiveErrors;

  final TfArg<num>? enforcingConsecutiveGatewayFailure;

  final TfArg<num>? enforcingSuccessRate;

  final TfArg<num>? maxEjectionPercent;

  final TfArg<num>? successRateMinimumHosts;

  final TfArg<num>? successRateRequestVolume;

  final TfArg<num>? successRateStdevFactor;

  final ComputeRegionBackendServiceBaseEjectionTime? baseEjectionTime;

  final ComputeRegionBackendServiceInterval? interval;

  Map<String, Object?> encode() => {
    'consecutive_errors': ?consecutiveErrors?.toTfJson(),
    'consecutive_gateway_failure': ?consecutiveGatewayFailure?.toTfJson(),
    'enforcing_consecutive_errors': ?enforcingConsecutiveErrors?.toTfJson(),
    'enforcing_consecutive_gateway_failure': ?enforcingConsecutiveGatewayFailure
        ?.toTfJson(),
    'enforcing_success_rate': ?enforcingSuccessRate?.toTfJson(),
    'max_ejection_percent': ?maxEjectionPercent?.toTfJson(),
    'success_rate_minimum_hosts': ?successRateMinimumHosts?.toTfJson(),
    'success_rate_request_volume': ?successRateRequestVolume?.toTfJson(),
    'success_rate_stdev_factor': ?successRateStdevFactor?.toTfJson(),
    'base_ejection_time': ?baseEjectionTime?.encode(),
    'interval': ?interval?.encode(),
  };
}

/// Typed helper for the `outlier_detection.base_ejection_time` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceBaseEjectionTime {
  const ComputeRegionBackendServiceBaseEjectionTime({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `outlier_detection.interval` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceInterval {
  const ComputeRegionBackendServiceInterval({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<num> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceParams {
  const ComputeRegionBackendServiceParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `strong_session_affinity_cookie` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceStrongSessionAffinityCookie {
  const ComputeRegionBackendServiceStrongSessionAffinityCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;

  final TfArg<String>? path;

  final ComputeRegionBackendServiceTtl? ttl;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `tls_settings` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceTlsSettings {
  const ComputeRegionBackendServiceTlsSettings({
    this.authenticationConfig,
    this.sni,
    this.subjectAltNames,
  });

  final TfArg<String>? authenticationConfig;

  final TfArg<String>? sni;

  final List<ComputeRegionBackendServiceSubjectAltNames>? subjectAltNames;

  Map<String, Object?> encode() => {
    'authentication_config': ?authenticationConfig?.toTfJson(),
    'sni': ?sni?.toTfJson(),
    if (subjectAltNames != null)
      'subject_alt_names': [for (final e in subjectAltNames!) e.encode()],
  };
}

/// Typed helper for the `tls_settings.subject_alt_names` block of
/// `google_compute_region_backend_service` (derived from provider schema).
@immutable
final class ComputeRegionBackendServiceSubjectAltNames {
  const ComputeRegionBackendServiceSubjectAltNames({
    this.dnsName,
    this.uniformResourceIdentifier,
  });

  final TfArg<String>? dnsName;

  final TfArg<String>? uniformResourceIdentifier;

  Map<String, Object?> encode() => {
    'dns_name': ?dnsName?.toTfJson(),
    'uniform_resource_identifier': ?uniformResourceIdentifier?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_backend_service`.
///
/// A Region Backend Service defines a regionally-scoped group of virtual
/// machines that will serve traffic for load balancing.
///
/// ~> **Note:** Recreating a `google_compute_region_backend_service` that
/// references other dependent resources like `google_compute_instance_group`
/// will give a `resourceInUseByAnotherResource` error, when decreasing the
/// number of other dependent resources. Use `lifecycle.create_before_destroy`
/// on the dependent resources to avoid this type of error as shown in the
/// Dynamic Backend Count example.
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
/// [ComputeRegionBackendServiceFailoverPolicy] (Internal Passthrough NLB
/// failover), [ComputeRegionBackendServiceHaPolicy] (self-managed HA for
/// Passthrough NLBs), and
/// [ComputeRegionBackendServiceNetworkPassThroughLbTrafficPolicy] (zonal
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
///   [ComputeRegionBackendServiceHaPolicy] (HA-managed services cannot
///   coexist with health checks).
/// - [securityPolicy]: self-link to a regional Cloud Armor
///   `google_compute_region_security_policy`. Regional Cloud Armor
///   support is restricted to certain `load_balancing_scheme` values
///   (notably the regional managed schemes); the API rejects
///   incompatible combinations at apply time.
/// - [ComputeRegionBackendServiceBackend.group]: self-link of an instance
///   group, regional MIG, or `region_network_endpoint_group`. All
///   backends in one service must share a kind (no mixing instance
///   groups with NEGs).
/// - [network]: self-link of a `google_compute_network`. Required for
///   Internal Passthrough NLBs when [ComputeRegionBackendServiceHaPolicy] is
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
///   backend: [
///     ComputeRegionBackendServiceBackend(
///       group: TfArg.literal(
///         // var.backend_group_id — typically a Batch 4 regional NEG
///         // or a Batch 3 regional MIG self-link.
///         'projects/p/regions/asia-northeast1/networkEndpointGroups/api-rneg',
///       ),
///       balancingMode: TfArg.literal(RegionBackendServiceBalancingMode.rate),
///       maxRatePerEndpoint: TfArg.literal(100),
///       capacityScaler: TfArg.literal(1.0),
///     ),
///   ],
///   iap: ComputeRegionBackendServiceIap(
///     enabled: TfArg.literal(true),
///     oauth2ClientId: TfArg.literal('xxx.apps.googleusercontent.com'),
///     // sensitive — masked at synth.
///     oauth2ClientSecret: TfArg.literal('super-secret'),
///   ),
///   logConfig: ComputeRegionBackendServiceLogConfig(
///     enable: TfArg.literal(true),
///     sampleRate: TfArg.literal(1.0),
///   ),
/// );
/// ```
///
/// Sensitive fields (round-trip through the generated `sensitiveFields`
/// set): `iap.oauth2_client_secret` and the computed
/// `iap.oauth2_client_secret_sha256` (provider-side detail). The global
/// `security_settings.aws_v4_authentication.access_key` is **not**
/// present on the regional resource — `security_settings` has no
/// regional analog.
final class GoogleComputeRegionBackendService extends Resource {
  static const String tfType = 'google_compute_region_backend_service';

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
    RefTo<GoogleComputeNetwork>? network,
    TfArg<List<String>>? healthChecks,
    TfArg<String>? securityPolicy,
    List<ComputeRegionBackendServiceBackend>? backend,
    ComputeRegionBackendServiceCdnPolicy? cdnPolicy,
    ComputeRegionBackendServiceIap? iap,
    ComputeRegionBackendServiceCircuitBreakers? circuitBreakers,
    ComputeRegionBackendServiceConsistentHash? consistentHash,
    ComputeRegionBackendServiceConnectionTrackingPolicy?
    connectionTrackingPolicy,
    ComputeRegionBackendServiceOutlierDetection? outlierDetection,
    ComputeRegionBackendServiceLogConfig? logConfig,
    List<ComputeRegionBackendServiceCustomMetrics>? customMetrics,
    ComputeRegionBackendServiceStrongSessionAffinityCookie?
    strongSessionAffinityCookie,
    ComputeRegionBackendServiceFailoverPolicy? failoverPolicy,
    ComputeRegionBackendServiceHaPolicy? haPolicy,
    ComputeRegionBackendServiceNetworkPassThroughLbTrafficPolicy?
    networkPassThroughLbTrafficPolicy,
    ComputeRegionBackendServiceTlsSettings? tlsSettings,
    ComputeRegionBackendServiceParams? params,
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
           'description': ?description,
           'protocol': ?protocol,
           'port_name': ?portName,
           'load_balancing_scheme': ?loadBalancingScheme,
           'locality_lb_policy': ?localityLbPolicy,
           'session_affinity': ?sessionAffinity,
           'affinity_cookie_ttl_sec': ?affinityCookieTtlSec,
           'timeout_sec': ?timeoutSec,
           'connection_draining_timeout_sec': ?connectionDrainingTimeoutSec,
           'enable_cdn': ?enableCdn,
           'ip_address_selection_policy': ?ipAddressSelectionPolicy,
           'network': ?network?.encodeAs('id'),
           'health_checks': ?healthChecks,
           'security_policy': ?securityPolicy,
           if (backend != null)
             'backend': TfArg.literal([for (final e in backend) e.encode()]),
           if (cdnPolicy != null)
             'cdn_policy': TfArg.literal(cdnPolicy.encode()),
           if (iap != null) 'iap': TfArg.literal(iap.encode()),
           if (circuitBreakers != null)
             'circuit_breakers': TfArg.literal(circuitBreakers.encode()),
           if (consistentHash != null)
             'consistent_hash': TfArg.literal(consistentHash.encode()),
           if (connectionTrackingPolicy != null)
             'connection_tracking_policy': TfArg.literal(
               connectionTrackingPolicy.encode(),
             ),
           if (outlierDetection != null)
             'outlier_detection': TfArg.literal(outlierDetection.encode()),
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (customMetrics != null)
             'custom_metrics': TfArg.literal([
               for (final e in customMetrics) e.encode(),
             ]),
           if (strongSessionAffinityCookie != null)
             'strong_session_affinity_cookie': TfArg.literal(
               strongSessionAffinityCookie.encode(),
             ),
           if (failoverPolicy != null)
             'failover_policy': TfArg.literal(failoverPolicy.encode()),
           if (haPolicy != null) 'ha_policy': TfArg.literal(haPolicy.encode()),
           if (networkPassThroughLbTrafficPolicy != null)
             'network_pass_through_lb_traffic_policy': TfArg.literal(
               networkPassThroughLbTrafficPolicy.encode(),
             ),
           if (tlsSettings != null)
             'tls_settings': TfArg.literal(tlsSettings.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionBackendServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionBackendService>`.
  RefTo<GoogleComputeRegionBackendService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `affinity_cookie_ttl_sec` attribute.
  TfRef<num> get affinityCookieTtlSec =>
      TfRef.attribute<num>(this, 'affinity_cookie_ttl_sec');

  /// Reference to `connection_draining_timeout_sec` attribute.
  TfRef<num> get connectionDrainingTimeoutSec =>
      TfRef.attribute<num>(this, 'connection_draining_timeout_sec');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_cdn` attribute.
  TfRef<bool> get enableCdn => TfRef.attribute<bool>(this, 'enable_cdn');

  /// Reference to `health_checks` attribute.
  TfRef<List<String>> get healthChecks =>
      TfRef.attribute<List<String>>(this, 'health_checks');

  /// Reference to `ip_address_selection_policy` attribute.
  TfRef<String> get ipAddressSelectionPolicy =>
      TfRef.attribute<String>(this, 'ip_address_selection_policy');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `locality_lb_policy` attribute.
  TfRef<String> get localityLbPolicy =>
      TfRef.attribute<String>(this, 'locality_lb_policy');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `port_name` attribute.
  TfRef<String> get portName => TfRef.attribute<String>(this, 'port_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');

  /// Reference to `session_affinity` attribute.
  TfRef<String> get sessionAffinity =>
      TfRef.attribute<String>(this, 'session_affinity');

  /// Reference to `timeout_sec` attribute.
  TfRef<num> get timeoutSec => TfRef.attribute<num>(this, 'timeout_sec');

  /// Reference to the server-assigned numeric `generated_id`.
  /// Kept at `TfRef<int>` — schema type is `number` (derived would widen
  /// to `TfRef<num>`).
  TfRef<int> get generatedId => TfRef.attribute<int>(this, 'generated_id');
}
