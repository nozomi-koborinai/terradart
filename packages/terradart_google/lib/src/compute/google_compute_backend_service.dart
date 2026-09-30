// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_service`.
const Set<String> _googleComputeBackendServiceSensitive = <String>{
  'iap.oauth2_client_id',
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
enum BackendServiceProtocol implements TerraformEnum {
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
  @override
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
enum LoadBalancingScheme implements TerraformEnum {
  external('EXTERNAL'),
  externalManaged('EXTERNAL_MANAGED'),
  internalSelfManaged('INTERNAL_SELF_MANAGED'),
  internalManaged('INTERNAL_MANAGED');

  const LoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// `locality_lb_policy`. See the schema docstring for the matrix of which
/// values are valid for which combination of `protocol` and
/// `load_balancing_scheme` — Cloud Load Balancing silently coerces
/// invalid values to the scheme's default at apply time.
enum LocalityLbPolicy implements TerraformEnum {
  roundRobin('ROUND_ROBIN'),
  leastRequest('LEAST_REQUEST'),
  ringHash('RING_HASH'),
  random('RANDOM'),
  originalDestination('ORIGINAL_DESTINATION'),
  maglev('MAGLEV'),
  weightedMaglev('WEIGHTED_MAGLEV'),
  weightedRoundRobin('WEIGHTED_ROUND_ROBIN');

  const LocalityLbPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `session_affinity`. Applicable only when the locality LB policy is
/// one of `MAGLEV`, `WEIGHTED_MAGLEV`, or `RING_HASH` (otherwise the
/// setting is silently ignored).
enum SessionAffinity implements TerraformEnum {
  none('NONE'),
  clientIp('CLIENT_IP'),
  clientIpPortProto('CLIENT_IP_PORT_PROTO'),
  clientIpProto('CLIENT_IP_PROTO'),
  generatedCookie('GENERATED_COOKIE'),
  headerField('HEADER_FIELD'),
  httpCookie('HTTP_COOKIE'),
  strongCookieAffinity('STRONG_COOKIE_AFFINITY');

  const SessionAffinity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `compression_mode`. Brotli / gzip negotiation based on the client's
/// `Accept-Encoding` header.
enum BackendServiceCompressionMode implements TerraformEnum {
  automatic('AUTOMATIC'),
  disabled('DISABLED');

  const BackendServiceCompressionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ip_address_selection_policy`. Controls IPv4-vs-IPv6 preference when
/// the load balancer dials a backend (or when a proxyless gRPC client
/// dials directly).
enum IpAddressSelectionPolicy implements TerraformEnum {
  ipv4Only('IPV4_ONLY'),
  preferIpv6('PREFER_IPV6'),
  ipv6Only('IPV6_ONLY');

  const IpAddressSelectionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `external_managed_migration_state`. Drives the Classic ALB →
/// Application Load Balancer migration. State must transition
/// `PREPARE` → optional `TEST_BY_PERCENTAGE` → `TEST_ALL_TRAFFIC`
/// before the load balancing scheme can flip from `EXTERNAL` to
/// `EXTERNAL_MANAGED`; same order in reverse to roll back.
enum ExternalManagedMigrationState implements TerraformEnum {
  prepare('PREPARE'),
  testByPercentage('TEST_BY_PERCENTAGE'),
  testAllTraffic('TEST_ALL_TRAFFIC');

  const ExternalManagedMigrationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Per-backend balancing mode. See [ComputeBackendServiceBackend.balancingMode].
enum BackendServiceBalancingMode implements TerraformEnum {
  utilization('UTILIZATION'),
  rate('RATE'),
  connection('CONNECTION'),
  customMetrics('CUSTOM_METRICS'),
  inFlight('IN_FLIGHT');

  const BackendServiceBalancingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `backend.preference`. Cannot be set when `load_balancing_scheme` is
/// `EXTERNAL`.
enum BackendServicePreference implements TerraformEnum {
  preferred('PREFERRED'),
  defaultPref('DEFAULT');

  const BackendServicePreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// `cdn_policy.cache_mode`. Enabling CDN (`enable_cdn = true`) without
/// setting this defaults to `CACHE_ALL_STATIC`.
enum BackendServiceCacheMode implements TerraformEnum {
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  cacheAllStatic('CACHE_ALL_STATIC');

  const BackendServiceCacheMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_config.optional_mode`. Controls which optional access-log
/// fields are exported when [ComputeBackendServiceLogConfig.enable] is true.
enum BackendServiceLogOptionalMode implements TerraformEnum {
  includeAllOptional('INCLUDE_ALL_OPTIONAL'),
  excludeAllOptional('EXCLUDE_ALL_OPTIONAL'),
  custom('CUSTOM');

  const BackendServiceLogOptionalMode(this.terraformValue);
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
// security_settings (max_items=1)
// ===========================================================================

// ===========================================================================
// strong_session_affinity_cookie (max_items=1)
// ===========================================================================

// ===========================================================================
// max_stream_duration (max_items=1)
// ===========================================================================

// ===========================================================================
// tls_settings (max_items=1) and its subject_alt_names sub-block
// ===========================================================================

// ===========================================================================
// locality_lb_policies (list)
// ===========================================================================

// ===========================================================================
// custom_metrics (top-level list) — backend-service-wide signals
// ===========================================================================

// ===========================================================================
// params (max_items=1)
// ===========================================================================

/// Typed helper for the `backend` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceBackend {
  const ComputeBackendServiceBackend({
    this.balancingMode,
    this.capacityScaler,
    this.description,
    required this.group,
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

  final TfArg<BackendServiceBalancingMode>? balancingMode;

  final TfArg<num>? capacityScaler;

  final TfArg<String>? description;

  final TfArg<String> group;

  final TfArg<num>? maxConnections;

  final TfArg<num>? maxConnectionsPerEndpoint;

  final TfArg<num>? maxConnectionsPerInstance;

  final TfArg<num>? maxRate;

  final TfArg<num>? maxRatePerEndpoint;

  final TfArg<num>? maxRatePerInstance;

  final TfArg<num>? maxUtilization;

  final TfArg<BackendServicePreference>? preference;

  final List<ComputeBackendServiceBackendCustomMetrics>? customMetrics;

  Map<String, Object?> encode() => {
    'balancing_mode': ?balancingMode?.toTfJson(),
    'capacity_scaler': ?capacityScaler?.toTfJson(),
    'description': ?description?.toTfJson(),
    'group': group.toTfJson(),
    'max_connections': ?maxConnections?.toTfJson(),
    'max_connections_per_endpoint': ?maxConnectionsPerEndpoint?.toTfJson(),
    'max_connections_per_instance': ?maxConnectionsPerInstance?.toTfJson(),
    'max_rate': ?maxRate?.toTfJson(),
    'max_rate_per_endpoint': ?maxRatePerEndpoint?.toTfJson(),
    'max_rate_per_instance': ?maxRatePerInstance?.toTfJson(),
    'max_utilization': ?maxUtilization?.toTfJson(),
    'preference': ?preference?.toTfJson(),
    if (customMetrics != null)
      'custom_metrics': [for (final e in customMetrics!) e.encode()],
  };
}

/// Typed helper for the `backend.custom_metrics` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceBackendCustomMetrics {
  const ComputeBackendServiceBackendCustomMetrics({
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
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceCdnPolicy {
  const ComputeBackendServiceCdnPolicy({
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

  final TfArg<BackendServiceCacheMode>? cacheMode;

  final TfArg<num>? clientTtl;

  final TfArg<num>? defaultTtl;

  final TfArg<num>? maxTtl;

  final TfArg<bool>? negativeCaching;

  final TfArg<bool>? requestCoalescing;

  final TfArg<num>? serveWhileStale;

  final TfArg<num>? signedUrlCacheMaxAgeSec;

  final List<ComputeBackendServiceCdnPolicyBypassCacheOnRequestHeaders>?
  bypassCacheOnRequestHeaders;

  final ComputeBackendServiceCdnPolicyCacheKeyPolicy? cacheKeyPolicy;

  final List<ComputeBackendServiceCdnPolicyNegativeCachingPolicy>?
  negativeCachingPolicy;

  Map<String, Object?> encode() => {
    'cache_mode': ?cacheMode?.toTfJson(),
    'client_ttl': ?clientTtl?.toTfJson(),
    'default_ttl': ?defaultTtl?.toTfJson(),
    'max_ttl': ?maxTtl?.toTfJson(),
    'negative_caching': ?negativeCaching?.toTfJson(),
    'request_coalescing': ?requestCoalescing?.toTfJson(),
    'serve_while_stale': ?serveWhileStale?.toTfJson(),
    'signed_url_cache_max_age_sec': ?signedUrlCacheMaxAgeSec?.toTfJson(),
    if (bypassCacheOnRequestHeaders != null)
      'bypass_cache_on_request_headers': [
        for (final e in bypassCacheOnRequestHeaders!) e.encode(),
      ],
    'cache_key_policy': ?cacheKeyPolicy?.encode(),
    if (negativeCachingPolicy != null)
      'negative_caching_policy': [
        for (final e in negativeCachingPolicy!) e.encode(),
      ],
  };
}

/// Typed helper for the `cdn_policy.bypass_cache_on_request_headers` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceCdnPolicyBypassCacheOnRequestHeaders {
  const ComputeBackendServiceCdnPolicyBypassCacheOnRequestHeaders({
    required this.headerName,
  });

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `cdn_policy.cache_key_policy` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceCdnPolicyCacheKeyPolicy {
  const ComputeBackendServiceCdnPolicyCacheKeyPolicy({
    this.includeHost,
    this.includeHttpHeaders,
    this.includeNamedCookies,
    this.includeProtocol,
    this.includeQueryString,
    this.queryStringBlacklist,
    this.queryStringWhitelist,
  });

  final TfArg<bool>? includeHost;

  final TfArg<List<String>>? includeHttpHeaders;

  final TfArg<List<String>>? includeNamedCookies;

  final TfArg<bool>? includeProtocol;

  final TfArg<bool>? includeQueryString;

  final TfArg<List<String>>? queryStringBlacklist;

  final TfArg<List<String>>? queryStringWhitelist;

  Map<String, Object?> encode() => {
    'include_host': ?includeHost?.toTfJson(),
    'include_http_headers': ?includeHttpHeaders?.toTfJson(),
    'include_named_cookies': ?includeNamedCookies?.toTfJson(),
    'include_protocol': ?includeProtocol?.toTfJson(),
    'include_query_string': ?includeQueryString?.toTfJson(),
    'query_string_blacklist': ?queryStringBlacklist?.toTfJson(),
    'query_string_whitelist': ?queryStringWhitelist?.toTfJson(),
  };
}

/// Typed helper for the `cdn_policy.negative_caching_policy` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceCdnPolicyNegativeCachingPolicy {
  const ComputeBackendServiceCdnPolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  final TfArg<num>? code;

  final TfArg<num>? ttl;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
  };
}

/// Typed helper for the `circuit_breakers` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceCircuitBreakers {
  const ComputeBackendServiceCircuitBreakers({
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

/// Typed helper for the `consistent_hash` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceConsistentHash {
  const ComputeBackendServiceConsistentHash({
    this.httpHeaderName,
    this.minimumRingSize,
    this.httpCookie,
  });

  final TfArg<String>? httpHeaderName;

  final TfArg<num>? minimumRingSize;

  final ComputeBackendServiceConsistentHashHttpCookie? httpCookie;

  Map<String, Object?> encode() => {
    'http_header_name': ?httpHeaderName?.toTfJson(),
    'minimum_ring_size': ?minimumRingSize?.toTfJson(),
    'http_cookie': ?httpCookie?.encode(),
  };
}

/// Typed helper for the `consistent_hash.http_cookie` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceConsistentHashHttpCookie {
  const ComputeBackendServiceConsistentHashHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;

  final TfArg<String>? path;

  final ComputeBackendServiceConsistentHashHttpCookieTtl? ttl;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `consistent_hash.http_cookie.ttl` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceConsistentHashHttpCookieTtl {
  const ComputeBackendServiceConsistentHashHttpCookieTtl({
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

/// Typed helper for the `custom_metrics` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceCustomMetrics {
  const ComputeBackendServiceCustomMetrics({
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

/// Typed helper for the `iap` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceIap {
  const ComputeBackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientIdWoVersion,
    this.oauth2ClientSecret,
    this.oauth2ClientSecretWoVersion,
  });

  final TfArg<bool> enabled;

  final ComputeBackendServiceIapOauth2ClientId? oauth2ClientId;

  final TfArg<String>? oauth2ClientIdWoVersion;

  final ComputeBackendServiceIapOauth2ClientSecret? oauth2ClientSecret;

  final TfArg<String>? oauth2ClientSecretWoVersion;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    ...?oauth2ClientId?.encode(),
    'oauth2_client_id_wo_version': ?oauth2ClientIdWoVersion?.toTfJson(),
    ...?oauth2ClientSecret?.encode(),
    'oauth2_client_secret_wo_version': ?oauth2ClientSecretWoVersion?.toTfJson(),
  };
}

/// At most one of `oauth2_client_id`, `oauth2_client_id_wo` on the `iap` block of `google_compute_backend_service`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.oauth2ClientId(...)`.
sealed class ComputeBackendServiceIapOauth2ClientId {
  const ComputeBackendServiceIapOauth2ClientId();

  /// Sets `oauth2_client_id`.
  const factory ComputeBackendServiceIapOauth2ClientId.oauth2ClientId(
    TfArg<String> oauth2ClientId,
  ) = ComputeBackendServiceIapOauth2ClientIdChoice;

  /// Sets `oauth2_client_id_wo`.
  const factory ComputeBackendServiceIapOauth2ClientId.oauth2ClientIdWo(
    TfArg<String> oauth2ClientIdWo,
  ) = ComputeBackendServiceIapOauth2ClientIdWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeBackendServiceIapOauth2ClientId.oauth2ClientId] choice: sets `oauth2_client_id`.
final class ComputeBackendServiceIapOauth2ClientIdChoice
    extends ComputeBackendServiceIapOauth2ClientId {
  const ComputeBackendServiceIapOauth2ClientIdChoice(this.oauth2ClientId);

  final TfArg<String> oauth2ClientId;

  @override
  String get blockKey => 'oauth2_client_id';

  @override
  Map<String, Object?> encode() => {
    'oauth2_client_id': oauth2ClientId.toTfJson(),
  };
}

/// The [ComputeBackendServiceIapOauth2ClientId.oauth2ClientIdWo] choice: sets `oauth2_client_id_wo`.
final class ComputeBackendServiceIapOauth2ClientIdWo
    extends ComputeBackendServiceIapOauth2ClientId {
  const ComputeBackendServiceIapOauth2ClientIdWo(this.oauth2ClientIdWo);

  final TfArg<String> oauth2ClientIdWo;

  @override
  String get blockKey => 'oauth2_client_id_wo';

  @override
  Map<String, Object?> encode() => {
    'oauth2_client_id_wo': oauth2ClientIdWo.toTfJson(),
  };
}

/// At most one of `oauth2_client_secret`, `oauth2_client_secret_wo` on the `iap` block of `google_compute_backend_service`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.oauth2ClientSecret(...)`.
sealed class ComputeBackendServiceIapOauth2ClientSecret {
  const ComputeBackendServiceIapOauth2ClientSecret();

  /// Sets `oauth2_client_secret`.
  const factory ComputeBackendServiceIapOauth2ClientSecret.oauth2ClientSecret(
    TfArg<String> oauth2ClientSecret,
  ) = ComputeBackendServiceIapOauth2ClientSecretChoice;

  /// Sets `oauth2_client_secret_wo`.
  const factory ComputeBackendServiceIapOauth2ClientSecret.oauth2ClientSecretWo(
    TfArg<String> oauth2ClientSecretWo,
  ) = ComputeBackendServiceIapOauth2ClientSecretWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeBackendServiceIapOauth2ClientSecret.oauth2ClientSecret] choice: sets `oauth2_client_secret`.
final class ComputeBackendServiceIapOauth2ClientSecretChoice
    extends ComputeBackendServiceIapOauth2ClientSecret {
  const ComputeBackendServiceIapOauth2ClientSecretChoice(
    this.oauth2ClientSecret,
  );

  final TfArg<String> oauth2ClientSecret;

  @override
  String get blockKey => 'oauth2_client_secret';

  @override
  Map<String, Object?> encode() => {
    'oauth2_client_secret': oauth2ClientSecret.toTfJson(),
  };
}

/// The [ComputeBackendServiceIapOauth2ClientSecret.oauth2ClientSecretWo] choice: sets `oauth2_client_secret_wo`.
final class ComputeBackendServiceIapOauth2ClientSecretWo
    extends ComputeBackendServiceIapOauth2ClientSecret {
  const ComputeBackendServiceIapOauth2ClientSecretWo(this.oauth2ClientSecretWo);

  final TfArg<String> oauth2ClientSecretWo;

  @override
  String get blockKey => 'oauth2_client_secret_wo';

  @override
  Map<String, Object?> encode() => {
    'oauth2_client_secret_wo': oauth2ClientSecretWo.toTfJson(),
  };
}

/// Exactly one of `policy`, `custom_policy` on the `locality_lb_policies` block of `google_compute_backend_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.policy(...)`.
sealed class ComputeBackendServiceLocalityLbPolicies {
  const ComputeBackendServiceLocalityLbPolicies();

  /// Sets `policy`.
  const factory ComputeBackendServiceLocalityLbPolicies.policy(
    ComputeBackendServiceLocalityLbPoliciesPolicy policy,
  ) = ComputeBackendServiceLocalityLbPoliciesPolicyChoice;

  /// Sets `custom_policy`.
  const factory ComputeBackendServiceLocalityLbPolicies.customPolicy(
    ComputeBackendServiceLocalityLbPoliciesCustomPolicy customPolicy,
  ) = ComputeBackendServiceLocalityLbPoliciesCustomPolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeBackendServiceLocalityLbPolicies.policy] choice: sets `policy`.
final class ComputeBackendServiceLocalityLbPoliciesPolicyChoice
    extends ComputeBackendServiceLocalityLbPolicies {
  const ComputeBackendServiceLocalityLbPoliciesPolicyChoice(this.policy);

  final ComputeBackendServiceLocalityLbPoliciesPolicy policy;

  @override
  String get blockKey => 'policy';

  @override
  Map<String, Object?> encode() => {'policy': policy.encode()};
}

/// The [ComputeBackendServiceLocalityLbPolicies.customPolicy] choice: sets `custom_policy`.
final class ComputeBackendServiceLocalityLbPoliciesCustomPolicyChoice
    extends ComputeBackendServiceLocalityLbPolicies {
  const ComputeBackendServiceLocalityLbPoliciesCustomPolicyChoice(
    this.customPolicy,
  );

  final ComputeBackendServiceLocalityLbPoliciesCustomPolicy customPolicy;

  @override
  String get blockKey => 'custom_policy';

  @override
  Map<String, Object?> encode() => {'custom_policy': customPolicy.encode()};
}

/// Typed helper for the `locality_lb_policies.custom_policy` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceLocalityLbPoliciesCustomPolicy {
  const ComputeBackendServiceLocalityLbPoliciesCustomPolicy({
    this.data,
    required this.name,
  });

  final TfArg<String>? data;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `locality_lb_policies.policy` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceLocalityLbPoliciesPolicy {
  const ComputeBackendServiceLocalityLbPoliciesPolicy({required this.name});

  final TfArg<LocalityLbPolicy> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `log_config` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceLogConfig {
  const ComputeBackendServiceLogConfig({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
    this.requestHeaders,
    this.responseHeaders,
  });

  final TfArg<bool>? enable;

  final TfArg<List<String>>? optionalFields;

  final TfArg<BackendServiceLogOptionalMode>? optionalMode;

  final TfArg<num>? sampleRate;

  final List<ComputeBackendServiceLogConfigRequestHeaders>? requestHeaders;

  final List<ComputeBackendServiceLogConfigResponseHeaders>? responseHeaders;

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
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceLogConfigRequestHeaders {
  const ComputeBackendServiceLogConfigRequestHeaders({
    required this.headerName,
  });

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `log_config.response_headers` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceLogConfigResponseHeaders {
  const ComputeBackendServiceLogConfigResponseHeaders({
    required this.headerName,
  });

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `max_stream_duration` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceMaxStreamDuration {
  const ComputeBackendServiceMaxStreamDuration({
    this.nanos,
    required this.seconds,
  });

  final TfArg<num>? nanos;

  final TfArg<String> seconds;

  Map<String, Object?> encode() => {
    'nanos': ?nanos?.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `outlier_detection` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceOutlierDetection {
  const ComputeBackendServiceOutlierDetection({
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

  final ComputeBackendServiceOutlierDetectionBaseEjectionTime? baseEjectionTime;

  final ComputeBackendServiceOutlierDetectionInterval? interval;

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
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceOutlierDetectionBaseEjectionTime {
  const ComputeBackendServiceOutlierDetectionBaseEjectionTime({
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
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceOutlierDetectionInterval {
  const ComputeBackendServiceOutlierDetectionInterval({
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
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceParams {
  const ComputeBackendServiceParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `security_settings` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceSecuritySettings {
  const ComputeBackendServiceSecuritySettings({
    this.clientTlsPolicy,
    this.subjectAltNames,
    this.awsV4Authentication,
  });

  final TfArg<String>? clientTlsPolicy;

  final TfArg<List<String>>? subjectAltNames;

  final ComputeBackendServiceSecuritySettingsAwsV4Authentication?
  awsV4Authentication;

  Map<String, Object?> encode() => {
    'client_tls_policy': ?clientTlsPolicy?.toTfJson(),
    'subject_alt_names': ?subjectAltNames?.toTfJson(),
    'aws_v4_authentication': ?awsV4Authentication?.encode(),
  };
}

/// Typed helper for the `security_settings.aws_v4_authentication` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceSecuritySettingsAwsV4Authentication {
  const ComputeBackendServiceSecuritySettingsAwsV4Authentication({
    this.accessKey,
    this.accessKeyId,
    this.accessKeyVersion,
    this.originRegion,
  });

  final TfArg<String>? accessKey;

  final TfArg<String>? accessKeyId;

  final TfArg<String>? accessKeyVersion;

  final TfArg<String>? originRegion;

  Map<String, Object?> encode() => {
    'access_key': ?accessKey?.toTfJson(),
    'access_key_id': ?accessKeyId?.toTfJson(),
    'access_key_version': ?accessKeyVersion?.toTfJson(),
    'origin_region': ?originRegion?.toTfJson(),
  };
}

/// Typed helper for the `strong_session_affinity_cookie` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceStrongSessionAffinityCookie {
  const ComputeBackendServiceStrongSessionAffinityCookie({
    this.name,
    this.path,
    this.ttl,
  });

  final TfArg<String>? name;

  final TfArg<String>? path;

  final ComputeBackendServiceStrongSessionAffinityCookieTtl? ttl;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'path': ?path?.toTfJson(),
    'ttl': ?ttl?.encode(),
  };
}

/// Typed helper for the `strong_session_affinity_cookie.ttl` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceStrongSessionAffinityCookieTtl {
  const ComputeBackendServiceStrongSessionAffinityCookieTtl({
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

/// Typed helper for the `tls_settings` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceTlsSettings {
  const ComputeBackendServiceTlsSettings({
    this.authenticationConfig,
    this.sni,
    this.subjectAltNames,
  });

  final TfArg<String>? authenticationConfig;

  final TfArg<String>? sni;

  final List<ComputeBackendServiceTlsSettingsSubjectAltNames>? subjectAltNames;

  Map<String, Object?> encode() => {
    'authentication_config': ?authenticationConfig?.toTfJson(),
    'sni': ?sni?.toTfJson(),
    if (subjectAltNames != null)
      'subject_alt_names': [for (final e in subjectAltNames!) e.encode()],
  };
}

/// Typed helper for the `tls_settings.subject_alt_names` block of
/// `google_compute_backend_service` (derived from provider schema).
@immutable
final class ComputeBackendServiceTlsSettingsSubjectAltNames {
  const ComputeBackendServiceTlsSettingsSubjectAltNames({
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

/// Factory wrapper for `google_compute_backend_service`.
///
/// A Backend Service defines a group of virtual machines that will serve
/// traffic for load balancing. This resource is a global backend service,
/// appropriate for external load balancing or self-managed internal load
/// balancing. For managed internal load balancing, use a regional backend
/// service instead.
///
/// Currently self-managed internal load balancing is only available in beta.
///
/// ~> **Note:** Recreating a `google_compute_backend_service` that references
/// other dependent resources like `google_compute_url_map` will give a
/// `resourceInUseByAnotherResource` error, when modifying the number of other
/// dependent resources. Use `lifecycle.create_before_destroy` on the dependent
/// resources to avoid this type of error as shown in the Dynamic Backends
/// example.
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
/// - [ComputeBackendServiceBackend.group]: self-link of an instance group, MIG,
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
///     ComputeBackendServiceBackend(
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
///   iap: const ComputeBackendServiceIap(
///     enabled: true,
///     oauth2ClientId: 'xxx.apps.googleusercontent.com',
///     oauth2ClientSecret: 'super-secret', // sensitive — masked at synth.
///   ),
///   logConfig: const ComputeBackendServiceLogConfig(
///     enable: true,
///     sampleRate: 1.0,
///   ),
/// );
/// ```
///
/// Sensitive fields (round-trip through the generated `sensitiveFields`
/// set): `iap.oauth2_client_secret`, `iap.oauth2_client_secret_sha256`
/// (computed), and `security_settings.aws_v4_authentication.access_key`.
final class GoogleComputeBackendService extends Resource {
  static const String tfType = 'google_compute_backend_service';

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
    List<ComputeBackendServiceBackend>? backend,
    ComputeBackendServiceCdnPolicy? cdnPolicy,
    ComputeBackendServiceIap? iap,
    ComputeBackendServiceCircuitBreakers? circuitBreakers,
    ComputeBackendServiceConsistentHash? consistentHash,
    ComputeBackendServiceOutlierDetection? outlierDetection,
    ComputeBackendServiceLogConfig? logConfig,
    ComputeBackendServiceSecuritySettings? securitySettings,
    List<ComputeBackendServiceLocalityLbPolicies>? localityLbPolicies,
    List<ComputeBackendServiceCustomMetrics>? customMetrics,
    ComputeBackendServiceMaxStreamDuration? maxStreamDuration,
    ComputeBackendServiceStrongSessionAffinityCookie?
    strongSessionAffinityCookie,
    ComputeBackendServiceTlsSettings? tlsSettings,
    ComputeBackendServiceParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
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
           'compression_mode': ?compressionMode,
           'ip_address_selection_policy': ?ipAddressSelectionPolicy,
           'custom_request_headers': ?customRequestHeaders,
           'custom_response_headers': ?customResponseHeaders,
           'health_checks': ?healthChecks,
           'security_policy': ?securityPolicy,
           'edge_security_policy': ?edgeSecurityPolicy,
           'service_lb_policy': ?serviceLbPolicy,
           'external_managed_migration_state': ?externalManagedMigrationState,
           'external_managed_migration_testing_percentage':
               ?externalManagedMigrationTestingPercentage,
           if (backend != null)
             'backend': TfArg.literal([for (final e in backend) e.encode()]),
           if (cdnPolicy != null)
             'cdn_policy': TfArg.literal(cdnPolicy.encode()),
           if (iap != null) 'iap': TfArg.literal(iap.encode()),
           if (circuitBreakers != null)
             'circuit_breakers': TfArg.literal(circuitBreakers.encode()),
           if (consistentHash != null)
             'consistent_hash': TfArg.literal(consistentHash.encode()),
           if (outlierDetection != null)
             'outlier_detection': TfArg.literal(outlierDetection.encode()),
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (securitySettings != null)
             'security_settings': TfArg.literal(securitySettings.encode()),
           if (localityLbPolicies != null)
             'locality_lb_policies': TfArg.literal([
               for (final e in localityLbPolicies) e.encode(),
             ]),
           if (customMetrics != null)
             'custom_metrics': TfArg.literal([
               for (final e in customMetrics) e.encode(),
             ]),
           if (maxStreamDuration != null)
             'max_stream_duration': TfArg.literal(maxStreamDuration.encode()),
           if (strongSessionAffinityCookie != null)
             'strong_session_affinity_cookie': TfArg.literal(
               strongSessionAffinityCookie.encode(),
             ),
           if (tlsSettings != null)
             'tls_settings': TfArg.literal(tlsSettings.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeBackendServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeBackendService>`.
  RefTo<GoogleComputeBackendService> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to the server-assigned numeric `generated_id`.
  /// Kept at `TfRef<int>` — schema type is `number` (derived would widen
  /// to `TfRef<num>`).
  TfRef<int> get generatedId => TfRef.attribute<int>(this, 'generated_id');
}
