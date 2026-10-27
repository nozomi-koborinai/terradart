// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_route`.
const Set<String> _azurermCdnFrontdoorRouteSensitive = <String>{};

/// Typed helper for the `cache` block of
/// `azurerm_cdn_frontdoor_route` (derived from provider schema).
@immutable
final class CdnFrontdoorRouteCache {
  const CdnFrontdoorRouteCache({
    this.compressionEnabled,
    this.contentTypesToCompress,
    this.queryStringCachingBehavior,
    this.queryStrings,
  });

  final TfArg<bool>? compressionEnabled;

  final TfArg<List<String>>? contentTypesToCompress;

  final TfArg<String>? queryStringCachingBehavior;

  final TfArg<List<String>>? queryStrings;

  @internal
  Map<String, Object?> encode() => {
    'compression_enabled': ?compressionEnabled?.toTfJson(),
    'content_types_to_compress': ?contentTypesToCompress?.toTfJson(),
    'query_string_caching_behavior': ?queryStringCachingBehavior?.toTfJson(),
    'query_strings': ?queryStrings?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cdn_frontdoor_route`.
final class AzurermCdnFrontdoorRoute extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_route';

  AzurermCdnFrontdoorRoute(
    super.localName, {
    TfArg<List<String>>? cdnFrontdoorCustomDomainIds,
    required TfArg<String> cdnFrontdoorEndpointId,
    required TfArg<String> cdnFrontdoorOriginGroupId,
    TfArg<List<String>>? cdnFrontdoorOriginIds,
    TfArg<String>? cdnFrontdoorOriginPath,
    TfArg<List<String>>? cdnFrontdoorRuleSetIds,
    TfArg<bool>? enabled,
    TfArg<String>? forwardingProtocol,
    TfArg<bool>? httpsRedirectEnabled,
    TfArg<bool>? linkToDefaultDomain,
    required TfArg<String> name,
    required TfArg<List<String>> patternsToMatch,
    required TfArg<List<String>> supportedProtocols,
    CdnFrontdoorRouteCache? cache,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_custom_domain_ids': ?cdnFrontdoorCustomDomainIds,
           'cdn_frontdoor_endpoint_id': cdnFrontdoorEndpointId,
           'cdn_frontdoor_origin_group_id': cdnFrontdoorOriginGroupId,
           'cdn_frontdoor_origin_ids': ?cdnFrontdoorOriginIds,
           'cdn_frontdoor_origin_path': ?cdnFrontdoorOriginPath,
           'cdn_frontdoor_rule_set_ids': ?cdnFrontdoorRuleSetIds,
           'enabled': ?enabled,
           'forwarding_protocol': ?forwardingProtocol,
           'https_redirect_enabled': ?httpsRedirectEnabled,
           'link_to_default_domain': ?linkToDefaultDomain,
           'name': name,
           'patterns_to_match': patternsToMatch,
           'supported_protocols': supportedProtocols,
           if (cache != null) 'cache': TfArg.literal(cache.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorRoute>`.
  RefTo<AzurermCdnFrontdoorRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_custom_domain_ids` attribute.
  TfRef<List<String>> get cdnFrontdoorCustomDomainIds =>
      TfRef.attribute<List<String>>(this, 'cdn_frontdoor_custom_domain_ids');

  /// Reference to `cdn_frontdoor_endpoint_id` attribute.
  TfRef<String> get cdnFrontdoorEndpointId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_endpoint_id');

  /// Reference to `cdn_frontdoor_origin_group_id` attribute.
  TfRef<String> get cdnFrontdoorOriginGroupId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_origin_group_id');

  /// Reference to `cdn_frontdoor_origin_ids` attribute.
  TfRef<List<String>> get cdnFrontdoorOriginIds =>
      TfRef.attribute<List<String>>(this, 'cdn_frontdoor_origin_ids');

  /// Reference to `cdn_frontdoor_origin_path` attribute.
  TfRef<String> get cdnFrontdoorOriginPath =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_origin_path');

  /// Reference to `cdn_frontdoor_rule_set_ids` attribute.
  TfRef<List<String>> get cdnFrontdoorRuleSetIds =>
      TfRef.attribute<List<String>>(this, 'cdn_frontdoor_rule_set_ids');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `forwarding_protocol` attribute.
  TfRef<String> get forwardingProtocol =>
      TfRef.attribute<String>(this, 'forwarding_protocol');

  /// Reference to `https_redirect_enabled` attribute.
  TfRef<bool> get httpsRedirectEnabled =>
      TfRef.attribute<bool>(this, 'https_redirect_enabled');

  /// Reference to `link_to_default_domain` attribute.
  TfRef<bool> get linkToDefaultDomain =>
      TfRef.attribute<bool>(this, 'link_to_default_domain');

  /// Reference to `patterns_to_match` attribute.
  TfRef<List<String>> get patternsToMatch =>
      TfRef.attribute<List<String>>(this, 'patterns_to_match');

  /// Reference to `supported_protocols` attribute.
  TfRef<List<String>> get supportedProtocols =>
      TfRef.attribute<List<String>>(this, 'supported_protocols');
}
