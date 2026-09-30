// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_edge_cache_service`.
const Set<String> _googleNetworkServicesEdgeCacheServiceSensitive = <String>{};

/// Typed helper for the `log_config` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceLogConfig {
  const NetworkServicesEdgeCacheServiceLogConfig({
    this.enable,
    this.sampleRate,
  });

  final TfArg<bool>? enable;

  final TfArg<num>? sampleRate;

  Map<String, Object?> encode() => {
    'enable': ?enable?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
  };
}

/// Typed helper for the `routing` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRouting {
  const NetworkServicesEdgeCacheServiceRouting({
    required this.hostRule,
    required this.pathMatcher,
  });

  final List<NetworkServicesEdgeCacheServiceRoutingHostRule> hostRule;

  final List<NetworkServicesEdgeCacheServiceRoutingPathMatcher> pathMatcher;

  Map<String, Object?> encode() => {
    'host_rule': [for (final e in hostRule) e.encode()],
    'path_matcher': [for (final e in pathMatcher) e.encode()],
  };
}

/// Typed helper for the `routing.host_rule` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingHostRule {
  const NetworkServicesEdgeCacheServiceRoutingHostRule({
    this.description,
    required this.hosts,
    required this.pathMatcher,
  });

  final TfArg<String>? description;

  final TfArg<List<String>> hosts;

  final TfArg<String> pathMatcher;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'hosts': hosts.toTfJson(),
    'path_matcher': pathMatcher.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcher {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcher({
    this.description,
    required this.name,
    required this.routeRule,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRule>
  routeRule;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'route_rule': [for (final e in routeRule) e.encode()],
  };
}

/// Typed helper for the `routing.path_matcher.route_rule` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRule {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRule({
    this.description,
    this.origin,
    required this.priority,
    this.headerAction,
    required this.matchRule,
    this.routeAction,
    this.routeMethods,
    this.urlRedirect,
  });

  final TfArg<String>? description;

  final TfArg<String>? origin;

  final TfArg<String> priority;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction?
  headerAction;

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule
  >
  matchRule;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction?
  routeAction;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods?
  routeMethods;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect?
  urlRedirect;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'origin': ?origin?.toTfJson(),
    'priority': priority.toTfJson(),
    'header_action': ?headerAction?.encode(),
    'match_rule': [for (final e in matchRule) e.encode()],
    'route_action': ?routeAction?.encode(),
    'route_methods': ?routeMethods?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.header_action` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction({
    this.requestHeaderToAdd,
    this.requestHeaderToRemove,
    this.responseHeaderToAdd,
    this.responseHeaderToRemove,
  });

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd
  >?
  requestHeaderToAdd;

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove
  >?
  requestHeaderToRemove;

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd
  >?
  responseHeaderToAdd;

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove
  >?
  responseHeaderToRemove;

  Map<String, Object?> encode() => {
    if (requestHeaderToAdd != null)
      'request_header_to_add': [
        for (final e in requestHeaderToAdd!) e.encode(),
      ],
    if (requestHeaderToRemove != null)
      'request_header_to_remove': [
        for (final e in requestHeaderToRemove!) e.encode(),
      ],
    if (responseHeaderToAdd != null)
      'response_header_to_add': [
        for (final e in responseHeaderToAdd!) e.encode(),
      ],
    if (responseHeaderToRemove != null)
      'response_header_to_remove': [
        for (final e in responseHeaderToRemove!) e.encode(),
      ],
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.header_action.request_header_to_add` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd({
    required this.headerName,
    required this.headerValue,
    this.replace,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  final TfArg<bool>? replace;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
    'replace': ?replace?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.header_action.request_header_to_remove` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove({
    required this.headerName,
  });

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `routing.path_matcher.route_rule.header_action.response_header_to_add` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd({
    required this.headerName,
    required this.headerValue,
    this.replace,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  final TfArg<bool>? replace;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
    'replace': ?replace?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.header_action.response_header_to_remove` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove({
    required this.headerName,
  });

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {'header_name': headerName.toTfJson()};
}

/// Typed helper for the `routing.path_matcher.route_rule.match_rule` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule({
    this.fullPathMatch,
    this.ignoreCase,
    this.pathTemplateMatch,
    this.prefixMatch,
    this.headerMatch,
    this.queryParameterMatch,
  });

  final TfArg<String>? fullPathMatch;

  final TfArg<bool>? ignoreCase;

  final TfArg<String>? pathTemplateMatch;

  final TfArg<String>? prefixMatch;

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch
  >?
  headerMatch;

  final List<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch
  >?
  queryParameterMatch;

  Map<String, Object?> encode() => {
    'full_path_match': ?fullPathMatch?.toTfJson(),
    'ignore_case': ?ignoreCase?.toTfJson(),
    'path_template_match': ?pathTemplateMatch?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    if (headerMatch != null)
      'header_match': [for (final e in headerMatch!) e.encode()],
    if (queryParameterMatch != null)
      'query_parameter_match': [
        for (final e in queryParameterMatch!) e.encode(),
      ],
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.match_rule.header_match` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch({
    this.exactMatch,
    required this.headerName,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.suffixMatch,
  });

  final TfArg<String>? exactMatch;

  final TfArg<String> headerName;

  final TfArg<bool>? invertMatch;

  final TfArg<String>? prefixMatch;

  final TfArg<bool>? presentMatch;

  final TfArg<String>? suffixMatch;

  Map<String, Object?> encode() => {
    'exact_match': ?exactMatch?.toTfJson(),
    'header_name': headerName.toTfJson(),
    'invert_match': ?invertMatch?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    'present_match': ?presentMatch?.toTfJson(),
    'suffix_match': ?suffixMatch?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.match_rule.query_parameter_match` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch({
    this.exactMatch,
    required this.name,
    this.presentMatch,
  });

  final TfArg<String>? exactMatch;

  final TfArg<String> name;

  final TfArg<bool>? presentMatch;

  Map<String, Object?> encode() => {
    'exact_match': ?exactMatch?.toTfJson(),
    'name': name.toTfJson(),
    'present_match': ?presentMatch?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction({
    this.compressionMode,
    this.cdnPolicy,
    this.corsPolicy,
    this.urlRewrite,
  });

  final TfArg<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCompressionMode
  >?
  compressionMode;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy?
  cdnPolicy;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy?
  corsPolicy;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite?
  urlRewrite;

  Map<String, Object?> encode() => {
    'compression_mode': ?compressionMode?.toTfJson(),
    'cdn_policy': ?cdnPolicy?.encode(),
    'cors_policy': ?corsPolicy?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
  };
}

/// `compression_mode` — derived from the provider schema description.
enum NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCompressionMode
    implements TerraformEnum {
  disabled('DISABLED'),
  automatic('AUTOMATIC');

  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCompressionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action.cdn_policy` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy({
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicy,
    this.signedRequestKeyset,
    this.signedRequestMaximumExpirationTtl,
    this.signedRequestMode,
    this.addSignatures,
    this.cacheKeyPolicy,
    this.signedTokenOptions,
  });

  final TfArg<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheMode
  >?
  cacheMode;

  final TfArg<String>? clientTtl;

  final TfArg<String>? defaultTtl;

  final TfArg<String>? maxTtl;

  final TfArg<bool>? negativeCaching;

  final TfArg<Map<String, String>>? negativeCachingPolicy;

  final TfArg<String>? signedRequestKeyset;

  final TfArg<String>? signedRequestMaximumExpirationTtl;

  final TfArg<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedRequestMode
  >?
  signedRequestMode;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures?
  addSignatures;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy?
  cacheKeyPolicy;

  final NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions?
  signedTokenOptions;

  Map<String, Object?> encode() => {
    'cache_mode': ?cacheMode?.toTfJson(),
    'client_ttl': ?clientTtl?.toTfJson(),
    'default_ttl': ?defaultTtl?.toTfJson(),
    'max_ttl': ?maxTtl?.toTfJson(),
    'negative_caching': ?negativeCaching?.toTfJson(),
    'negative_caching_policy': ?negativeCachingPolicy?.toTfJson(),
    'signed_request_keyset': ?signedRequestKeyset?.toTfJson(),
    'signed_request_maximum_expiration_ttl': ?signedRequestMaximumExpirationTtl
        ?.toTfJson(),
    'signed_request_mode': ?signedRequestMode?.toTfJson(),
    'add_signatures': ?addSignatures?.encode(),
    'cache_key_policy': ?cacheKeyPolicy?.encode(),
    'signed_token_options': ?signedTokenOptions?.encode(),
  };
}

/// `cache_mode` — derived from the provider schema description.
enum NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheMode
    implements TerraformEnum {
  cacheAllStatic('CACHE_ALL_STATIC'),
  useOriginHeaders('USE_ORIGIN_HEADERS'),
  forceCacheAll('FORCE_CACHE_ALL'),
  bypassCache('BYPASS_CACHE');

  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `signed_request_mode` — derived from the provider schema description.
enum NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedRequestMode
    implements TerraformEnum {
  disabled('DISABLED'),
  requireSignatures('REQUIRE_SIGNATURES'),
  requireTokens('REQUIRE_TOKENS');

  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedRequestMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action.cdn_policy.add_signatures` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures({
    required this.actions,
    this.copiedParameters,
    this.keyset,
    this.tokenQueryParameter,
    this.tokenTtl,
  });

  final List<
    TfArg<
      NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesActions
    >
  >
  actions;

  final TfArg<List<String>>? copiedParameters;

  final TfArg<String>? keyset;

  final TfArg<String>? tokenQueryParameter;

  final TfArg<String>? tokenTtl;

  Map<String, Object?> encode() => {
    'actions': [for (final e in actions) e.toTfJson()],
    'copied_parameters': ?copiedParameters?.toTfJson(),
    'keyset': ?keyset?.toTfJson(),
    'token_query_parameter': ?tokenQueryParameter?.toTfJson(),
    'token_ttl': ?tokenTtl?.toTfJson(),
  };
}

/// `actions` — derived from the provider schema description.
enum NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesActions
    implements TerraformEnum {
  generateCookie('GENERATE_COOKIE'),
  generateTokenHlsCookieless('GENERATE_TOKEN_HLS_COOKIELESS'),
  propagateTokenHlsCookieless('PROPAGATE_TOKEN_HLS_COOKIELESS');

  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignaturesActions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action.cdn_policy.cache_key_policy` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy({
    this.excludeHost,
    this.excludeQueryString,
    this.excludedQueryParameters,
    this.includeProtocol,
    this.includedCookieNames,
    this.includedHeaderNames,
    this.includedQueryParameters,
  });

  final TfArg<bool>? excludeHost;

  final TfArg<bool>? excludeQueryString;

  final TfArg<List<String>>? excludedQueryParameters;

  final TfArg<bool>? includeProtocol;

  final TfArg<List<String>>? includedCookieNames;

  final TfArg<List<String>>? includedHeaderNames;

  final TfArg<List<String>>? includedQueryParameters;

  Map<String, Object?> encode() => {
    'exclude_host': ?excludeHost?.toTfJson(),
    'exclude_query_string': ?excludeQueryString?.toTfJson(),
    'excluded_query_parameters': ?excludedQueryParameters?.toTfJson(),
    'include_protocol': ?includeProtocol?.toTfJson(),
    'included_cookie_names': ?includedCookieNames?.toTfJson(),
    'included_header_names': ?includedHeaderNames?.toTfJson(),
    'included_query_parameters': ?includedQueryParameters?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action.cdn_policy.signed_token_options` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions({
    this.allowedSignatureAlgorithms,
    this.tokenQueryParameter,
  });

  final List<
    TfArg<
      NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsAllowedSignatureAlgorithms
    >
  >?
  allowedSignatureAlgorithms;

  final TfArg<String>? tokenQueryParameter;

  Map<String, Object?> encode() => {
    if (allowedSignatureAlgorithms != null)
      'allowed_signature_algorithms': [
        for (final e in allowedSignatureAlgorithms!) e.toTfJson(),
      ],
    'token_query_parameter': ?tokenQueryParameter?.toTfJson(),
  };
}

/// `allowed_signature_algorithms` — derived from the provider schema description.
enum NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsAllowedSignatureAlgorithms
    implements TerraformEnum {
  ed25519('ED25519'),
  hmacSha256('HMAC_SHA_256'),
  hmacSha1('HMAC_SHA1');

  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptionsAllowedSignatureAlgorithms(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action.cors_policy` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    required this.maxAge,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<String>>? allowHeaders;

  final TfArg<List<String>>? allowMethods;

  final TfArg<List<String>>? allowOrigins;

  final TfArg<bool>? disabled;

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<String> maxAge;

  Map<String, Object?> encode() => {
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'allow_headers': ?allowHeaders?.toTfJson(),
    'allow_methods': ?allowMethods?.toTfJson(),
    'allow_origins': ?allowOrigins?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'max_age': maxAge.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.route_action.url_rewrite` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
    this.pathTemplateRewrite,
  });

  final TfArg<String>? hostRewrite;

  final TfArg<String>? pathPrefixRewrite;

  final TfArg<String>? pathTemplateRewrite;

  Map<String, Object?> encode() => {
    'host_rewrite': ?hostRewrite?.toTfJson(),
    'path_prefix_rewrite': ?pathPrefixRewrite?.toTfJson(),
    'path_template_rewrite': ?pathTemplateRewrite?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.route_methods` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods({
    this.allowedMethods,
  });

  final TfArg<List<String>>? allowedMethods;

  Map<String, Object?> encode() => {
    'allowed_methods': ?allowedMethods?.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.url_redirect` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    this.stripQuery,
  });

  final TfArg<String>? hostRedirect;

  final TfArg<bool>? httpsRedirect;

  final TfArg<String>? pathRedirect;

  final TfArg<String>? prefixRedirect;

  final TfArg<
    NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirectRedirectResponseCode
  >?
  redirectResponseCode;

  final TfArg<bool>? stripQuery;

  Map<String, Object?> encode() => {
    'host_redirect': ?hostRedirect?.toTfJson(),
    'https_redirect': ?httpsRedirect?.toTfJson(),
    'path_redirect': ?pathRedirect?.toTfJson(),
    'prefix_redirect': ?prefixRedirect?.toTfJson(),
    'redirect_response_code': ?redirectResponseCode?.toTfJson(),
    'strip_query': ?stripQuery?.toTfJson(),
  };
}

