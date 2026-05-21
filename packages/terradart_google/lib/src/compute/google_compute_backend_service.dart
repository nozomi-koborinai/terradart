// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_service`.
const Set<String> _googleComputeBackendServiceSensitive = <String>{
  'iap.oauth2_client_secret',
  'iap.oauth2_client_secret_sha256',
  'security_settings.aws_v4_authentication.access_key',
};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Wire protocol the backend service uses to talk to backends. `HTTP2`
/// and `H2C` require an HTTP(S)-class load balancer; `TCP`, `SSL`, and
/// `UDP` are for Network Load Balancing / Traffic Director TCP routing.
/// `GRPC` is required when the URL map is bound to a target gRPC proxy.
enum BackendServiceProtocol {
  http('HTTP'),
  https('HTTPS'),
  http2('HTTP2'),
  tcp('TCP'),
  ssl('SSL'),
  udp('UDP'),
  grpc('GRPC'),
  unspecified('UNSPECIFIED'),
  h2c('H2C');

  const BackendServiceProtocol(this.terraformValue);
  final String terraformValue;
}

/// `load_balancing_scheme`. A backend service of one scheme cannot be
/// repurposed for another — the value is effectively immutable except
/// through the [ExternalManagedMigrationState] dance.
///
/// **Global-vs-regional**: this wrapper is for the *global* variant
/// (`google_compute_backend_service`). Only [external],
/// [externalManaged], and [internalSelfManaged] are valid at apply time
/// on a global backend service. [internalManaged] is included because
/// the Terraform schema accepts it but it will be rejected by the GCP
/// API on a global resource — use `google_compute_region_backend_service`
/// (curated separately) for `INTERNAL_MANAGED`.
enum LoadBalancingScheme {
  external('EXTERNAL'),
  externalManaged('EXTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED'),
  internalManaged('INTERNAL_MANAGED');

  const LoadBalancingScheme(this.terraformValue);
  final String terraformValue;
}

/// `locality_lb_policy`. See the schema docstring for the matrix of which
/// values are valid for which combination of `protocol` and
/// `load_balancing_scheme` — Cloud Load Balancing silently coerces
/// invalid values to the scheme's default at apply time.
enum LocalityLbPolicy {
  roundRobin('ROUND_ROBIN'),
  leastRequest('LEAST_REQUEST'),
  ringHash('RING_HASH'),
  random('RANDOM'),
  originalDestination('ORIGINAL_DESTINATION'),
  maglev('MAGLEV'),
  weightedMaglev('WEIGHTED_MAGLEV'),
  weightedRoundRobin('WEIGHTED_ROUND_ROBIN');

  const LocalityLbPolicy(this.terraformValue);
  final String terraformValue;
}

/// `session_affinity`. Applicable only when the locality LB policy is
/// one of `MAGLEV`, `WEIGHTED_MAGLEV`, or `RING_HASH` (otherwise the
/// setting is silently ignored).
enum SessionAffinity {
  none('NONE'),
  clientIp('CLIENT_IP'),
  clientIpPortProto('CLIENT_IP_PORT_PROTO'),
  clientIpProto('CLIENT_IP_PROTO'),
  generatedCookie('GENERATED_COOKIE'),
  headerField('HEADER_FIELD'),
  httpCookie('HTTP_COOKIE'),
  strongCookieAffinity('STRONG_COOKIE_AFFINITY');

  const SessionAffinity(this.terraformValue);
  final String terraformValue;
}

/// `compression_mode`. Brotli / gzip negotiation based on the client's
/// `Accept-Encoding` header.
enum BackendServiceCompressionMode {
  automatic('AUTOMATIC'),
  disabled('DISABLED');

  const BackendServiceCompressionMode(this.terraformValue);
  final String terraformValue;
}

/// `ip_address_selection_policy`. Controls IPv4-vs-IPv6 preference when
/// the load balancer dials a backend (or when a proxyless gRPC client
/// dials directly).
enum IpAddressSelectionPolicy {
  ipv4Only('IPV4_ONLY'),
  preferIpv6('PREFER_IPV6'),
  ipv6Only('IPV6_ONLY');

  const IpAddressSelectionPolicy(this.terraformValue);
  final String terraformValue;
}

/// `external_managed_migration_state`. Drives the Classic ALB →
/// Application Load Balancer migration. State must transition
/// `PREPARE` → optional `TEST_BY_PERCENTAGE` → `TEST_ALL_TRAFFIC`
/// before the load balancing scheme can flip from `EXTERNAL` to
/// `EXTERNAL_MANAGED`; same order in reverse to roll back.
enum ExternalManagedMigrationState {
  prepare('PREPARE'),
  testByPercentage('TEST_BY_PERCENTAGE'),
  testAllTraffic('TEST_ALL_TRAFFIC');

  const ExternalManagedMigrationState(this.terraformValue);
  final String terraformValue;
}

/// Per-backend balancing mode. See [ComputeBackendServiceBackendServiceBackend.balancingMode].
enum BackendServiceBalancingMode {
  utilization('UTILIZATION'),
  rate('RATE'),
  connection('CONNECTION'),
  customMetrics('CUSTOM_METRICS'),
  inFlight('IN_FLIGHT');

