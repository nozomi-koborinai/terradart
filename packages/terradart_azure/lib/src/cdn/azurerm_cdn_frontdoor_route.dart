// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_route`.
const Set<String> _azurermCdnFrontdoorRouteSensitive = <String>{};

/// Cdn Frontdoor Route Forwarding enum for `forwarding_protocol`.
extension type const CdnFrontdoorRouteForwardingProtocol._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRouteForwardingProtocol.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRouteForwardingProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRouteForwardingProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const httponly = CdnFrontdoorRouteForwardingProtocol._(
    TfArgLiteral('HttpOnly'),
  );
  static const httpsonly = CdnFrontdoorRouteForwardingProtocol._(
    TfArgLiteral('HttpsOnly'),
  );
  static const matchrequest = CdnFrontdoorRouteForwardingProtocol._(
    TfArgLiteral('MatchRequest'),
  );

  static const List<CdnFrontdoorRouteForwardingProtocol> values = [
    httponly,
    httpsonly,
    matchrequest,
  ];
}

/// Cdn Frontdoor Route Supported enum for `supported_protocols`.
extension type const CdnFrontdoorRouteSupportedProtocols._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRouteSupportedProtocols.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRouteSupportedProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRouteSupportedProtocols.arg(TfArg<String> arg)
    : this._(arg);

  static const http = CdnFrontdoorRouteSupportedProtocols._(
    TfArgLiteral('Http'),
  );
  static const https = CdnFrontdoorRouteSupportedProtocols._(
    TfArgLiteral('Https'),
  );

  static const List<CdnFrontdoorRouteSupportedProtocols> values = [http, https];
}

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

  final List<CdnFrontdoorRouteContentTypesToCompress>? contentTypesToCompress;

  final CdnFrontdoorRouteQueryStringCachingBehavior? queryStringCachingBehavior;

  final TfArg<List<String>>? queryStrings;

  @internal
  Map<String, Object?> encode() => {
    'compression_enabled': ?compressionEnabled?.toTfJson(),
    if (contentTypesToCompress != null)
      'content_types_to_compress': [
        for (final e in contentTypesToCompress!) e.toTfJson(),
      ],
    'query_string_caching_behavior': ?queryStringCachingBehavior?.toTfJson(),
    'query_strings': ?queryStrings?.toTfJson(),
  };
}

