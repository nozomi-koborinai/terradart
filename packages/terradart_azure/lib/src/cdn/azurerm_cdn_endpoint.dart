// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_endpoint`.
const Set<String> _azurermCdnEndpointSensitive = <String>{};

/// Typed helper for the `delivery_rule` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointDeliveryRule {
  const CdnEndpointDeliveryRule({
    required this.name,
    required this.order,
    this.cacheExpirationAction,
    this.cacheKeyQueryStringAction,
    this.cookiesCondition,
    this.deviceCondition,
    this.httpVersionCondition,
    this.modifyRequestHeaderAction,
    this.modifyResponseHeaderAction,
    this.postArgCondition,
    this.queryStringCondition,
    this.remoteAddressCondition,
    this.requestBodyCondition,
    this.requestHeaderCondition,
    this.requestMethodCondition,
    this.requestSchemeCondition,
    this.requestUriCondition,
    this.urlFileExtensionCondition,
    this.urlFileNameCondition,
    this.urlPathCondition,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  final TfArg<String> name;

  final TfArg<num> order;

  final CdnEndpointCacheExpirationAction? cacheExpirationAction;

  final CdnEndpointCacheKeyQueryStringAction? cacheKeyQueryStringAction;

  final List<CdnEndpointCookiesCondition>? cookiesCondition;

  final CdnEndpointDeviceCondition? deviceCondition;

  final List<CdnEndpointHttpVersionCondition>? httpVersionCondition;

  final List<CdnEndpointModifyRequestHeaderAction>? modifyRequestHeaderAction;

  final List<CdnEndpointModifyResponseHeaderAction>? modifyResponseHeaderAction;

  final List<CdnEndpointPostArgCondition>? postArgCondition;

  final List<CdnEndpointQueryStringCondition>? queryStringCondition;

  final List<CdnEndpointRemoteAddressCondition>? remoteAddressCondition;

  final List<CdnEndpointRequestBodyCondition>? requestBodyCondition;

  final List<CdnEndpointRequestHeaderCondition>? requestHeaderCondition;

  final CdnEndpointRequestMethodCondition? requestMethodCondition;

  final CdnEndpointRequestSchemeCondition? requestSchemeCondition;

  final List<CdnEndpointRequestUriCondition>? requestUriCondition;

  final List<CdnEndpointUrlFileExtensionCondition>? urlFileExtensionCondition;

  final List<CdnEndpointUrlFileNameCondition>? urlFileNameCondition;

  final List<CdnEndpointUrlPathCondition>? urlPathCondition;

  final CdnEndpointUrlRedirectAction? urlRedirectAction;

  final CdnEndpointUrlRewriteAction? urlRewriteAction;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'order': order.toTfJson(),
    'cache_expiration_action': ?cacheExpirationAction?.encode(),
    'cache_key_query_string_action': ?cacheKeyQueryStringAction?.encode(),
    if (cookiesCondition != null)
      'cookies_condition': [for (final e in cookiesCondition!) e.encode()],
    'device_condition': ?deviceCondition?.encode(),
    if (httpVersionCondition != null)
      'http_version_condition': [
        for (final e in httpVersionCondition!) e.encode(),
      ],
    if (modifyRequestHeaderAction != null)
      'modify_request_header_action': [
        for (final e in modifyRequestHeaderAction!) e.encode(),
      ],
    if (modifyResponseHeaderAction != null)
      'modify_response_header_action': [
        for (final e in modifyResponseHeaderAction!) e.encode(),
      ],
    if (postArgCondition != null)
      'post_arg_condition': [for (final e in postArgCondition!) e.encode()],
    if (queryStringCondition != null)
      'query_string_condition': [
        for (final e in queryStringCondition!) e.encode(),
      ],
    if (remoteAddressCondition != null)
      'remote_address_condition': [
        for (final e in remoteAddressCondition!) e.encode(),
      ],
    if (requestBodyCondition != null)
      'request_body_condition': [
        for (final e in requestBodyCondition!) e.encode(),
      ],
    if (requestHeaderCondition != null)
      'request_header_condition': [
        for (final e in requestHeaderCondition!) e.encode(),
      ],
    'request_method_condition': ?requestMethodCondition?.encode(),
    'request_scheme_condition': ?requestSchemeCondition?.encode(),
    if (requestUriCondition != null)
      'request_uri_condition': [
        for (final e in requestUriCondition!) e.encode(),
      ],
    if (urlFileExtensionCondition != null)
      'url_file_extension_condition': [
        for (final e in urlFileExtensionCondition!) e.encode(),
      ],
    if (urlFileNameCondition != null)
      'url_file_name_condition': [
        for (final e in urlFileNameCondition!) e.encode(),
      ],
    if (urlPathCondition != null)
      'url_path_condition': [for (final e in urlPathCondition!) e.encode()],
    'url_redirect_action': ?urlRedirectAction?.encode(),
    'url_rewrite_action': ?urlRewriteAction?.encode(),
  };
}