  const BackendServiceBalancingMode(this.terraformValue);
  final String terraformValue;
}

/// `backend.preference`. Cannot be set when `load_balancing_scheme` is
/// `EXTERNAL`.
enum BackendServicePreference {
  preferred('PREFERRED'),
  defaultPref('DEFAULT');

  const BackendServicePreference(this.terraformValue);
  final String terraformValue;
}

/// `cdn_policy.cache_mode`. Enabling CDN (`enable_cdn = true`) without
/// setting this defaults to `CACHE_ALL_STATIC`.
enum BackendServiceCacheMode {
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  cacheAllStatic('CACHE_ALL_STATIC');

  const BackendServiceCacheMode(this.terraformValue);
  final String terraformValue;
}

/// `log_config.optional_mode`. Controls which optional access-log
/// fields are exported when [ComputeBackendServiceBackendServiceLogConfig.enable] is true.
enum BackendServiceLogOptionalMode {
  includeAllOptional('INCLUDE_ALL_OPTIONAL'),
  excludeAllOptional('EXCLUDE_ALL_OPTIONAL'),
  custom('CUSTOM');

  const BackendServiceLogOptionalMode(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// backend block (nesting=set) and its custom_metrics sub-block
// ===========================================================================

/// One entry in the `backends` set. The backend's [group] is the
/// self-link of an Instance Group, Network Endpoint Group, or backend
/// bucket — all backends in a single service must share the same kind
/// (no mixing IG with NEG).
@immutable
class ComputeBackendServiceBackendServiceBackend {
  const ComputeBackendServiceBackendServiceBackend({
    required this.group,
    this.balancingMode,
    this.capacityScaler,
    this.description,
    this.maxConnections,
    this.maxConnectionsPerEndpoint,
    this.maxConnectionsPerInstance,
    this.maxRate,
    this.maxRatePerEndpoint,
    this.maxRatePerInstance,
    this.maxUtilization,
    this.preference,
    this.customMetrics,
  });

  /// Fully-qualified self-link of an Instance Group, Network Endpoint
  /// Group, or backend bucket. Required.
  final TfArg<String> group;

  /// How the load balancer measures capacity for this backend.
  final BackendServiceBalancingMode? balancingMode;

  /// Multiplier on the group's configured capacity (`0.0`-`1.0`).
  /// Setting to `0.0` drains the backend.
  final TfArg<double>? capacityScaler;

  /// Free-form description.
  final TfArg<String>? description;

  /// Max simultaneous connections for the group (`CONNECTION` /
  /// `UTILIZATION` modes).
  final TfArg<int>? maxConnections;

  /// Max simultaneous connections per endpoint (NEG-shaped backends).
  final TfArg<int>? maxConnectionsPerEndpoint;

  /// Max simultaneous connections per backend instance (IG-shaped
  /// backends).
  final TfArg<int>? maxConnectionsPerInstance;

  /// Max RPS for the group (`RATE` / `UTILIZATION` modes).
  final TfArg<int>? maxRate;

  /// Max RPS per endpoint.
  final TfArg<double>? maxRatePerEndpoint;

  /// Max RPS per instance.
  final TfArg<double>? maxRatePerInstance;

  /// Target CPU utilization in `UTILIZATION` mode (`0.0`-`1.0`).
  final TfArg<double>? maxUtilization;

  /// Backend preference layer. Disallowed when `load_balancing_scheme`
  /// is `EXTERNAL`.
  final BackendServicePreference? preference;

  /// Custom metrics descriptors for `CUSTOM_METRICS` balancing.
  final List<ComputeBackendServiceBackendServiceBackendCustomMetric>?
  customMetrics;

  Map<String, Object?> toArgMap() => {
    'group': group.toTfJson(),
    if (balancingMode != null) 'balancing_mode': balancingMode!.terraformValue,
    if (capacityScaler != null) 'capacity_scaler': capacityScaler!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (maxConnections != null) 'max_connections': maxConnections!.toTfJson(),
    if (maxConnectionsPerEndpoint != null)
      'max_connections_per_endpoint': maxConnectionsPerEndpoint!.toTfJson(),
    if (maxConnectionsPerInstance != null)
      'max_connections_per_instance': maxConnectionsPerInstance!.toTfJson(),
    if (maxRate != null) 'max_rate': maxRate!.toTfJson(),
    if (maxRatePerEndpoint != null)
      'max_rate_per_endpoint': maxRatePerEndpoint!.toTfJson(),
    if (maxRatePerInstance != null)
      'max_rate_per_instance': maxRatePerInstance!.toTfJson(),
    if (maxUtilization != null) 'max_utilization': maxUtilization!.toTfJson(),
    if (preference != null) 'preference': preference!.terraformValue,
    if (customMetrics != null)
      'custom_metrics': customMetrics!.map((m) => m.toArgMap()).toList(),
  };
}

/// One entry under `backend.custom_metrics` — a signal exported by the
/// backend that the load balancer should consider when `balancingMode`
/// is [BackendServiceBalancingMode.customMetrics].
@immutable
class ComputeBackendServiceBackendServiceBackendCustomMetric {
  const ComputeBackendServiceBackendServiceBackendCustomMetric({
    required this.name,
    required this.dryRun,
    this.maxUtilization,
  });

  /// Metric name. 1-64 chars, lowercase RFC1035-ish (see schema).
  final TfArg<String> name;

  /// If `true`, the metric is reported to Cloud Monitoring but is not
  /// used for load balancing.
  final TfArg<bool> dryRun;

  /// Optional target utilization (`0.0`-`1.0`) for this metric.
  final TfArg<double>? maxUtilization;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'dry_run': dryRun.toTfJson(),
    if (maxUtilization != null) 'max_utilization': maxUtilization!.toTfJson(),
  };
}

// ===========================================================================
// cdn_policy block (max_items=1) and its sub-blocks
// ===========================================================================

/// `cdn_policy` block. Only honored when [enableCdn] is `true`.
@immutable
class ComputeBackendServiceBackendServiceCdnPolicy {
  const ComputeBackendServiceBackendServiceCdnPolicy({
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.requestCoalescing,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
    this.bypassCacheOnRequestHeaders,
    this.cacheKeyPolicy,
    this.negativeCachingPolicy,
  });