/// `redirect_response_code` — derived from the provider schema description.
enum NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirectRedirectResponseCode
    implements TerraformEnum {
  movedPermanentlyDefault('MOVED_PERMANENTLY_DEFAULT'),
  found('FOUND'),
  seeOther('SEE_OTHER'),
  temporaryRedirect('TEMPORARY_REDIRECT'),
  permanentRedirect('PERMANENT_REDIRECT');

  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirectRedirectResponseCode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_services_edge_cache_service`.
///
/// EdgeCacheService defines the IP addresses, protocols, security policies,
/// cache policies and routing configuration.
///
/// Media CDN **Edge Cache service** — global edge HTTP(S) cache with
/// [routing] host/path matchers.
///
/// **Cost / apply:** gcp-cost: Networking `E505-1604-58F8` Media CDN Capacity
/// Reservation per Tbps North America SKU `7393-8C37-77E1` **$20,000/mo**
/// (plus Edge Cache Data Transfer North America `E2B8-D4FA-6E05`
/// **$0.02/GiBy**). billing-behavior: services are the Media CDN Edge Cache
/// data plane; apply-smoke traffic accrues egress, and this product family
/// includes existence-billed Tbps capacity reservations. Too expensive for
/// apply-smoke even once — debt-only. **Never** wire into apply-smoke.
///
/// Enable `networkservices.googleapis.com` before apply. [routing] is
/// required.
final class GoogleNetworkServicesEdgeCacheService extends Resource {
  static const String tfType = 'google_network_services_edge_cache_service';

  GoogleNetworkServicesEdgeCacheService({
    required super.localName,
    required TfArg<String> name,
    required NetworkServicesEdgeCacheServiceRouting routing,
    TfArg<String>? description,
    TfArg<List<String>>? edgeSslCertificates,
    TfArg<String>? sslPolicy,
    TfArg<String>? edgeSecurityPolicy,
    TfArg<bool>? requireTls,
    TfArg<bool>? disableHttp2,
    TfArg<bool>? disableQuic,
    NetworkServicesEdgeCacheServiceLogConfig? logConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'routing': TfArg.literal(routing.encode()),
           'description': ?description,
           'edge_ssl_certificates': ?edgeSslCertificates,
           'ssl_policy': ?sslPolicy,
           'edge_security_policy': ?edgeSecurityPolicy,
           'require_tls': ?requireTls,
           'disable_http2': ?disableHttp2,
           'disable_quic': ?disableQuic,
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesEdgeCacheServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesEdgeCacheService>`.
  RefTo<GoogleNetworkServicesEdgeCacheService> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `ipv4_addresses` attribute.
  TfRef<List<String>> get ipv4Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv4_addresses');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_http2` attribute.
  TfRef<bool> get disableHttp2Ref =>
      TfRef.attribute<bool>(this, 'disable_http2');

  /// Reference to `disable_quic` attribute.
  TfRef<bool> get disableQuicRef => TfRef.attribute<bool>(this, 'disable_quic');

  /// Reference to `edge_security_policy` attribute.
  TfRef<String> get edgeSecurityPolicyRef =>
      TfRef.attribute<String>(this, 'edge_security_policy');

  /// Reference to `edge_ssl_certificates` attribute.
  TfRef<List<String>> get edgeSslCertificatesRef =>
      TfRef.attribute<List<String>>(this, 'edge_ssl_certificates');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `require_tls` attribute.
  TfRef<bool> get requireTlsRef => TfRef.attribute<bool>(this, 'require_tls');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicyRef => TfRef.attribute<String>(this, 'ssl_policy');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