/// `content_types_to_compress` — derived from the provider schema description.
extension type const CdnFrontdoorRouteContentTypesToCompress._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRouteContentTypesToCompress.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRouteContentTypesToCompress.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRouteContentTypesToCompress.arg(TfArg<String> arg)
    : this._(arg);

  static const applicationEot = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/eot'),
  );
  static const applicationFont = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/font'),
  );
  static const applicationFontSfnt = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/font-sfnt'),
  );
  static const applicationJavascript =
      CdnFrontdoorRouteContentTypesToCompress._(
        TfArgLiteral('application/javascript'),
      );
  static const applicationJson = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/json'),
  );
  static const applicationOpentype = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/opentype'),
  );
  static const applicationOtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/otf'),
  );
  static const applicationPkcs7Mime = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/pkcs7-mime'),
  );
  static const applicationTruetype = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/truetype'),
  );
  static const applicationTtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/ttf'),
  );
  static const applicationVndMsFontobject =
      CdnFrontdoorRouteContentTypesToCompress._(
        TfArgLiteral('application/vnd.ms-fontobject'),
      );
  static const applicationXhtmlXml = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/xhtml+xml'),
  );
  static const applicationXml = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/xml'),
  );
  static const applicationXmlRss = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/xml+rss'),
  );
  static const applicationXFontOpentype =
      CdnFrontdoorRouteContentTypesToCompress._(
        TfArgLiteral('application/x-font-opentype'),
      );
  static const applicationXFontTruetype =
      CdnFrontdoorRouteContentTypesToCompress._(
        TfArgLiteral('application/x-font-truetype'),
      );
  static const applicationXFontTtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-font-ttf'),
  );
  static const applicationXHttpdCgi = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-httpd-cgi'),
  );
  static const applicationXMpegurl = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-mpegurl'),
  );
  static const applicationXOpentype = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-opentype'),
  );
  static const applicationXOtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-otf'),
  );
  static const applicationXPerl = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-perl'),
  );
  static const applicationXTtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('application/x-ttf'),
  );
  static const applicationXJavascript =
      CdnFrontdoorRouteContentTypesToCompress._(
        TfArgLiteral('application/x-javascript'),
      );
  static const fontEot = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('font/eot'),
  );
  static const fontTtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('font/ttf'),
  );
  static const fontOtf = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('font/otf'),
  );
  static const fontOpentype = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('font/opentype'),
  );
  static const imageSvgXml = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('image/svg+xml'),
  );
  static const textCss = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/css'),
  );
  static const textCsv = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/csv'),
  );
  static const textHtml = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/html'),
  );
  static const textJavascript = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/javascript'),
  );
  static const textJs = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/js'),
  );
  static const textPlain = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/plain'),
  );
  static const textRichtext = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/richtext'),
  );
  static const textTabSeparatedValues =
      CdnFrontdoorRouteContentTypesToCompress._(
        TfArgLiteral('text/tab-separated-values'),
      );
  static const textXml = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/xml'),
  );
  static const textXScript = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/x-script'),
  );
  static const textXComponent = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/x-component'),
  );
  static const textXJavaSource = CdnFrontdoorRouteContentTypesToCompress._(
    TfArgLiteral('text/x-java-source'),
  );

  static const List<CdnFrontdoorRouteContentTypesToCompress> values = [
    applicationEot,
    applicationFont,
    applicationFontSfnt,
    applicationJavascript,
    applicationJson,
    applicationOpentype,
    applicationOtf,
    applicationPkcs7Mime,
    applicationTruetype,
    applicationTtf,
    applicationVndMsFontobject,
    applicationXhtmlXml,
    applicationXml,
    applicationXmlRss,
    applicationXFontOpentype,
    applicationXFontTruetype,
    applicationXFontTtf,
    applicationXHttpdCgi,
    applicationXMpegurl,
    applicationXOpentype,
    applicationXOtf,
    applicationXPerl,
    applicationXTtf,
    applicationXJavascript,
    fontEot,
    fontTtf,
    fontOtf,
    fontOpentype,
    imageSvgXml,
    textCss,
    textCsv,
    textHtml,
    textJavascript,
    textJs,
    textPlain,
    textRichtext,
    textTabSeparatedValues,
    textXml,
    textXScript,
    textXComponent,
    textXJavaSource,
  ];
}

/// `query_string_caching_behavior` — derived from the provider schema description.
extension type const CdnFrontdoorRouteQueryStringCachingBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorRouteQueryStringCachingBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRouteQueryStringCachingBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRouteQueryStringCachingBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const ignorequerystring =
      CdnFrontdoorRouteQueryStringCachingBehavior._(
        TfArgLiteral('IgnoreQueryString'),
      );
  static const ignorespecifiedquerystrings =
      CdnFrontdoorRouteQueryStringCachingBehavior._(
        TfArgLiteral('IgnoreSpecifiedQueryStrings'),
      );
  static const includespecifiedquerystrings =
      CdnFrontdoorRouteQueryStringCachingBehavior._(
        TfArgLiteral('IncludeSpecifiedQueryStrings'),
      );
  static const usequerystring = CdnFrontdoorRouteQueryStringCachingBehavior._(
    TfArgLiteral('UseQueryString'),
  );

  static const List<CdnFrontdoorRouteQueryStringCachingBehavior> values = [
    ignorequerystring,
    ignorespecifiedquerystrings,
    includespecifiedquerystrings,
    usequerystring,
  ];
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
    CdnFrontdoorRouteForwardingProtocol? forwardingProtocol,
    TfArg<bool>? httpsRedirectEnabled,
    TfArg<bool>? linkToDefaultDomain,
    required TfArg<String> name,
    required TfArg<List<String>> patternsToMatch,
    required List<CdnFrontdoorRouteSupportedProtocols> supportedProtocols,
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
           'supported_protocols': TfArg.literal([
             for (final e in supportedProtocols) e.toTfJson(),
           ]),
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
