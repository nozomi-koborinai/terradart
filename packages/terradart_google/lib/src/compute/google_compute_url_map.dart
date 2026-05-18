// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_url_map`.
const Set<String> _googleComputeUrlMapSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// HTTP redirect response code emitted by a `default_url_redirect` /
/// `path_rule.url_redirect` / `route_rules.url_redirect` block. The
/// schema declares this as a free-form string -- the enum below pins the
/// API-accepted set so callers cannot mis-spell it.
///
/// - [movedPermanentlyDefault] is the API default and resolves to HTTP 301
///   on the wire; emitted as the literal token `MOVED_PERMANENTLY_DEFAULT`.
/// - [found] -> 302, [seeOther] -> 303, [temporaryRedirect] -> 307,
///   [permanentRedirect] -> 308.
enum UrlMapRedirectResponseCode {
  found('FOUND'),
  movedPermanentlyDefault('MOVED_PERMANENTLY_DEFAULT'),
  permanentRedirect('PERMANENT_REDIRECT'),
  seeOther('SEE_OTHER'),
  temporaryRedirect('TEMPORARY_REDIRECT');

  const UrlMapRedirectResponseCode(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// host_rule (set, unbounded)
// ===========================================================================

/// One `host_rule` entry. Binds a set of `Host:` header values to a
/// [UrlMapPathMatcher] by name. Multiple `host_rule` entries can point at
/// the same `pathMatcher`.
///
/// The schema models `host_rule` as a `set` of blocks; the wrapper still
/// accepts a `List<UrlMapHostRule>` -- duplicate entries are deduped by
/// the Terraform engine on apply.
@immutable
class UrlMapHostRule {
  const UrlMapHostRule({
    required this.hosts,
    required this.pathMatcher,
    this.description,
  });

  /// `Host:` values to match. Each entry can be a literal hostname
  /// (`'mysite.com'`) or a wildcard pattern (`'*.mysite.com'`). At least
  /// one entry is required per the schema.
  final List<String> hosts;

  /// Local name of the [UrlMapPathMatcher] this rule dispatches to. Must
  /// match a [UrlMapPathMatcher.name] within the same URL map -- this is
  /// NOT a `google_compute_*` resource address.
  final String pathMatcher;

  /// Free-form description.
  final String? description;

  Map<String, Object?> toArgMap() => {
        'hosts': hosts,
        'path_matcher': pathMatcher,
        if (description != null) 'description': description,
      };
}

// ===========================================================================
// path_matcher[] (list, unbounded)
// ===========================================================================

/// One `path_matcher` entry. Each path matcher is named (so [UrlMapHostRule]
/// can reference it) and carries a fallback [defaultService] plus the
/// path-based routing rules.
///
/// Routing precedence inside a path matcher:
/// 1. [routeRules] (priority-ordered, evaluated first if non-empty);
/// 2. [pathRules] (longest-prefix wins);
/// 3. fallback [defaultService] / [defaultUrlRedirect].
///
/// Exactly one of [defaultService] / [defaultUrlRedirect] must be set per
/// path matcher. The advanced [advancedExtra] escape hatch covers the
/// uncurated sub-blocks (`default_route_action`,
/// `default_custom_error_response_policy`, `header_action`).
@immutable
class UrlMapPathMatcher {
  const UrlMapPathMatcher({
    required this.name,
    this.defaultService,
    this.description,
    this.pathRules,
    this.routeRules,
    this.defaultUrlRedirect,
    this.advancedExtra,
  });

  /// Local name used by [UrlMapHostRule.pathMatcher]. NOT a self-link.
  final String name;

  /// Fallback backend self-link consulted when neither [pathRules] nor
  /// [routeRules] match. Accepts either a `backend_service` or a
  /// `backend_bucket` self-link (same union as
  /// [GoogleComputeUrlMap.defaultService]). Mutually exclusive with
  /// [defaultUrlRedirect].
  final TfArg<String>? defaultService;

  /// Free-form description.
  final TfArg<String>? description;

  /// Path-based routing rules. Simple "match longest prefix, send to
  /// service" semantics. Mutually exclusive on a per-path-rule basis with
  /// [routeRules].
  final List<UrlMapPathRule>? pathRules;

  /// Priority-ordered routing rules with header / query / regex matching.
  /// More expressive than [pathRules]; required for traffic-director use
  /// cases. When non-empty, evaluated BEFORE [pathRules].
  final List<UrlMapRouteRule>? routeRules;

  /// Catch-all redirect when neither [pathRules] nor [routeRules] match.
  /// Mutually exclusive with [defaultService].
  final UrlMapUrlRedirect? defaultUrlRedirect;

  /// Escape hatch for the uncurated nested blocks of `path_matcher`:
  /// - `default_route_action` (Envoy-style traffic policy)
  /// - `default_custom_error_response_policy`
  /// - `header_action`
  ///
  /// Keys are Terraform block names; values are the block payload
  /// (single block -> `[{...}]`, list of blocks -> list of maps).
  final Map<String, Object?>? advancedExtra;

  Map<String, Object?> toArgMap() => {
        'name': name,
        if (defaultService != null)
          'default_service': defaultService!.toTfJson(),
        if (description != null) 'description': description!.toTfJson(),
        if (pathRules != null)
          'path_rule': pathRules!.map((r) => r.toArgMap()).toList(),
        if (routeRules != null)
          'route_rules': routeRules!.map((r) => r.toArgMap()).toList(),
        if (defaultUrlRedirect != null)
          'default_url_redirect': [defaultUrlRedirect!.toArgMap()],
        if (advancedExtra != null) ...advancedExtra!,
      };
}

/// One `path_matcher.path_rule[]` entry. Matches request paths against
/// the [paths] glob list (e.g. `['/login', '/login/*']`) and dispatches to
/// either a [service] OR an inline [urlRedirect] -- exactly one of the two
/// must be set per the GCP API.
///
/// The deep `route_action` sub-block is exposed via the [advancedExtra]
/// escape hatch rather than as a typed helper (see
/// [UrlMapPathMatcher.advancedExtra] for the rationale).
@immutable
class UrlMapPathRule {
  const UrlMapPathRule({
    required this.paths,
    this.service,
    this.urlRedirect,
    this.advancedExtra,
  });

  /// Path globs to match (e.g. `'/login'`, `'/static/*'`). At least one
  /// entry required per the schema.
  final List<String> paths;

  /// Backend self-link (backend service OR backend bucket). Mutually
  /// exclusive with [urlRedirect].
  final TfArg<String>? service;

  /// Inline redirect for matching requests. Mutually exclusive with
  /// [service].
  final UrlMapUrlRedirect? urlRedirect;

  /// Escape hatch for the uncurated nested blocks:
  /// - `route_action` (Envoy-style traffic policy)
  /// - `custom_error_response_policy`
  final Map<String, Object?>? advancedExtra;

  Map<String, Object?> toArgMap() => {
        'paths': paths,
        if (service != null) 'service': service!.toTfJson(),
        if (urlRedirect != null) 'url_redirect': [urlRedirect!.toArgMap()],
        if (advancedExtra != null) ...advancedExtra!,
      };
}

/// One `path_matcher.route_rules[]` entry. Priority-ordered routing with
/// header / query / regex match support; the GCP equivalent of an Envoy
/// `route_config`.
///
/// Exactly one of [service] / [urlRedirect] must be set (or alternatively
/// the uncurated `route_action` sub-block via [advancedExtra]).
@immutable
class UrlMapRouteRule {
  const UrlMapRouteRule({
    required this.priority,
    this.service,
    this.matchRules,
    this.headerAction,
    this.urlRedirect,
    this.advancedExtra,
  });

  /// Evaluation priority. Lower numbers evaluated first. Required by the
  /// schema. Must be unique within a single [UrlMapPathMatcher.routeRules].
  final int priority;

  /// Backend self-link (backend service OR backend bucket). Mutually
  /// exclusive with [urlRedirect].
  final TfArg<String>? service;

  /// Per-rule match conditions (HTTP headers, query parameters, path
  /// regex, ...). When empty, the rule matches every request that reaches
  /// the parent path matcher.
  final List<UrlMapRouteRuleMatch>? matchRules;

  /// Per-rule header mutation applied to forwarded requests / responses.
  /// Layered on top of any path-matcher-level header action.
  final UrlMapHeaderAction? headerAction;

  /// Inline redirect for matching requests. Mutually exclusive with
  /// [service].
  final UrlMapUrlRedirect? urlRedirect;

  /// Escape hatch for the uncurated nested blocks:
  /// - `route_action` (Envoy-style traffic policy)
  /// - `custom_error_response_policy`
  final Map<String, Object?>? advancedExtra;

  Map<String, Object?> toArgMap() => {
        'priority': priority,
        if (service != null) 'service': service!.toTfJson(),
        if (matchRules != null)
          'match_rules': matchRules!.map((m) => m.toArgMap()).toList(),
        if (headerAction != null) 'header_action': [headerAction!.toArgMap()],
        if (urlRedirect != null) 'url_redirect': [urlRedirect!.toArgMap()],
        if (advancedExtra != null) ...advancedExtra!,
      };
}

/// One `route_rules[].match_rules[]` entry. Carries the actual matching
/// predicates (one or more of full path / prefix / regex / path template,
/// optionally further refined by header / query / metadata filters).
///
/// The schema marks every field optional, but in practice at least one of
/// the path matchers ([fullPathMatch] / [prefixMatch] / [regexMatch] /
/// [pathTemplateMatch]) should be set for the rule to be meaningful.
///
/// The `metadata_filters` nested block (xDS / Traffic Director use cases)
/// and any other uncurated sub-fields can be passed verbatim via
/// [advancedExtra]; the map is spread into the emitted Terraform args as-is.
@immutable
class UrlMapRouteRuleMatch {
  const UrlMapRouteRuleMatch({
    this.fullPathMatch,
    this.prefixMatch,
    this.regexMatch,
    this.pathTemplateMatch,
    this.ignoreCase,
    this.headerMatches,
    this.queryParameterMatches,
    this.advancedExtra,
  });

  /// Exact-string path match. Mutually exclusive with [prefixMatch],
  /// [regexMatch], [pathTemplateMatch].
  final TfArg<String>? fullPathMatch;

  /// Path-prefix match. Mutually exclusive with the other path matchers.
  final TfArg<String>? prefixMatch;

  /// Regex path match (RE2 syntax). Mutually exclusive with the other
  /// path matchers.
  final TfArg<String>? regexMatch;

  /// Path-template match (`/foo/{var}/...`). Mutually exclusive with the
  /// other path matchers.
  final TfArg<String>? pathTemplateMatch;

  /// Case-insensitive match. Applies to [fullPathMatch] / [prefixMatch].
  final TfArg<bool>? ignoreCase;

  /// Per-header match predicates ANDed with the path predicate.
  final List<UrlMapHeaderMatch>? headerMatches;

  /// Per-query-parameter match predicates.
  final List<UrlMapQueryParameterMatch>? queryParameterMatches;

  /// Escape hatch for the uncurated nested blocks of `match_rules`:
  /// - `metadata_filters` (xDS / Traffic Director match predicates)
  ///
  /// Keys are Terraform block names; values are the block payload
  /// (single block -> `[{...}]`, list of blocks -> list of maps). The map
  /// is spread into the emitted Terraform args verbatim.
  final Map<String, Object?>? advancedExtra;

  Map<String, Object?> toArgMap() => {
        if (fullPathMatch != null) 'full_path_match': fullPathMatch!.toTfJson(),
        if (prefixMatch != null) 'prefix_match': prefixMatch!.toTfJson(),
        if (regexMatch != null) 'regex_match': regexMatch!.toTfJson(),
        if (pathTemplateMatch != null)
          'path_template_match': pathTemplateMatch!.toTfJson(),
        if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
        if (headerMatches != null)
          'header_matches': headerMatches!.map((h) => h.toArgMap()).toList(),
        if (queryParameterMatches != null)
          'query_parameter_matches':
              queryParameterMatches!.map((q) => q.toArgMap()).toList(),
        if (advancedExtra != null) ...advancedExtra!,
      };
}

/// One `match_rules[].header_matches[]` entry. The schema permits one of
/// [exactMatch] / [prefixMatch] / [suffixMatch] / [regexMatch] /
/// [presentMatch] / [rangeMatch] per entry; [invertMatch] negates the
/// outcome. Validation is left to the GCP API.
@immutable
class UrlMapHeaderMatch {
  const UrlMapHeaderMatch({
    required this.headerName,
    this.exactMatch,
    this.prefixMatch,
    this.suffixMatch,
    this.regexMatch,
    this.presentMatch,
    this.invertMatch,
    this.rangeMatch,
  });

  /// HTTP header name to match. Case-insensitive on the wire.
  final TfArg<String> headerName;

  /// Exact value match.
  final TfArg<String>? exactMatch;

  /// Prefix value match.
  final TfArg<String>? prefixMatch;

  /// Suffix value match.
  final TfArg<String>? suffixMatch;

  /// Regex value match (RE2 syntax).
  final TfArg<String>? regexMatch;

  /// Match if the header is present (any value).
  final TfArg<bool>? presentMatch;

  /// Negate the match outcome.
  final TfArg<bool>? invertMatch;

  /// Numeric-range match for integer header values.
  final UrlMapHeaderMatchRange? rangeMatch;

  Map<String, Object?> toArgMap() => {
        'header_name': headerName.toTfJson(),
        if (exactMatch != null) 'exact_match': exactMatch!.toTfJson(),
        if (prefixMatch != null) 'prefix_match': prefixMatch!.toTfJson(),
        if (suffixMatch != null) 'suffix_match': suffixMatch!.toTfJson(),
        if (regexMatch != null) 'regex_match': regexMatch!.toTfJson(),
        if (presentMatch != null) 'present_match': presentMatch!.toTfJson(),
        if (invertMatch != null) 'invert_match': invertMatch!.toTfJson(),
        if (rangeMatch != null) 'range_match': [rangeMatch!.toArgMap()],
      };
}

/// `header_matches.range_match` block. Both bounds required by the schema.
@immutable
class UrlMapHeaderMatchRange {
  const UrlMapHeaderMatchRange({
    required this.rangeStart,
    required this.rangeEnd,
  });

  /// Inclusive lower bound.
  final int rangeStart;

  /// Exclusive upper bound.
  final int rangeEnd;

  Map<String, Object?> toArgMap() => {
        'range_start': rangeStart,
        'range_end': rangeEnd,
      };
}

/// One `match_rules[].query_parameter_matches[]` entry. Matches a single
/// query parameter by name with a chosen predicate.
@immutable
class UrlMapQueryParameterMatch {
  const UrlMapQueryParameterMatch({
    required this.name,
    this.exactMatch,
    this.regexMatch,
    this.presentMatch,
  });

  /// Query parameter name.
  final TfArg<String> name;

  /// Exact value match.
  final TfArg<String>? exactMatch;

  /// Regex value match (RE2 syntax).
  final TfArg<String>? regexMatch;

  /// Match if the parameter is present (any value).
  final TfArg<bool>? presentMatch;

  Map<String, Object?> toArgMap() => {
        'name': name.toTfJson(),
        if (exactMatch != null) 'exact_match': exactMatch!.toTfJson(),
        if (regexMatch != null) 'regex_match': regexMatch!.toTfJson(),
        if (presentMatch != null) 'present_match': presentMatch!.toTfJson(),
      };
}

// ===========================================================================
// url_redirect block (max_items=1, reused at every level)
// ===========================================================================

/// `default_url_redirect` / `path_rule.url_redirect` /
/// `route_rules.url_redirect` block. Returns an HTTP redirect to the client
/// instead of forwarding to a backend.
///
/// At least one of [hostRedirect] / [pathRedirect] / [prefixRedirect] /
/// [httpsRedirect] is typically set; the schema requires [stripQuery] at
/// the top-level `default_url_redirect` slot (and accepts it as optional
/// elsewhere -- the wrapper marks it required to keep the most common
/// position safe by default).
@immutable
class UrlMapUrlRedirect {
  const UrlMapUrlRedirect({
    required this.stripQuery,
    this.hostRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.httpsRedirect,
    this.redirectResponseCode,
  });

  /// Whether to drop the request query string before redirecting.
  /// Required by the schema at the URL-map-level `default_url_redirect`
  /// slot.
  final TfArg<bool> stripQuery;

  /// Replacement `Host:` header for the redirect target. Mutually
  /// exclusive with [prefixRedirect] when both would rewrite the host.
  final TfArg<String>? hostRedirect;

  /// Full replacement path. Mutually exclusive with [prefixRedirect].
  final TfArg<String>? pathRedirect;

  /// Replace the matched prefix with this value. Mutually exclusive with
  /// [pathRedirect].
  final TfArg<String>? prefixRedirect;

  /// Force the redirected URL to https. Useful for HTTP -> HTTPS upgrade
  /// URL maps fronting a `target_http_proxy`.
  final TfArg<bool>? httpsRedirect;

  /// HTTP redirect status code. Defaults to
  /// [UrlMapRedirectResponseCode.movedPermanentlyDefault] (HTTP 301) on the
  /// API side when omitted.
  final TfArg<UrlMapRedirectResponseCode>? redirectResponseCode;

  Map<String, Object?> toArgMap() => {
        'strip_query': stripQuery.toTfJson(),
        if (hostRedirect != null) 'host_redirect': hostRedirect!.toTfJson(),
        if (pathRedirect != null) 'path_redirect': pathRedirect!.toTfJson(),
        if (prefixRedirect != null)
          'prefix_redirect': prefixRedirect!.toTfJson(),
        if (httpsRedirect != null) 'https_redirect': httpsRedirect!.toTfJson(),
        if (redirectResponseCode != null)
          'redirect_response_code': redirectResponseCode!.toTfJson(),
      };
}

// ===========================================================================
// header_action block (max_items=1, reused at top-level and inside rules)
// ===========================================================================

/// `header_action` block. Adds / removes headers on requests forwarded to
/// the backend and / or responses returned to the client. Used at the
/// top-level URL-map slot and inside [UrlMapRouteRule.headerAction].
///
/// Note: the nested [requestHeadersToAdd] / [responseHeadersToAdd] schema
/// requires every field (`header_name`, `header_value`, `replace`) at the
/// top-level `header_action` slot. The wrapper enforces that by making them
/// `required` on [UrlMapHeaderToAdd].
@immutable
class UrlMapHeaderAction {
  const UrlMapHeaderAction({
    this.requestHeadersToAdd,
    this.requestHeadersToRemove,
    this.responseHeadersToAdd,
    this.responseHeadersToRemove,
  });

  /// Headers to add to forwarded requests.
  final List<UrlMapHeaderToAdd>? requestHeadersToAdd;

  /// Header names (case-insensitive) to strip from forwarded requests.
  final TfArg<List<String>>? requestHeadersToRemove;

  /// Headers to add to returned responses.
  final List<UrlMapHeaderToAdd>? responseHeadersToAdd;

  /// Header names (case-insensitive) to strip from returned responses.
  final TfArg<List<String>>? responseHeadersToRemove;

  Map<String, Object?> toArgMap() => {
        if (requestHeadersToAdd != null)
          'request_headers_to_add':
              requestHeadersToAdd!.map((h) => h.toArgMap()).toList(),
        if (requestHeadersToRemove != null)
          'request_headers_to_remove': requestHeadersToRemove!.toTfJson(),
        if (responseHeadersToAdd != null)
          'response_headers_to_add':
              responseHeadersToAdd!.map((h) => h.toArgMap()).toList(),
        if (responseHeadersToRemove != null)
          'response_headers_to_remove': responseHeadersToRemove!.toTfJson(),
      };
}

/// One entry in [UrlMapHeaderAction.requestHeadersToAdd] /
/// [UrlMapHeaderAction.responseHeadersToAdd]. All three fields are
/// required by the schema at the top-level `header_action` slot.
@immutable
class UrlMapHeaderToAdd {
  const UrlMapHeaderToAdd({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  /// Header name (case-insensitive on the wire).
  final TfArg<String> headerName;

  /// Header value to set.
  final TfArg<String> headerValue;

  /// If `true`, an existing header with the same name is replaced; if
  /// `false`, the new value is appended.
  final TfArg<bool> replace;

  Map<String, Object?> toArgMap() => {
        'header_name': headerName.toTfJson(),
        'header_value': headerValue.toTfJson(),
        'replace': replace.toTfJson(),
      };
}

// ===========================================================================
// test[] block (CI-friendly assertions)
// ===========================================================================

/// One `test[]` entry. Each test states "a request to [host]+[path] should
/// resolve to [service]" and is evaluated by GCP **at apply time** -- if
/// the routing pipeline produces a different service, the apply FAILS.
/// Effectively a contract test for the URL map's routing table.
///
/// For redirect tests, set [expectedRedirectResponseCode] (and / or
/// [expectedOutputUrl]) instead of (or in addition to) [service].
@immutable
class UrlMapTest {
  const UrlMapTest({
    required this.host,
    required this.path,
    this.service,
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    this.headers,
  });

  /// Request `Host:` header for the simulated request.
  final TfArg<String> host;

  /// Request path for the simulated request.
  final TfArg<String> path;

  /// Backend self-link the simulated request should resolve to. Optional
  /// when [expectedRedirectResponseCode] is set (a redirect contract test
  /// does not resolve to a backend).
  final TfArg<String>? service;

  /// Free-form description.
  final TfArg<String>? description;

  /// Expected redirected URL when the routing pipeline produces a
  /// redirect.
  final TfArg<String>? expectedOutputUrl;

  /// Expected HTTP redirect status code (e.g. `301`, `302`).
  final TfArg<int>? expectedRedirectResponseCode;

  /// Extra request headers for header-aware route rules.
  final List<UrlMapTestHeader>? headers;

  Map<String, Object?> toArgMap() => {
        'host': host.toTfJson(),
        'path': path.toTfJson(),
        if (service != null) 'service': service!.toTfJson(),
        if (description != null) 'description': description!.toTfJson(),
        if (expectedOutputUrl != null)
          'expected_output_url': expectedOutputUrl!.toTfJson(),
        if (expectedRedirectResponseCode != null)
          'expected_redirect_response_code':
              expectedRedirectResponseCode!.toTfJson(),
        if (headers != null)
          'headers': headers!.map((h) => h.toArgMap()).toList(),
      };
}

/// One entry in [UrlMapTest.headers]. Both fields required by the schema.
@immutable
class UrlMapTestHeader {
  const UrlMapTestHeader({required this.name, required this.value});

  /// Header name.
  final TfArg<String> name;

  /// Header value.
  final TfArg<String> value;

  Map<String, Object?> toArgMap() => {
        'name': name.toTfJson(),
        'value': value.toTfJson(),
      };
}

/// Factory wrapper for `google_compute_url_map` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Manages a **global** Cloud Load Balancing URL map -- the layer that
/// routes incoming HTTP(S) requests to one of several
/// `google_compute_backend_service` or `google_compute_backend_bucket`
/// targets based on host + path matching. Regional URL maps live in a
/// separate resource (`google_compute_region_url_map`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_url_map.`).
/// - `name`: GCP URL map name. 1-63 chars, RFC 1035
///   (`[a-z]([-a-z0-9]*[a-z0-9])?`).
///
/// Default target (highest fallback):
/// - `default_service`: self-link to the **backend** consulted when no
///   [hostRules] / [pathMatchers] match the incoming request. The link
///   accepts either a
///   [GoogleComputeBackendService] (`.../backendServices/<name>`) **or** a
///   [GoogleComputeBackendBucket] (`.../backendBuckets/<name>`). The GCP
///   API distinguishes by URL segment, not by a separate field. Mutually
///   exclusive with [defaultUrlRedirect] -- exactly one of the two must be
///   set when no [pathMatchers] are present.
///
/// Matching pipeline (request flow):
///
/// ```
/// incoming request
///   -> match Host: header against host_rule.hosts[]
///        -> dispatch to path_matcher named host_rule.path_matcher
///             -> match path against path_matcher.path_rule[].paths[]
///                  -> path_rule.service  (specific backend)
///                  -> OR path_rule.url_redirect
///                  -> OR path_rule.route_action (advanced)
///             -> OR match against path_matcher.route_rules[]
///                  (priority-ordered, header/query-aware)
///             -> fallthrough -> path_matcher.default_service
///   -> fallthrough -> url_map.default_service
/// ```
///
/// Names referenced within a single URL map (`host_rule.path_matcher` ->
/// `path_matcher.name`) are LOCAL to the URL map -- they are NOT
/// `google_compute_*` resource addresses. Service links, in contrast, are
/// full self-links that must point at already-applied backends.
///
/// Example (login backend + static bucket, both routed via host/path):
/// ```dart
/// final urlMap = GoogleComputeUrlMap(
///   localName: 'urlmap',
///   name: TfArg.literal('urlmap-prod'),
///   defaultService: TfArg.ref(login.selfLink),
///   hostRules: const [
///     UrlMapHostRule(
///       hosts: ['mysite.com', 'myothersite.com'],
///       pathMatcher: 'allpaths',
///     ),
///   ],
///   pathMatchers: [
///     UrlMapPathMatcher(
///       name: 'allpaths',
///       defaultService: TfArg.ref(login.selfLink),
///       pathRules: [
///         UrlMapPathRule(
///           paths: const ['/home'],
///           service: TfArg.ref(login.selfLink),
///         ),
///         UrlMapPathRule(
///           paths: const ['/static'],
///           service: TfArg.ref(staticBucket.selfLink),
///         ),
///       ],
///     ),
///   ],
///   tests: const [
///     UrlMapTest(host: 'mysite.com', path: '/home'),
///   ],
/// );
/// ```
///
/// Naming convention: ALL nested helper types in this resource are prefixed
/// `UrlMap...` (e.g. [UrlMapHostRule], [UrlMapPathMatcher],
/// [UrlMapUrlRedirect]) to avoid colliding with similarly-named structures
/// in sibling load-balancer resources such as `google_compute_backend_service`.
///
/// Deeply nested traffic-policy sub-blocks (`default_route_action`,
/// `path_matcher.default_route_action`, `path_rule.route_action`,
/// `route_rules.route_action`, `default_custom_error_response_policy`) are
/// not modeled as typed helpers -- they form a sprawling Envoy-style config
/// (cache_policy, cors_policy, fault_injection_policy, retry_policy,
/// url_rewrite, weighted_backend_services, ...) that would dominate the
/// curated surface for little common-case win. Pass a raw
/// `Map<String, Object?>` via [UrlMapPathMatcher.advancedExtra] etc. keyed
/// by the Terraform block name when you need them; see the per-class doc
/// for the exact escape-hatch key.
///
/// Composition pattern: extends `Resource<$GoogleComputeUrlMap>` for
/// runtime behavior.
final class GoogleComputeUrlMap extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_url_map';

  GoogleComputeUrlMap({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? defaultService,
    TfArg<String>? description,
    List<UrlMapHostRule>? hostRules,
    List<UrlMapPathMatcher>? pathMatchers,
    List<UrlMapTest>? tests,
    UrlMapUrlRedirect? defaultUrlRedirect,
    UrlMapHeaderAction? headerAction,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            if (defaultService != null) 'default_service': defaultService,
            if (description != null) 'description': description,
            if (hostRules != null)
              'host_rule': TfArg.literal(
                hostRules.map((r) => r.toArgMap()).toList(),
              ),
            if (pathMatchers != null)
              'path_matcher': TfArg.literal(
                pathMatchers.map((p) => p.toArgMap()).toList(),
              ),
            if (tests != null)
              'test': TfArg.literal(tests.map((t) => t.toArgMap()).toList()),
            if (defaultUrlRedirect != null)
              'default_url_redirect': TfArg.literal([
                defaultUrlRedirect.toArgMap(),
              ]),
            if (headerAction != null)
              'header_action': TfArg.literal([headerAction.toArgMap()]),
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeUrlMapSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/urlMaps/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Downstream
  /// `google_compute_target_http_proxy` / `google_compute_target_https_proxy`
  /// resources consume this as their `url_map` argument.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `map_id` -- numeric server-assigned ID for
  /// the URL map. Rarely needed; prefer [selfLink] / [nameRef].
  TfRef<num> get mapId => TfRef.attribute<num>(this, 'map_id');

  /// Reference to the computed `fingerprint` attribute. Used by the API
  /// for optimistic concurrency control on updates; surfaced here for
  /// consumers that pipe it through state-inspection tooling.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to the computed `creation_timestamp` attribute (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
