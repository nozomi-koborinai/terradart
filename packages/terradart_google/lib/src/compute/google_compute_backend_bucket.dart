// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_bucket`.
const Set<String> _googleComputeBackendBucketSensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `compression_mode` — Brotli / gzip negotiation based on the client's
/// `Accept-Encoding` header. Note: this is a *distinct type* from
/// `BackendServiceCompressionMode` even though the wire values
/// (`AUTOMATIC` / `DISABLED`) coincide.
enum BackendBucketCompressionMode {
  automatic('AUTOMATIC'),
  disabled('DISABLED');

  const BackendBucketCompressionMode(this.terraformValue);
  final String terraformValue;
}

/// `load_balancing_scheme`. The bucket can be left scheme-less (the
/// usual case — works with classic global external and global
/// application external load balancers) or set to
/// [internalManaged] for cross-region internal layer-7 load balancing.
/// Important: when [internalManaged] is set, `enable_cdn` **must** be
/// `false` (Cloud CDN is not available for internal schemes).
enum BackendBucketLoadBalancingScheme {
  internalManaged('INTERNAL_MANAGED');

  const BackendBucketLoadBalancingScheme(this.terraformValue);
  final String terraformValue;
}

/// `cdn_policy.cache_mode`. Enabling CDN (`enable_cdn = true`) without
/// setting this defaults to `CACHE_ALL_STATIC`. Note: this is a
/// *distinct type* from `BackendServiceCacheMode` — bucket-side CDN
/// policies are not interchangeable with service-side policies.
enum BackendBucketCacheMode {
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  cacheAllStatic('CACHE_ALL_STATIC');

