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
    if (enable != null) 'enable': enable!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
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

  final TfArg<List<Object?>> hosts;

  final TfArg<String> pathMatcher;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
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
    if (description != null) 'description': description!.toTfJson(),
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
    if (description != null) 'description': description!.toTfJson(),
    if (origin != null) 'origin': origin!.toTfJson(),
    'priority': priority.toTfJson(),
    if (headerAction != null) 'header_action': headerAction!.encode(),
    'match_rule': [for (final e in matchRule) e.encode()],
    if (routeAction != null) 'route_action': routeAction!.encode(),
    if (routeMethods != null) 'route_methods': routeMethods!.encode(),
    if (urlRedirect != null) 'url_redirect': urlRedirect!.encode(),
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
    if (replace != null) 'replace': replace!.toTfJson(),
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
    if (replace != null) 'replace': replace!.toTfJson(),
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
    if (fullPathMatch != null) 'full_path_match': fullPathMatch!.toTfJson(),
    if (ignoreCase != null) 'ignore_case': ignoreCase!.toTfJson(),
    if (pathTemplateMatch != null)
      'path_template_match': pathTemplateMatch!.toTfJson(),
    if (prefixMatch != null) 'prefix_match': prefixMatch!.toTfJson(),
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
    if (exactMatch != null) 'exact_match': exactMatch!.toTfJson(),
    'header_name': headerName.toTfJson(),
    if (invertMatch != null) 'invert_match': invertMatch!.toTfJson(),
    if (prefixMatch != null) 'prefix_match': prefixMatch!.toTfJson(),
    if (presentMatch != null) 'present_match': presentMatch!.toTfJson(),
    if (suffixMatch != null) 'suffix_match': suffixMatch!.toTfJson(),
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
    if (exactMatch != null) 'exact_match': exactMatch!.toTfJson(),
    'name': name.toTfJson(),
    if (presentMatch != null) 'present_match': presentMatch!.toTfJson(),
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
    if (compressionMode != null)
      'compression_mode': compressionMode!.toTfJson(),
    if (cdnPolicy != null) 'cdn_policy': cdnPolicy!.encode(),
    if (corsPolicy != null) 'cors_policy': corsPolicy!.encode(),
    if (urlRewrite != null) 'url_rewrite': urlRewrite!.encode(),
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
    if (cacheMode != null) 'cache_mode': cacheMode!.toTfJson(),
    if (clientTtl != null) 'client_ttl': clientTtl!.toTfJson(),
    if (defaultTtl != null) 'default_ttl': defaultTtl!.toTfJson(),
    if (maxTtl != null) 'max_ttl': maxTtl!.toTfJson(),
    if (negativeCaching != null)
      'negative_caching': negativeCaching!.toTfJson(),
    if (negativeCachingPolicy != null)
      'negative_caching_policy': negativeCachingPolicy!.toTfJson(),
    if (signedRequestKeyset != null)
      'signed_request_keyset': signedRequestKeyset!.toTfJson(),
    if (signedRequestMaximumExpirationTtl != null)
      'signed_request_maximum_expiration_ttl':
          signedRequestMaximumExpirationTtl!.toTfJson(),
    if (signedRequestMode != null)
      'signed_request_mode': signedRequestMode!.toTfJson(),
    if (addSignatures != null) 'add_signatures': addSignatures!.encode(),
    if (cacheKeyPolicy != null) 'cache_key_policy': cacheKeyPolicy!.encode(),
    if (signedTokenOptions != null)
      'signed_token_options': signedTokenOptions!.encode(),
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

  final TfArg<List<Object?>>? copiedParameters;

  final TfArg<String>? keyset;

  final TfArg<String>? tokenQueryParameter;

  final TfArg<String>? tokenTtl;

  Map<String, Object?> encode() => {
    'actions': [for (final e in actions) e.toTfJson()],
    if (copiedParameters != null)
      'copied_parameters': copiedParameters!.toTfJson(),
    if (keyset != null) 'keyset': keyset!.toTfJson(),
    if (tokenQueryParameter != null)
      'token_query_parameter': tokenQueryParameter!.toTfJson(),
    if (tokenTtl != null) 'token_ttl': tokenTtl!.toTfJson(),
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

  final TfArg<List<Object?>>? excludedQueryParameters;

  final TfArg<bool>? includeProtocol;

  final TfArg<List<Object?>>? includedCookieNames;

  final TfArg<List<Object?>>? includedHeaderNames;

  final TfArg<List<Object?>>? includedQueryParameters;

  Map<String, Object?> encode() => {
    if (excludeHost != null) 'exclude_host': excludeHost!.toTfJson(),
    if (excludeQueryString != null)
      'exclude_query_string': excludeQueryString!.toTfJson(),
    if (excludedQueryParameters != null)
      'excluded_query_parameters': excludedQueryParameters!.toTfJson(),
    if (includeProtocol != null)
      'include_protocol': includeProtocol!.toTfJson(),
    if (includedCookieNames != null)
      'included_cookie_names': includedCookieNames!.toTfJson(),
    if (includedHeaderNames != null)
      'included_header_names': includedHeaderNames!.toTfJson(),
    if (includedQueryParameters != null)
      'included_query_parameters': includedQueryParameters!.toTfJson(),
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
    if (tokenQueryParameter != null)
      'token_query_parameter': tokenQueryParameter!.toTfJson(),
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

  final TfArg<List<Object?>>? allowHeaders;

  final TfArg<List<Object?>>? allowMethods;

  final TfArg<List<Object?>>? allowOrigins;

  final TfArg<bool>? disabled;

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<String> maxAge;

  Map<String, Object?> encode() => {
    if (allowCredentials != null)
      'allow_credentials': allowCredentials!.toTfJson(),
    if (allowHeaders != null) 'allow_headers': allowHeaders!.toTfJson(),
    if (allowMethods != null) 'allow_methods': allowMethods!.toTfJson(),
    if (allowOrigins != null) 'allow_origins': allowOrigins!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
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
    if (hostRewrite != null) 'host_rewrite': hostRewrite!.toTfJson(),
    if (pathPrefixRewrite != null)
      'path_prefix_rewrite': pathPrefixRewrite!.toTfJson(),
    if (pathTemplateRewrite != null)
      'path_template_rewrite': pathTemplateRewrite!.toTfJson(),
  };
}

/// Typed helper for the `routing.path_matcher.route_rule.route_methods` block of
/// `google_network_services_edge_cache_service` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods {
  const NetworkServicesEdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods({
    this.allowedMethods,
  });

  final TfArg<List<Object?>>? allowedMethods;

  Map<String, Object?> encode() => {
    if (allowedMethods != null) 'allowed_methods': allowedMethods!.toTfJson(),
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
    if (hostRedirect != null) 'host_redirect': hostRedirect!.toTfJson(),
    if (httpsRedirect != null) 'https_redirect': httpsRedirect!.toTfJson(),
    if (pathRedirect != null) 'path_redirect': pathRedirect!.toTfJson(),
    if (prefixRedirect != null) 'prefix_redirect': prefixRedirect!.toTfJson(),
    if (redirectResponseCode != null)
      'redirect_response_code': redirectResponseCode!.toTfJson(),
    if (stripQuery != null) 'strip_query': stripQuery!.toTfJson(),
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'routing': TfArg.literal(routing.encode()),
           if (description != null) 'description': description,
           if (edgeSslCertificates != null)
             'edge_ssl_certificates': edgeSslCertificates,
           if (sslPolicy != null) 'ssl_policy': sslPolicy,
           if (edgeSecurityPolicy != null)
             'edge_security_policy': edgeSecurityPolicy,
           if (requireTls != null) 'require_tls': requireTls,
           if (disableHttp2 != null) 'disable_http2': disableHttp2,
           if (disableQuic != null) 'disable_quic': disableQuic,
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesEdgeCacheServiceSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