  /// Cache mode. Defaults to `CACHE_ALL_STATIC` when CDN is enabled.
  final BackendServiceCacheMode? cacheMode;

  /// Max TTL (seconds) for content served to clients.
  final TfArg<int>? clientTtl;

  /// Default TTL for cached content with no upstream `Cache-Control`.
  final TfArg<int>? defaultTtl;

  /// Hard ceiling on cached content TTL.
  final TfArg<int>? maxTtl;

  /// Negative caching for selected status codes.
  final TfArg<bool>? negativeCaching;

  /// Coalesce concurrent cache-fill requests to the origin.
  final TfArg<bool>? requestCoalescing;

  /// Serve cached content during origin revalidation/errors (seconds).
  final TfArg<int>? serveWhileStale;

  /// TTL for signed-URL responses (defaults to 3600).
  final TfArg<int>? signedUrlCacheMaxAgeSec;

  /// Bypass cache when any of these request headers is present.
  final List<ComputeBackendServiceBackendServiceCdnBypassCacheOnRequestHeader>?
  bypassCacheOnRequestHeaders;

  /// Cache key policy — which request components participate in the
  /// cache key.
  final ComputeBackendServiceBackendServiceCdnCacheKeyPolicy? cacheKeyPolicy;

  /// Per-status-code negative-cache TTLs. Only honored when
  /// [negativeCaching] is `true`.
  final List<ComputeBackendServiceBackendServiceCdnNegativeCachingPolicy>?
  negativeCachingPolicy;

  Map<String, Object?> toArgMap() => {
    if (cacheMode != null) 'cache_mode': cacheMode!.terraformValue,
    if (clientTtl != null) 'client_ttl': clientTtl!.toTfJson(),
    if (defaultTtl != null) 'default_ttl': defaultTtl!.toTfJson(),
    if (maxTtl != null) 'max_ttl': maxTtl!.toTfJson(),
    if (negativeCaching != null)
      'negative_caching': negativeCaching!.toTfJson(),
    if (requestCoalescing != null)
      'request_coalescing': requestCoalescing!.toTfJson(),
    if (serveWhileStale != null)
      'serve_while_stale': serveWhileStale!.toTfJson(),
    if (signedUrlCacheMaxAgeSec != null)
      'signed_url_cache_max_age_sec': signedUrlCacheMaxAgeSec!.toTfJson(),
    if (bypassCacheOnRequestHeaders != null)
      'bypass_cache_on_request_headers': bypassCacheOnRequestHeaders!
          .map((h) => h.toArgMap())
          .toList(),
    if (cacheKeyPolicy != null)
      'cache_key_policy': [cacheKeyPolicy!.toArgMap()],
    if (negativeCachingPolicy != null)
      'negative_caching_policy': negativeCachingPolicy!
          .map((p) => p.toArgMap())
          .toList(),
  };
}

/// Cache-bypass rule keyed on a request header name.
@immutable
class ComputeBackendServiceBackendServiceCdnBypassCacheOnRequestHeader {
  const ComputeBackendServiceBackendServiceCdnBypassCacheOnRequestHeader({
    required this.headerName,
  });

  /// Header field name (case-insensitive).
  final TfArg<String> headerName;

  Map<String, Object?> toArgMap() => {'header_name': headerName.toTfJson()};
}

/// `cdn_policy.cache_key_policy` (`max_items=1`).
@immutable
class ComputeBackendServiceBackendServiceCdnCacheKeyPolicy {
  const ComputeBackendServiceBackendServiceCdnCacheKeyPolicy({
    this.includeHost,
    this.includeProtocol,
    this.includeQueryString,
    this.includeHttpHeaders,
    this.includeNamedCookies,
    this.queryStringWhitelist,
    this.queryStringBlacklist,
  });

  final TfArg<bool>? includeHost;
  final TfArg<bool>? includeProtocol;
  final TfArg<bool>? includeQueryString;
  final List<String>? includeHttpHeaders;
  final List<String>? includeNamedCookies;
  final List<String>? queryStringWhitelist;
  final List<String>? queryStringBlacklist;