/// Typed helper for the `delivery_rule.cache_expiration_action` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnEndpointCacheExpirationAction {
  const CdnEndpointCacheExpirationAction({
    required this.behavior,
    this.duration,
  });

  final TfArg<String> behavior;

  final TfArg<String>? duration;

  @internal
  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'duration': ?duration?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.cache_key_query_string_action` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnEndpointCacheKeyQueryStringAction {
  const CdnEndpointCacheKeyQueryStringAction({
    required this.behavior,
    this.parameters,
  });

  final TfArg<String> behavior;

  final TfArg<String>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.cookies_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointCookiesCondition {
  const CdnEndpointCookiesCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.selector,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<String> selector;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': selector.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.device_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointDeviceCondition {
  const CdnEndpointDeviceCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  final TfArg<List<String>> matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String>? operator;

  @internal
  Map<String, Object?> encode() => {
    'match_values': matchValues.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': ?operator?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.http_version_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointHttpVersionCondition {
  const CdnEndpointHttpVersionCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  final TfArg<List<String>> matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String>? operator;

  @internal
  Map<String, Object?> encode() => {
    'match_values': matchValues.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': ?operator?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.modify_request_header_action` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnEndpointModifyRequestHeaderAction {
  const CdnEndpointModifyRequestHeaderAction({
    required this.action,
    required this.name,
    this.value,
  });

  final TfArg<String> action;

  final TfArg<String> name;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.modify_response_header_action` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnEndpointModifyResponseHeaderAction {
  const CdnEndpointModifyResponseHeaderAction({
    required this.action,
    required this.name,
    this.value,
  });

  final TfArg<String> action;

  final TfArg<String> name;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.post_arg_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointPostArgCondition {
  const CdnEndpointPostArgCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.selector,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<String> selector;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': selector.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.query_string_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointQueryStringCondition {
  const CdnEndpointQueryStringCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.remote_address_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointRemoteAddressCondition {
  const CdnEndpointRemoteAddressCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.request_body_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointRequestBodyCondition {
  const CdnEndpointRequestBodyCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.request_header_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointRequestHeaderCondition {
  const CdnEndpointRequestHeaderCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.selector,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<String> selector;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': selector.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.request_method_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointRequestMethodCondition {
  const CdnEndpointRequestMethodCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  final TfArg<List<String>> matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String>? operator;

  @internal
  Map<String, Object?> encode() => {
    'match_values': matchValues.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': ?operator?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.request_scheme_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointRequestSchemeCondition {
  const CdnEndpointRequestSchemeCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  final TfArg<List<String>> matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String>? operator;

  @internal
  Map<String, Object?> encode() => {
    'match_values': matchValues.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': ?operator?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.request_uri_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointRequestUriCondition {
  const CdnEndpointRequestUriCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.url_file_extension_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointUrlFileExtensionCondition {
  const CdnEndpointUrlFileExtensionCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.url_file_name_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointUrlFileNameCondition {
  const CdnEndpointUrlFileNameCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.url_path_condition` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointUrlPathCondition {
  const CdnEndpointUrlPathCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.url_redirect_action` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnEndpointUrlRedirectAction {
  const CdnEndpointUrlRedirectAction({
    this.fragment,
    this.hostname,
    this.path,
    this.protocol,
    this.queryString,
    required this.redirectType,
  });

  final TfArg<String>? fragment;

  final TfArg<String>? hostname;

  final TfArg<String>? path;

  final TfArg<String>? protocol;

  final TfArg<String>? queryString;

  final TfArg<String> redirectType;

  @internal
  Map<String, Object?> encode() => {
    'fragment': ?fragment?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'path': ?path?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'query_string': ?queryString?.toTfJson(),
    'redirect_type': redirectType.toTfJson(),
  };
}

/// Typed helper for the `delivery_rule.url_rewrite_action` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnEndpointUrlRewriteAction {
  const CdnEndpointUrlRewriteAction({
    required this.destination,
    this.preserveUnmatchedPath,
    required this.sourcePattern,
  });

  final TfArg<String> destination;

  final TfArg<bool>? preserveUnmatchedPath;

  final TfArg<String> sourcePattern;

  @internal
  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'preserve_unmatched_path': ?preserveUnmatchedPath?.toTfJson(),
    'source_pattern': sourcePattern.toTfJson(),
  };
}

/// Typed helper for the `geo_filter` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointGeoFilter {
  const CdnEndpointGeoFilter({
    required this.action,
    required this.countryCodes,
    required this.relativePath,
  });

  final CdnEndpointAction action;

  final TfArg<List<String>> countryCodes;

  final TfArg<String> relativePath;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'country_codes': countryCodes.toTfJson(),
    'relative_path': relativePath.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const CdnEndpointAction._(TfArg<String> _)
    implements TfArg<String> {
  CdnEndpointAction.variable(String name) : this._(TfArg.variable(name));
  CdnEndpointAction.expression(String template)
    : this._(TfArg.expression(template));
  const CdnEndpointAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = CdnEndpointAction._(TfArgLiteral('Allow'));
  static const block = CdnEndpointAction._(TfArgLiteral('Block'));

  static const List<CdnEndpointAction> values = [allow, block];
}

/// Typed helper for the `global_delivery_rule` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointGlobalDeliveryRule {
  const CdnEndpointGlobalDeliveryRule({
    this.cacheExpirationAction,
    this.cacheKeyQueryStringAction,
    this.modifyRequestHeaderAction,
    this.modifyResponseHeaderAction,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  final CdnEndpointCacheExpirationAction? cacheExpirationAction;

  final CdnEndpointCacheKeyQueryStringAction? cacheKeyQueryStringAction;

  final List<CdnEndpointModifyRequestHeaderAction>? modifyRequestHeaderAction;

  final List<CdnEndpointModifyResponseHeaderAction>? modifyResponseHeaderAction;

  final CdnEndpointUrlRedirectAction? urlRedirectAction;

  final CdnEndpointUrlRewriteAction? urlRewriteAction;

  @internal
  Map<String, Object?> encode() => {
    'cache_expiration_action': ?cacheExpirationAction?.encode(),
    'cache_key_query_string_action': ?cacheKeyQueryStringAction?.encode(),
    if (modifyRequestHeaderAction != null)
      'modify_request_header_action': [
        for (final e in modifyRequestHeaderAction!) e.encode(),
      ],
    if (modifyResponseHeaderAction != null)
      'modify_response_header_action': [
        for (final e in modifyResponseHeaderAction!) e.encode(),
      ],
    'url_redirect_action': ?urlRedirectAction?.encode(),
    'url_rewrite_action': ?urlRewriteAction?.encode(),
  };
}

/// Typed helper for the `origin` block of
/// `azurerm_cdn_endpoint` (derived from provider schema).
@immutable
final class CdnEndpointOrigin {
  const CdnEndpointOrigin({
    required this.hostName,
    this.httpPort,
    this.httpsPort,
    required this.name,
  });

  final TfArg<String> hostName;

  final TfArg<num>? httpPort;

  final TfArg<num>? httpsPort;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'host_name': hostName.toTfJson(),
    'http_port': ?httpPort?.toTfJson(),
    'https_port': ?httpsPort?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cdn_endpoint`.
final class AzurermCdnEndpoint extends Resource {
  static const String tfType = 'azurerm_cdn_endpoint';

  AzurermCdnEndpoint(
    super.localName, {
    TfArg<List<String>>? contentTypesToCompress,
    TfArg<bool>? isCompressionEnabled,
    TfArg<bool>? isHttpAllowed,
    TfArg<bool>? isHttpsAllowed,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? optimizationType,
    TfArg<String>? originHostHeader,
    TfArg<String>? originPath,
    TfArg<String>? probePath,
    required TfArg<String> profileName,
    TfArg<String>? querystringCachingBehaviour,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<CdnEndpointDeliveryRule>? deliveryRule,
    List<CdnEndpointGeoFilter>? geoFilter,
    CdnEndpointGlobalDeliveryRule? globalDeliveryRule,
    required List<CdnEndpointOrigin> origin,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_types_to_compress': ?contentTypesToCompress,
           'is_compression_enabled': ?isCompressionEnabled,
           'is_http_allowed': ?isHttpAllowed,
           'is_https_allowed': ?isHttpsAllowed,
           'location': location,
           'name': name,
           'optimization_type': ?optimizationType,
           'origin_host_header': ?originHostHeader,
           'origin_path': ?originPath,
           'probe_path': ?probePath,
           'profile_name': profileName,
           'querystring_caching_behaviour': ?querystringCachingBehaviour,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (deliveryRule != null)
             'delivery_rule': TfArg.literal([
               for (final e in deliveryRule) e.encode(),
             ]),
           if (geoFilter != null)
             'geo_filter': TfArg.literal([
               for (final e in geoFilter) e.encode(),
             ]),
           if (globalDeliveryRule != null)
             'global_delivery_rule': TfArg.literal(globalDeliveryRule.encode()),
           'origin': TfArg.literal([for (final e in origin) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnEndpoint>`.
  RefTo<AzurermCdnEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `content_types_to_compress` attribute.
  TfRef<List<String>> get contentTypesToCompress =>
      TfRef.attribute<List<String>>(this, 'content_types_to_compress');

  /// Reference to `is_compression_enabled` attribute.
  TfRef<bool> get isCompressionEnabled =>
      TfRef.attribute<bool>(this, 'is_compression_enabled');

  /// Reference to `is_http_allowed` attribute.
  TfRef<bool> get isHttpAllowed =>
      TfRef.attribute<bool>(this, 'is_http_allowed');

  /// Reference to `is_https_allowed` attribute.
  TfRef<bool> get isHttpsAllowed =>
      TfRef.attribute<bool>(this, 'is_https_allowed');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `optimization_type` attribute.
  TfRef<String> get optimizationType =>
      TfRef.attribute<String>(this, 'optimization_type');

  /// Reference to `origin_host_header` attribute.
  TfRef<String> get originHostHeader =>
      TfRef.attribute<String>(this, 'origin_host_header');

  /// Reference to `origin_path` attribute.
  TfRef<String> get originPath => TfRef.attribute<String>(this, 'origin_path');

  /// Reference to `probe_path` attribute.
  TfRef<String> get probePath => TfRef.attribute<String>(this, 'probe_path');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

  /// Reference to `querystring_caching_behaviour` attribute.
  TfRef<String> get querystringCachingBehaviour =>
      TfRef.attribute<String>(this, 'querystring_caching_behaviour');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