  const BackendBucketCacheMode(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// cdn_policy block (max_items=1) and its sub-blocks
// ===========================================================================

/// `cdn_policy` block — Cloud CDN configuration for this backend
/// bucket. Only honored when [GoogleComputeBackendBucket.enableCdn] is
/// `true`. **Distinct type** from `BackendServiceCdnPolicy`: the shape
/// is similar but the schema has bucket-specific quirks (no
/// [cacheKeyPolicy.includeHost] / [includeProtocol] /
/// [includeQueryString] — buckets only expose the
/// [queryStringWhitelist] / [includeHttpHeaders] axes).
@immutable
class BackendBucketCdnPolicy {
  const BackendBucketCdnPolicy({
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
  final BackendBucketCacheMode? cacheMode;

  /// Max TTL (seconds) the cache will serve content to clients for.
  /// Must be omitted when [cacheMode] is
  /// [BackendBucketCacheMode.useOriginHeaders].
  final int? clientTtl;

  /// Default TTL for cached content with no upstream `Cache-Control`.
  /// Must be omitted when [cacheMode] is
  /// [BackendBucketCacheMode.useOriginHeaders].
  final int? defaultTtl;

  /// Hard ceiling on cached content TTL. Must be omitted when
  /// [cacheMode] is [BackendBucketCacheMode.useOriginHeaders].
  final int? maxTtl;

  /// Negative caching for selected status codes. Pair with
  /// [negativeCachingPolicy] for per-code TTLs.
  final bool? negativeCaching;

  /// Coalesce concurrent cache-fill requests to the origin.
  final bool? requestCoalescing;

  /// Serve cached content during origin revalidation or errors
  /// (seconds).
  final int? serveWhileStale;

  /// TTL for signed-URL responses (defaults to 3600 if unset).
  final int? signedUrlCacheMaxAgeSec;

  /// Bypass the cache when any of these request headers is present.
  /// Up to 5 entries.
  final List<BackendBucketCdnBypassCacheOnRequestHeader>?
      bypassCacheOnRequestHeaders;

  /// Cache key policy — which request components participate in the
  /// cache key.
  final BackendBucketCdnCacheKeyPolicy? cacheKeyPolicy;

  /// Per-status-code negative-cache TTLs. Only honored when
  /// [negativeCaching] is `true`.
  final List<BackendBucketCdnNegativeCachingPolicy>? negativeCachingPolicy;

  Map<String, Object?> toArgMap() => {
        if (cacheMode != null) 'cache_mode': cacheMode!.terraformValue,
        if (clientTtl != null) 'client_ttl': clientTtl,
        if (defaultTtl != null) 'default_ttl': defaultTtl,
        if (maxTtl != null) 'max_ttl': maxTtl,
        if (negativeCaching != null) 'negative_caching': negativeCaching,
        if (requestCoalescing != null) 'request_coalescing': requestCoalescing,
        if (serveWhileStale != null) 'serve_while_stale': serveWhileStale,
        if (signedUrlCacheMaxAgeSec != null)
          'signed_url_cache_max_age_sec': signedUrlCacheMaxAgeSec,
        if (bypassCacheOnRequestHeaders != null)
          'bypass_cache_on_request_headers':
              bypassCacheOnRequestHeaders!.map((h) => h.toArgMap()).toList(),
        if (cacheKeyPolicy != null)
          'cache_key_policy': [cacheKeyPolicy!.toArgMap()],
        if (negativeCachingPolicy != null)
          'negative_caching_policy':
              negativeCachingPolicy!.map((p) => p.toArgMap()).toList(),
      };
}

/// Cache-bypass rule keyed on a request header name (one entry in
/// `cdn_policy.bypass_cache_on_request_headers`, max 5 entries).
@immutable
class BackendBucketCdnBypassCacheOnRequestHeader {
  const BackendBucketCdnBypassCacheOnRequestHeader({required this.headerName});

  /// Header field name (case-insensitive).
  final TfArg<String> headerName;

  Map<String, Object?> toArgMap() => {'header_name': headerName.toTfJson()};
}

/// `cdn_policy.cache_key_policy` (max_items=1). Buckets only expose
/// the [queryStringWhitelist] / [includeHttpHeaders] axes — unlike
/// `BackendServiceCdnCacheKeyPolicy`, there is no host / protocol /
/// query-string-as-a-whole toggle.
@immutable
class BackendBucketCdnCacheKeyPolicy {
  const BackendBucketCdnCacheKeyPolicy({
    this.includeHttpHeaders,
    this.queryStringWhitelist,
  });

  /// Allows HTTP request headers (by name) to be used in the cache
  /// key.
  final List<String>? includeHttpHeaders;

  /// Names of query-string parameters to include in cache keys.
  /// Default parameters are always included. `&` and `=` are
  /// percent-encoded rather than treated as delimiters.
  final List<String>? queryStringWhitelist;

  Map<String, Object?> toArgMap() => {
        if (includeHttpHeaders != null)
          'include_http_headers': includeHttpHeaders,
        if (queryStringWhitelist != null)
          'query_string_whitelist': queryStringWhitelist,
      };
}

/// One row in `cdn_policy.negative_caching_policy`.
@immutable
class BackendBucketCdnNegativeCachingPolicy {
  const BackendBucketCdnNegativeCachingPolicy({this.code, this.ttl});

  /// HTTP status code to apply a TTL to. Valid values per schema:
  /// 300, 301, 308, 404, 405, 410, 421, 451, 501. Each code may
  /// appear at most once.
  final int? code;

  /// TTL in seconds. Max allowed value 1800 (30 minutes).
  final int? ttl;

  Map<String, Object?> toArgMap() => {
        if (code != null) 'code': code,
        if (ttl != null) 'ttl': ttl,
      };
}

// ===========================================================================
// params (max_items=1)
// ===========================================================================

/// `params` block — currently only carries resource-manager tags
/// applied at creation time. Immutable: changes force replacement.
@immutable
class BackendBucketParams {
  const BackendBucketParams({this.resourceManagerTags});

  /// `{tagKeys/<id>: tagValues/<id>}` map of resource-manager tag
  /// bindings.
  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> toArgMap() => {
        if (resourceManagerTags != null)
          'resource_manager_tags': resourceManagerTags!.toTfJson(),
      };
}

/// Factory wrapper for `google_compute_backend_bucket` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **global** backend bucket — the load-balancing target that points
/// an HTTPS load balancer at a Google Cloud Storage bucket of static
/// objects. Use this when the load balancer needs to serve static
/// content (images, JS/CSS bundles, downloadable assets) directly out
/// of GCS without routing through a VM or serverless backend. Pair it
/// with a URL map (a `google_compute_url_map` `path_matcher` typically
/// has the form `default_service = backendService` and
/// `path_rule = backendBucket` for a `/static/*` prefix).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_backend_bucket.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
/// - `bucket_name`: the **name** of an existing Cloud Storage bucket
///   (e.g. `'my-static-assets'`). This is the bucket name only — not a
///   `gs://` URI and not the bucket's self-link. The bucket must exist
///   in the same project and be readable by the load balancer's service
///   identity (`allUsers`-readable for public CDN serving, or granted
///   via the Cloud CDN signed-URL key for private content).
///
/// Cross-resource references:
/// - [edgeSecurityPolicy] is the self-link of a
///   `google_compute_security_policy` of type `CLOUD_ARMOR_EDGE`
///   (distinct from a regular Cloud Armor policy — edge policies attach
///   at the load balancer's edge, ahead of the cache). Use
///   `var.security_policy_id` in real configs:
///   `edgeSecurityPolicy: TfArg.literal('projects/p/global/securityPolicies/edge-deny-all')`.
/// - The compositional inverse is at a URL map: a
///   `google_compute_url_map.path_rule.service` references this
///   bucket's [selfLink].
///
/// Example (CDN-fronted static assets with custom cache headers):
/// ```dart
/// final assets = GoogleComputeBackendBucket(
///   localName: 'static_assets',
///   name: TfArg.literal('static-assets'),
///   bucketName: TfArg.literal('my-static-assets'),
///   enableCdn: TfArg.literal(true),
///   cdnPolicy: const BackendBucketCdnPolicy(
///     cacheMode: BackendBucketCacheMode.cacheAllStatic,
///     defaultTtl: 3600,
///     maxTtl: 86400,
///     clientTtl: 3600,
///     negativeCaching: true,
///     negativeCachingPolicy: [
///       BackendBucketCdnNegativeCachingPolicy(code: 404, ttl: 120),
///       BackendBucketCdnNegativeCachingPolicy(code: 410, ttl: 120),
///     ],
///     serveWhileStale: 60,
///   ),
///   customResponseHeaders: TfArg.literal([
///     'X-Cache: \$(cache_status)',
///   ]),
///   compressionMode:
///       TfArg.literal(BackendBucketCompressionMode.automatic),
/// );
/// ```
///
/// Example (private bucket fronted by Cloud Armor edge policy):
/// ```dart
/// final secured = GoogleComputeBackendBucket(
///   localName: 'secured_assets',
///   name: TfArg.literal('secured-assets'),
///   bucketName: TfArg.literal('private-static-assets'),
///   enableCdn: TfArg.literal(true),
///   edgeSecurityPolicy: TfArg.literal(
///     // var.security_policy_id — a CLOUD_ARMOR_EDGE-typed
///     // google_compute_security_policy self-link.
///     'projects/p/global/securityPolicies/edge-rate-limit',
///   ),
/// );
/// ```
///
/// Nested-type prefix: every helper class for a `cdn_policy` sub-block
/// is `BackendBucket`-prefixed (e.g. [BackendBucketCdnPolicy],
/// [BackendBucketCdnCacheKeyPolicy],
/// [BackendBucketCdnNegativeCachingPolicy],
/// [BackendBucketCdnBypassCacheOnRequestHeader]). The shape mirrors the
/// `BackendService*` family but is a **distinct type** — the bucket and
/// service CDN configurations are not interchangeable, even where the
/// schema field names agree.
///
/// Composition pattern: extends `Resource<$GoogleComputeBackendBucket>`
/// for runtime behavior.
final class GoogleComputeBackendBucket extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_backend_bucket';

  GoogleComputeBackendBucket({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> bucketName,
    TfArg<String>? description,
    TfArg<bool>? enableCdn,
    TfArg<BackendBucketCompressionMode>? compressionMode,
    TfArg<List<String>>? customResponseHeaders,
    TfArg<String>? edgeSecurityPolicy,
    TfArg<BackendBucketLoadBalancingScheme>? loadBalancingScheme,
    BackendBucketCdnPolicy? cdnPolicy,
    BackendBucketParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'bucket_name': bucketName,
            if (description != null) 'description': description,
            if (enableCdn != null) 'enable_cdn': enableCdn,
            if (compressionMode != null) 'compression_mode': compressionMode,
            if (customResponseHeaders != null)
              'custom_response_headers': customResponseHeaders,
            if (edgeSecurityPolicy != null)
              'edge_security_policy': edgeSecurityPolicy,
            if (loadBalancingScheme != null)
              'load_balancing_scheme': loadBalancingScheme,
            if (cdnPolicy != null)
              'cdn_policy': TfArg.literal([cdnPolicy.toArgMap()]),
            if (params != null) 'params': TfArg.literal([params.toArgMap()]),
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeBackendBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/backendBuckets/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute (HTTPS API path). The canonical
  /// reference a downstream `google_compute_url_map` uses to bind a
  /// path rule to this bucket.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `creation_timestamp` (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