  Map<String, Object?> toArgMap() => {
    if (includeHost != null) 'include_host': includeHost!.toTfJson(),
    if (includeProtocol != null)
      'include_protocol': includeProtocol!.toTfJson(),
    if (includeQueryString != null)
      'include_query_string': includeQueryString!.toTfJson(),
    if (includeHttpHeaders != null)
      'include_http_headers': includeHttpHeaders,
    if (includeNamedCookies != null)
      'include_named_cookies': includeNamedCookies,
    if (queryStringWhitelist != null)
      'query_string_whitelist': queryStringWhitelist,
    if (queryStringBlacklist != null)
      'query_string_blacklist': queryStringBlacklist,
  };
}

/// One row in `cdn_policy.negative_caching_policy`.
@immutable
class ComputeBackendServiceBackendServiceCdnNegativeCachingPolicy {
  const ComputeBackendServiceBackendServiceCdnNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  /// HTTP status code to apply a TTL to. Valid values per schema:
  /// 300, 301, 308, 404, 405, 410, 421, 451, 501. Each code may appear
  /// at most once.
  final TfArg<int>? code;

  /// TTL in seconds.
  final TfArg<int>? ttl;

  Map<String, Object?> toArgMap() => {
    if (code != null) 'code': code!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
  };
}

// ===========================================================================
// iap block (max_items=1) — Identity-Aware Proxy
// ===========================================================================

/// `iap` block. Wraps the backend service in Cloud IAP, which gates
/// requests on an authenticated end-user identity / IAM check before
/// they reach the backend.
///
/// **Sensitive**: [oauth2ClientSecret] is flagged sensitive in the
/// schema and is masked at synth time via the generated
/// `$sensitiveFields` set. The computed
/// `oauth2_client_secret_sha256` is also sensitive — provider
/// implementation detail; nothing to set on this side.
@immutable
class ComputeBackendServiceBackendServiceIap {
  const ComputeBackendServiceBackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
  });

  /// Whether IAP is on. Setting `false` keeps the block but disables
  /// IAP enforcement.
  final TfArg<bool> enabled;

  /// OAuth 2.0 client ID for the OAuth consent screen.
  final TfArg<String>? oauth2ClientId;

  /// OAuth 2.0 client secret. **Sensitive** — round-trips through
  /// `$sensitiveFields`.
  final TfArg<String>? oauth2ClientSecret;

  Map<String, Object?> toArgMap() => {
    'enabled': enabled.toTfJson(),
    if (oauth2ClientId != null) 'oauth2_client_id': oauth2ClientId!.toTfJson(),
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
class ComputeBackendServiceBackendServiceCircuitBreakers {
  const ComputeBackendServiceBackendServiceCircuitBreakers({
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  final TfArg<int>? maxConnections;
  final TfArg<int>? maxPendingRequests;
  final TfArg<int>? maxRequests;
  final TfArg<int>? maxRequestsPerConnection;
  final TfArg<int>? maxRetries;

  Map<String, Object?> toArgMap() => {
    if (maxConnections != null) 'max_connections': maxConnections!.toTfJson(),
    if (maxPendingRequests != null)
      'max_pending_requests': maxPendingRequests!.toTfJson(),
    if (maxRequests != null) 'max_requests': maxRequests!.toTfJson(),
    if (maxRequestsPerConnection != null)
      'max_requests_per_connection': maxRequestsPerConnection!.toTfJson(),
    if (maxRetries != null) 'max_retries': maxRetries!.toTfJson(),
  };
}

// ===========================================================================
// consistent_hash (max_items=1)
// ===========================================================================

/// `consistent_hash` block. Only meaningful when [LocalityLbPolicy] is
/// `ringHash` or `maglev`.
@immutable
class ComputeBackendServiceBackendServiceConsistentHash {
  const ComputeBackendServiceBackendServiceConsistentHash({
    this.httpHeaderName,
    this.minimumRingSize,
    this.httpCookie,
  });

  /// Hash on the named HTTP header.
  final TfArg<String>? httpHeaderName;

  /// Minimum ring size for `RING_HASH`. Default 1024.
  final TfArg<int>? minimumRingSize;

  /// Hash on a named HTTP cookie.
  final ComputeBackendServiceBackendServiceConsistentHashHttpCookie? httpCookie;

  Map<String, Object?> toArgMap() => {
    if (httpHeaderName != null) 'http_header_name': httpHeaderName!.toTfJson(),
    if (minimumRingSize != null)
      'minimum_ring_size': minimumRingSize!.toTfJson(),
    if (httpCookie != null) 'http_cookie': [httpCookie!.toArgMap()],
  };
}

/// `consistent_hash.http_cookie` (max_items=1).
@immutable
class ComputeBackendServiceBackendServiceConsistentHashHttpCookie {
  const ComputeBackendServiceBackendServiceConsistentHashHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;
  final TfArg<String>? path;
  final ComputeBackendServiceBackendServiceDuration? ttl;

  Map<String, Object?> toArgMap() => {
    if (name != null) 'name': name!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (ttl != null) 'ttl': [ttl!.toArgMap()],
  };
}

/// google.protobuf.Duration-shaped value used by several sub-blocks
/// (`consistent_hash.http_cookie.ttl`,
/// `strong_session_affinity_cookie.ttl`,
/// `outlier_detection.base_ejection_time`, etc.).
@immutable
class ComputeBackendServiceBackendServiceDuration {
  const ComputeBackendServiceBackendServiceDuration({
    required this.seconds,
    this.nanos,
  });

  /// Whole seconds. Required by the schema for every Duration block.
  final TfArg<int> seconds;

  /// Sub-second nanoseconds (`0`-`999_999_999`).
  final TfArg<int>? nanos;

  Map<String, Object?> toArgMap() => {
    'seconds': seconds.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
  };
}

// ===========================================================================
// log_config (max_items=1)
// ===========================================================================

/// `log_config` block — Cloud Logging export configuration for the
/// backend service.
@immutable
class ComputeBackendServiceBackendServiceLogConfig {
  const ComputeBackendServiceBackendServiceLogConfig({
    this.enable,
    this.sampleRate,
    this.optionalMode,
    this.optionalFields,
  });

  /// Master switch.
  final TfArg<bool>? enable;

  /// Sample rate `0.0`-`1.0`. Ignored when [enable] is `false`.
  final TfArg<double>? sampleRate;

  /// Which optional fields to include.
  final BackendServiceLogOptionalMode? optionalMode;

  /// Custom field list when [optionalMode] is
  /// [BackendServiceLogOptionalMode.custom].
  final List<String>? optionalFields;

  Map<String, Object?> toArgMap() => {
    if (enable != null) 'enable': enable!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
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
class ComputeBackendServiceBackendServiceOutlierDetection {
  const ComputeBackendServiceBackendServiceOutlierDetection({
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

  final TfArg<int>? consecutiveErrors;
  final TfArg<int>? consecutiveGatewayFailure;
  final TfArg<int>? enforcingConsecutiveErrors;
  final TfArg<int>? enforcingConsecutiveGatewayFailure;
  final TfArg<int>? enforcingSuccessRate;
  final TfArg<int>? maxEjectionPercent;
  final TfArg<int>? successRateMinimumHosts;
  final TfArg<int>? successRateRequestVolume;
  final TfArg<int>? successRateStdevFactor;

  /// Base time a host stays ejected. Schema requires `seconds`.
  final ComputeBackendServiceBackendServiceDuration? baseEjectionTime;

  /// How often outlier detection runs. Schema requires `seconds`.
  final ComputeBackendServiceBackendServiceDuration? interval;

  Map<String, Object?> toArgMap() => {
    if (consecutiveErrors != null)
      'consecutive_errors': consecutiveErrors!.toTfJson(),
    if (consecutiveGatewayFailure != null)
      'consecutive_gateway_failure': consecutiveGatewayFailure!.toTfJson(),
    if (enforcingConsecutiveErrors != null)
      'enforcing_consecutive_errors': enforcingConsecutiveErrors!.toTfJson(),
    if (enforcingConsecutiveGatewayFailure != null)
      'enforcing_consecutive_gateway_failure':
          enforcingConsecutiveGatewayFailure!.toTfJson(),
    if (enforcingSuccessRate != null)
      'enforcing_success_rate': enforcingSuccessRate!.toTfJson(),
    if (maxEjectionPercent != null)
      'max_ejection_percent': maxEjectionPercent!.toTfJson(),
    if (successRateMinimumHosts != null)
      'success_rate_minimum_hosts': successRateMinimumHosts!.toTfJson(),
    if (successRateRequestVolume != null)
      'success_rate_request_volume': successRateRequestVolume!.toTfJson(),
    if (successRateStdevFactor != null)
      'success_rate_stdev_factor': successRateStdevFactor!.toTfJson(),
    if (baseEjectionTime != null)
      'base_ejection_time': [baseEjectionTime!.toArgMap()],
    if (interval != null) 'interval': [interval!.toArgMap()],
  };
}

// ===========================================================================
// security_settings (max_items=1)
// ===========================================================================

/// `security_settings` block — mTLS / TLS policy used when dialing
/// backends.
///
/// **Sensitive**: [ComputeBackendServiceBackendServiceAwsV4Authentication.accessKey] is
/// flagged sensitive in the schema and round-trips through
/// `$sensitiveFields`.
@immutable
class ComputeBackendServiceBackendServiceSecuritySettings {
  const ComputeBackendServiceBackendServiceSecuritySettings({
    this.clientTlsPolicy,
    this.subjectAltNames,
    this.awsV4Authentication,
  });

  /// Self-link of a `google_network_security_client_tls_policy`.
  final TfArg<String>? clientTlsPolicy;

  /// Expected SAN entries in the backend's certificate.
  final List<String>? subjectAltNames;

  /// AWS Signature v4 credentials, used when the backend is a private
  /// AWS endpoint reached via a Hybrid NEG.
  final ComputeBackendServiceBackendServiceAwsV4Authentication?
  awsV4Authentication;

  Map<String, Object?> toArgMap() => {
    if (clientTlsPolicy != null)
      'client_tls_policy': clientTlsPolicy!.toTfJson(),
    if (subjectAltNames != null)
      'subject_alt_names': subjectAltNames,
    if (awsV4Authentication != null)
      'aws_v4_authentication': [awsV4Authentication!.toArgMap()],
  };
}

/// `security_settings.aws_v4_authentication` (max_items=1).
/// [accessKey] is **sensitive**.
@immutable
class ComputeBackendServiceBackendServiceAwsV4Authentication {
  const ComputeBackendServiceBackendServiceAwsV4Authentication({
    this.accessKey,
    this.accessKeyId,
    this.accessKeyVersion,
    this.originRegion,
  });

  /// AWS secret access key. **Sensitive** — round-trips through
  /// `$sensitiveFields`.
  final TfArg<String>? accessKey;

  /// AWS access key ID.
  final TfArg<String>? accessKeyId;

  /// Secret Manager version of the access key.
  final TfArg<String>? accessKeyVersion;

  /// AWS region the credentials are scoped to.
  final TfArg<String>? originRegion;

  Map<String, Object?> toArgMap() => {
    if (accessKey != null) 'access_key': accessKey!.toTfJson(),
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (accessKeyVersion != null)
      'access_key_version': accessKeyVersion!.toTfJson(),
    if (originRegion != null) 'origin_region': originRegion!.toTfJson(),
  };
}

// ===========================================================================
// strong_session_affinity_cookie (max_items=1)
// ===========================================================================

/// `strong_session_affinity_cookie` block. Used only when
/// [sessionAffinity] is [SessionAffinity.strongCookieAffinity].
@immutable
class ComputeBackendServiceBackendServiceStrongSessionAffinityCookie {
  const ComputeBackendServiceBackendServiceStrongSessionAffinityCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;
  final TfArg<String>? path;

  /// Cookie TTL. Schema requires `seconds`.
  final ComputeBackendServiceBackendServiceDuration? ttl;

  Map<String, Object?> toArgMap() => {
    if (name != null) 'name': name!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (ttl != null) 'ttl': [ttl!.toArgMap()],
  };
}

// ===========================================================================
// max_stream_duration (max_items=1)
// ===========================================================================

/// `max_stream_duration` block. Schema quirk: the `seconds` attribute
/// is typed as a *string* (not a number) — pass a decimal string like
/// `"30"` or `"30.500"`.
@immutable
class ComputeBackendServiceBackendServiceMaxStreamDuration {
  const ComputeBackendServiceBackendServiceMaxStreamDuration({
    required this.seconds,
    this.nanos,
  });

  /// Decimal seconds as a string (schema oddity).
  final TfArg<String> seconds;

  final TfArg<int>? nanos;

  Map<String, Object?> toArgMap() => {
    'seconds': seconds.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
  };
}

// ===========================================================================
// tls_settings (max_items=1) and its subject_alt_names sub-block
// ===========================================================================

/// `tls_settings` block — newer (TLS 1.3 / authentication-config-based)
/// TLS configuration; preferred over [security_settings] when both
/// would otherwise apply.
@immutable
class ComputeBackendServiceBackendServiceTlsSettings {
  const ComputeBackendServiceBackendServiceTlsSettings({
    this.authenticationConfig,
    this.sni,
    this.subjectAltNames,
  });

  /// Self-link of a `google_network_security_authentication_config`.
  final TfArg<String>? authenticationConfig;

  /// SNI value to send on the TLS handshake.
  final TfArg<String>? sni;

  /// SAN matchers — at least one must match the backend's certificate.
  final List<ComputeBackendServiceBackendServiceTlsSubjectAltName>?
  subjectAltNames;

  Map<String, Object?> toArgMap() => {
    if (authenticationConfig != null)
      'authentication_config': authenticationConfig!.toTfJson(),
    if (sni != null) 'sni': sni!.toTfJson(),
    if (subjectAltNames != null)
      'subject_alt_names': subjectAltNames!.map((s) => s.toArgMap()).toList(),
  };
}

/// One entry under `tls_settings.subject_alt_names`. Exactly one of
/// [dnsName] / [uniformResourceIdentifier] should be set.
@immutable
class ComputeBackendServiceBackendServiceTlsSubjectAltName {
  const ComputeBackendServiceBackendServiceTlsSubjectAltName({
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
// locality_lb_policies (list)
// ===========================================================================

/// One entry under `locality_lb_policies`. Exactly one of [policy] /
/// [customPolicy] should be set per entry.
@immutable
class ComputeBackendServiceBackendServiceLocalityLbPolicyEntry {
  const ComputeBackendServiceBackendServiceLocalityLbPolicyEntry({
    this.policy,
    this.customPolicy,
  });

  /// Built-in policy reference (`{ name }`).
  final ComputeBackendServiceBackendServiceLocalityLbBuiltinPolicy? policy;

  /// Caller-supplied xDS policy (`{ name, data }`).
  final ComputeBackendServiceBackendServiceLocalityLbCustomPolicy? customPolicy;

  Map<String, Object?> toArgMap() => {
    if (policy != null) 'policy': [policy!.toArgMap()],
    if (customPolicy != null) 'custom_policy': [customPolicy!.toArgMap()],
  };
}

/// Built-in `locality_lb_policies[].policy` (max_items=1).
@immutable
class ComputeBackendServiceBackendServiceLocalityLbBuiltinPolicy {
  const ComputeBackendServiceBackendServiceLocalityLbBuiltinPolicy({
    required this.name,
  });

  /// Policy name — same vocabulary as the top-level
  /// [LocalityLbPolicy] string values (`ROUND_ROBIN`, `RING_HASH`, ...).
  final TfArg<String> name;

  Map<String, Object?> toArgMap() => {'name': name.toTfJson()};
}

/// Caller-supplied xDS `locality_lb_policies[].custom_policy`
/// (max_items=1).
@immutable
class ComputeBackendServiceBackendServiceLocalityLbCustomPolicy {
  const ComputeBackendServiceBackendServiceLocalityLbCustomPolicy({
    required this.name,
    this.data,
  });

  final TfArg<String> name;
  final TfArg<String>? data;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    if (data != null) 'data': data!.toTfJson(),
  };
}

// ===========================================================================
// custom_metrics (top-level list) — backend-service-wide signals
// ===========================================================================

/// One entry under the top-level `custom_metrics`. Mirrors
/// [ComputeBackendServiceBackendServiceBackendCustomMetric] but without [maxUtilization]
/// (schema only models `name` + `dry_run` at this scope).
@immutable
class ComputeBackendServiceBackendServiceCustomMetric {
  const ComputeBackendServiceBackendServiceCustomMetric({
    required this.name,
    required this.dryRun,
  });
  final TfArg<String> name;
  final TfArg<bool> dryRun;
  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'dry_run': dryRun.toTfJson(),
  };
}

// ===========================================================================
// params (max_items=1)
// ===========================================================================

/// `params` block — currently only carries resource-manager tags.
@immutable
class ComputeBackendServiceBackendServiceParams {
  const ComputeBackendServiceBackendServiceParams({this.resourceManagerTags});

  /// `{tagKey: tagValue}` map of resource-manager tag bindings applied
  /// at creation time.
  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> toArgMap() => {
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_backend_service` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **global** backend service is the load-balancing target for global
/// external HTTP(S) load balancers and for Traffic Director's self-managed
/// internal load balancing. It groups a set of backends (instance groups,
/// network endpoint groups, or backend buckets) and routes traffic to
/// them according to the configured [protocol], [loadBalancingScheme],
/// [localityLbPolicy], and [sessionAffinity].
///
/// For regional load balancing use `google_compute_region_backend_service`
/// (curated separately). Regional-only [LoadBalancingScheme] values
/// (`INTERNAL`, `INTERNAL_MANAGED`) are surfaced on this wrapper because
/// they appear in the Terraform schema, but the GCP API will reject them
/// on a global backend service at apply time.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_backend_service.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
///
/// Cross-resource references (typical wiring):
/// - [healthChecks]: list of self-links to `google_compute_health_check`
///   resources. Required unless every backend is an internet/serverless NEG.
/// - [securityPolicy]: self-link to a Cloud Armor `google_compute_security_policy`.
/// - [ComputeBackendServiceBackendServiceBackend.group]: self-link of an instance group, MIG,
///   or NEG. All backends in one service must share a kind (no mixing
///   instance groups with NEGs).
///
/// Example (external HTTPS load balancer backend, IAP-protected):
/// ```dart
/// final api = GoogleComputeBackendService(
///   localName: 'api',
///   name: TfArg.literal('api-backend'),
///   protocol: TfArg.literal(BackendServiceProtocol.https),
///   loadBalancingScheme:
///       TfArg.literal(LoadBalancingScheme.externalManaged),
///   portName: TfArg.literal('https'),
///   timeoutSec: TfArg.literal(30),
///   enableCdn: TfArg.literal(false),
///   healthChecks: TfArg.literal([
///     // var.health_check_id resolves to a `google_compute_health_check`
///     // self-link from Batch 2.
///     'projects/p/global/healthChecks/api-hc',
///   ]),
///   securityPolicy: TfArg.literal(
///     // var.security_policy_id — see Cloud Armor curation in Batch 4.
///     'projects/p/global/securityPolicies/edge-deny-all',
///   ),
///   backends: [
///     ComputeBackendServiceBackendServiceBackend(
///       group: TfArg.literal(
///         // var.backend_group_id — typically a Batch 4 NEG or a
///         // Batch 3 MIG self-link.
///         'projects/p/zones/asia-northeast1-a/networkEndpointGroups/api-neg',
///       ),
///       balancingMode: BackendServiceBalancingMode.rate,
///       maxRatePerEndpoint: 100,
///       capacityScaler: 1.0,
///     ),
///   ],
///   iap: const ComputeBackendServiceBackendServiceIap(
///     enabled: true,
///     oauth2ClientId: 'xxx.apps.googleusercontent.com',
///     oauth2ClientSecret: 'super-secret', // sensitive — masked at synth.
///   ),
///   logConfig: const ComputeBackendServiceBackendServiceLogConfig(
///     enable: true,
///     sampleRate: 1.0,
///   ),
/// );
/// ```
///
/// Sensitive fields (round-trip through the generated `$sensitiveFields`
/// set): `iap.oauth2_client_secret`, `iap.oauth2_client_secret_sha256`
/// (computed), and `security_settings.aws_v4_authentication.access_key`.
final class GoogleComputeBackendService extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_backend_service';

  GoogleComputeBackendService({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<BackendServiceProtocol>? protocol,
    TfArg<String>? portName,
    TfArg<LoadBalancingScheme>? loadBalancingScheme,
    TfArg<LocalityLbPolicy>? localityLbPolicy,
    TfArg<SessionAffinity>? sessionAffinity,
    TfArg<num>? affinityCookieTtlSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? connectionDrainingTimeoutSec,
    TfArg<bool>? enableCdn,
    TfArg<BackendServiceCompressionMode>? compressionMode,
    TfArg<IpAddressSelectionPolicy>? ipAddressSelectionPolicy,
    TfArg<List<String>>? customRequestHeaders,
    TfArg<List<String>>? customResponseHeaders,
    TfArg<List<String>>? healthChecks,
    TfArg<String>? securityPolicy,
    TfArg<String>? edgeSecurityPolicy,
    TfArg<String>? serviceLbPolicy,
    TfArg<ExternalManagedMigrationState>? externalManagedMigrationState,
    TfArg<num>? externalManagedMigrationTestingPercentage,
    List<ComputeBackendServiceBackendServiceBackend>? backends,
    ComputeBackendServiceBackendServiceCdnPolicy? cdnPolicy,
    ComputeBackendServiceBackendServiceIap? iap,
    ComputeBackendServiceBackendServiceCircuitBreakers? circuitBreakers,
    ComputeBackendServiceBackendServiceConsistentHash? consistentHash,
    ComputeBackendServiceBackendServiceOutlierDetection? outlierDetection,
    ComputeBackendServiceBackendServiceLogConfig? logConfig,
    ComputeBackendServiceBackendServiceSecuritySettings? securitySettings,
    List<ComputeBackendServiceBackendServiceLocalityLbPolicyEntry>?
    localityLbPolicies,
    List<ComputeBackendServiceBackendServiceCustomMetric>? customMetrics,
    ComputeBackendServiceBackendServiceMaxStreamDuration? maxStreamDuration,
    ComputeBackendServiceBackendServiceStrongSessionAffinityCookie?
    strongSessionAffinityCookie,
    ComputeBackendServiceBackendServiceTlsSettings? tlsSettings,
    ComputeBackendServiceBackendServiceParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (protocol != null) 'protocol': protocol,
           if (portName != null) 'port_name': portName,
           if (loadBalancingScheme != null)
             'load_balancing_scheme': loadBalancingScheme,
           if (localityLbPolicy != null) 'locality_lb_policy': localityLbPolicy,
           if (sessionAffinity != null) 'session_affinity': sessionAffinity,
           if (affinityCookieTtlSec != null)
             'affinity_cookie_ttl_sec': affinityCookieTtlSec,
           if (timeoutSec != null) 'timeout_sec': timeoutSec,
           if (connectionDrainingTimeoutSec != null)
             'connection_draining_timeout_sec': connectionDrainingTimeoutSec,
           if (enableCdn != null) 'enable_cdn': enableCdn,
           if (compressionMode != null) 'compression_mode': compressionMode,
           if (ipAddressSelectionPolicy != null)
             'ip_address_selection_policy': ipAddressSelectionPolicy,
           if (customRequestHeaders != null)
             'custom_request_headers': customRequestHeaders,
           if (customResponseHeaders != null)
             'custom_response_headers': customResponseHeaders,
           if (healthChecks != null) 'health_checks': healthChecks,
           if (securityPolicy != null) 'security_policy': securityPolicy,
           if (edgeSecurityPolicy != null)
             'edge_security_policy': edgeSecurityPolicy,
           if (serviceLbPolicy != null) 'service_lb_policy': serviceLbPolicy,
           if (externalManagedMigrationState != null)
             'external_managed_migration_state': externalManagedMigrationState,
           if (externalManagedMigrationTestingPercentage != null)
             'external_managed_migration_testing_percentage':
                 externalManagedMigrationTestingPercentage,
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
           if (securitySettings != null)
             'security_settings': TfArg.literal([securitySettings.toArgMap()]),
           if (localityLbPolicies != null)
             'locality_lb_policies': TfArg.literal(
               localityLbPolicies.map((p) => p.toArgMap()).toList(),
             ),
           if (customMetrics != null)
             'custom_metrics': TfArg.literal(
               customMetrics.map((m) => m.toArgMap()).toList(),
             ),
           if (maxStreamDuration != null)
             'max_stream_duration': TfArg.literal([
               maxStreamDuration.toArgMap(),
             ]),
           if (strongSessionAffinityCookie != null)
             'strong_session_affinity_cookie': TfArg.literal([
               strongSessionAffinityCookie.toArgMap(),
             ]),
           if (tlsSettings != null)
             'tls_settings': TfArg.literal([tlsSettings.toArgMap()]),
           if (params != null) 'params': TfArg.literal([params.toArgMap()]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeBackendServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (`projects/{project}/global/backendServices/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute (HTTPS API path). The canonical
  /// reference downstream `google_compute_url_map` /
  /// `google_compute_target_*_proxy` resources expect.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the server-assigned numeric `generated_id`.
  TfRef<int> get generatedId => TfRef.attribute<int>(this, 'generated_id');

  /// Reference to `fingerprint` — used by the API for optimistic locking.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `creation_timestamp` (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
