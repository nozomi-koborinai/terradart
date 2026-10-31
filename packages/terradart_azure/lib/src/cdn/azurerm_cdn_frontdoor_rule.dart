// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_rule`.
const Set<String> _azurermCdnFrontdoorRuleSensitive = <String>{};

/// Cdn Frontdoor Rule Behaviour On enum for `behaviour_on_match`.
extension type const CdnFrontdoorRuleBehaviourOnMatch._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleBehaviourOnMatch.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleBehaviourOnMatch.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleBehaviourOnMatch.arg(TfArg<String> arg) : this._(arg);

  static const continueCase = CdnFrontdoorRuleBehaviourOnMatch._(
    TfArgLiteral('Continue'),
  );
  static const stop = CdnFrontdoorRuleBehaviourOnMatch._(TfArgLiteral('Stop'));

  static const List<CdnFrontdoorRuleBehaviourOnMatch> values = [
    continueCase,
    stop,
  ];
}

/// Typed helper for the `actions` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleActions {
  const CdnFrontdoorRuleActions({
    this.modifyRequestHeader,
    this.modifyResponseHeader,
    this.routeConfigurationOverride,
    this.urlRedirect,
    this.urlRewrite,
  });

  final List<CdnFrontdoorRuleModifyRequestHeader>? modifyRequestHeader;

  final List<CdnFrontdoorRuleModifyResponseHeader>? modifyResponseHeader;

  final CdnFrontdoorRuleRouteConfigurationOverride? routeConfigurationOverride;

  final CdnFrontdoorRuleUrlRedirect? urlRedirect;

  final CdnFrontdoorRuleUrlRewrite? urlRewrite;

  @internal
  Map<String, Object?> encode() => {
    if (modifyRequestHeader != null)
      'modify_request_header': [
        for (final e in modifyRequestHeader!) e.encode(),
      ],
    if (modifyResponseHeader != null)
      'modify_response_header': [
        for (final e in modifyResponseHeader!) e.encode(),
      ],
    'route_configuration_override': ?routeConfigurationOverride?.encode(),
    'url_redirect': ?urlRedirect?.encode(),
    'url_rewrite': ?urlRewrite?.encode(),
  };
}

/// Typed helper for the `actions.modify_request_header` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleModifyRequestHeader {
  const CdnFrontdoorRuleModifyRequestHeader({
    required this.headerName,
    this.headerValue,
    required this.operator,
  });

  final TfArg<String> headerName;

  final TfArg<String>? headerValue;

  final CdnFrontdoorRuleOperator operator;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
    'operator': operator.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorRuleOperator._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleOperator.variable(String name) : this._(TfArg.variable(name));
  CdnFrontdoorRuleOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleOperator.arg(TfArg<String> arg) : this._(arg);

  static const append = CdnFrontdoorRuleOperator._(TfArgLiteral('Append'));
  static const delete = CdnFrontdoorRuleOperator._(TfArgLiteral('Delete'));
  static const overwrite = CdnFrontdoorRuleOperator._(
    TfArgLiteral('Overwrite'),
  );

  static const List<CdnFrontdoorRuleOperator> values = [
    append,
    delete,
    overwrite,
  ];
}

/// Typed helper for the `actions.modify_response_header` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleModifyResponseHeader {
  const CdnFrontdoorRuleModifyResponseHeader({
    required this.headerName,
    this.headerValue,
    required this.operator,
  });

  final TfArg<String> headerName;

  final TfArg<String>? headerValue;

  final CdnFrontdoorRuleOperator operator;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
    'operator': operator.toTfJson(),
  };
}

/// Typed helper for the `actions.route_configuration_override` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRouteConfigurationOverride {
  const CdnFrontdoorRuleRouteConfigurationOverride({
    required this.caching,
    this.originGroup,
  });

  final CdnFrontdoorRuleCaching caching;

  final CdnFrontdoorRuleOriginGroup? originGroup;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.encode(),
    'origin_group': ?originGroup?.encode(),
  };
}

/// Typed helper for the `actions.route_configuration_override.caching` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleCaching {
  const CdnFrontdoorRuleCaching({
    required this.behaviour,
    this.compressionEnabled,
    this.duration,
    this.queryStringBehaviour,
    this.queryStringParameters,
  });

  final TfArg<String> behaviour;

  final TfArg<bool>? compressionEnabled;

  final TfArg<String>? duration;

  final CdnFrontdoorRuleQueryStringBehaviour? queryStringBehaviour;

  final TfArg<List<String>>? queryStringParameters;

  @internal
  Map<String, Object?> encode() => {
    'behaviour': behaviour.toTfJson(),
    'compression_enabled': ?compressionEnabled?.toTfJson(),
    'duration': ?duration?.toTfJson(),
    'query_string_behaviour': ?queryStringBehaviour?.toTfJson(),
    'query_string_parameters': ?queryStringParameters?.toTfJson(),
  };
}

/// `query_string_behaviour` — derived from the provider schema description.
extension type const CdnFrontdoorRuleQueryStringBehaviour._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleQueryStringBehaviour.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleQueryStringBehaviour.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleQueryStringBehaviour.arg(TfArg<String> arg)
    : this._(arg);

  static const ignorequerystring = CdnFrontdoorRuleQueryStringBehaviour._(
    TfArgLiteral('IgnoreQueryString'),
  );
  static const ignorespecifiedquerystrings =
      CdnFrontdoorRuleQueryStringBehaviour._(
        TfArgLiteral('IgnoreSpecifiedQueryStrings'),
      );
  static const includespecifiedquerystrings =
      CdnFrontdoorRuleQueryStringBehaviour._(
        TfArgLiteral('IncludeSpecifiedQueryStrings'),
      );
  static const usequerystring = CdnFrontdoorRuleQueryStringBehaviour._(
    TfArgLiteral('UseQueryString'),
  );

  static const List<CdnFrontdoorRuleQueryStringBehaviour> values = [
    ignorequerystring,
    ignorespecifiedquerystrings,
    includespecifiedquerystrings,
    usequerystring,
  ];
}

/// Typed helper for the `actions.route_configuration_override.origin_group` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleOriginGroup {
  const CdnFrontdoorRuleOriginGroup({
    required this.cdnFrontdoorOriginGroupId,
    required this.forwardingProtocol,
  });

  final TfArg<String> cdnFrontdoorOriginGroupId;

  final CdnFrontdoorRuleForwardingProtocol forwardingProtocol;

  @internal
  Map<String, Object?> encode() => {
    'cdn_frontdoor_origin_group_id': cdnFrontdoorOriginGroupId.toTfJson(),
    'forwarding_protocol': forwardingProtocol.toTfJson(),
  };
}

/// `forwarding_protocol` — derived from the provider schema description.
extension type const CdnFrontdoorRuleForwardingProtocol._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleForwardingProtocol.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleForwardingProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleForwardingProtocol.arg(TfArg<String> arg) : this._(arg);

  static const httponly = CdnFrontdoorRuleForwardingProtocol._(
    TfArgLiteral('HttpOnly'),
  );
  static const httpsonly = CdnFrontdoorRuleForwardingProtocol._(
    TfArgLiteral('HttpsOnly'),
  );
  static const matchrequest = CdnFrontdoorRuleForwardingProtocol._(
    TfArgLiteral('MatchRequest'),
  );

  static const List<CdnFrontdoorRuleForwardingProtocol> values = [
    httponly,
    httpsonly,
    matchrequest,
  ];
}

/// Typed helper for the `actions.url_redirect` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleUrlRedirect {
  const CdnFrontdoorRuleUrlRedirect({
    this.destinationFragment,
    this.destinationHostName,
    this.destinationPath,
    this.queryString,
    this.redirectProtocol,
    required this.redirectType,
  });

  final TfArg<String>? destinationFragment;

  final TfArg<String>? destinationHostName;

  final TfArg<String>? destinationPath;

  final TfArg<String>? queryString;

  final CdnFrontdoorRuleRedirectProtocol? redirectProtocol;

  final CdnFrontdoorRuleRedirectType redirectType;

  @internal
  Map<String, Object?> encode() => {
    'destination_fragment': ?destinationFragment?.toTfJson(),
    'destination_host_name': ?destinationHostName?.toTfJson(),
    'destination_path': ?destinationPath?.toTfJson(),
    'query_string': ?queryString?.toTfJson(),
    'redirect_protocol': ?redirectProtocol?.toTfJson(),
    'redirect_type': redirectType.toTfJson(),
  };
}

/// `redirect_protocol` — derived from the provider schema description.
extension type const CdnFrontdoorRuleRedirectProtocol._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleRedirectProtocol.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleRedirectProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleRedirectProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = CdnFrontdoorRuleRedirectProtocol._(TfArgLiteral('Http'));
  static const https = CdnFrontdoorRuleRedirectProtocol._(
    TfArgLiteral('Https'),
  );
  static const matchrequest = CdnFrontdoorRuleRedirectProtocol._(
    TfArgLiteral('MatchRequest'),
  );

  static const List<CdnFrontdoorRuleRedirectProtocol> values = [
    http,
    https,
    matchrequest,
  ];
}

/// `redirect_type` — derived from the provider schema description.
extension type const CdnFrontdoorRuleRedirectType._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleRedirectType.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleRedirectType.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleRedirectType.arg(TfArg<String> arg) : this._(arg);

  static const found = CdnFrontdoorRuleRedirectType._(TfArgLiteral('Found'));
  static const moved = CdnFrontdoorRuleRedirectType._(TfArgLiteral('Moved'));
  static const permanentredirect = CdnFrontdoorRuleRedirectType._(
    TfArgLiteral('PermanentRedirect'),
  );
  static const temporaryredirect = CdnFrontdoorRuleRedirectType._(
    TfArgLiteral('TemporaryRedirect'),
  );

  static const List<CdnFrontdoorRuleRedirectType> values = [
    found,
    moved,
    permanentredirect,
    temporaryredirect,
  ];
}

/// Typed helper for the `actions.url_rewrite` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleUrlRewrite {
  const CdnFrontdoorRuleUrlRewrite({
    required this.destinationPath,
    this.preserveUnmatchedPathEnabled,
    required this.sourcePattern,
  });

  final TfArg<String> destinationPath;

  final TfArg<bool>? preserveUnmatchedPathEnabled;

  final TfArg<String> sourcePattern;

  @internal
  Map<String, Object?> encode() => {
    'destination_path': destinationPath.toTfJson(),
    'preserve_unmatched_path_enabled': ?preserveUnmatchedPathEnabled
        ?.toTfJson(),
    'source_pattern': sourcePattern.toTfJson(),
  };
}

/// Typed helper for the `conditions` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleConditions {
  const CdnFrontdoorRuleConditions({
    this.clientPort,
    this.deviceType,
    this.hostName,
    this.httpVersion,
    this.postArgument,
    this.queryString,
    this.remoteAddress,
    this.requestBody,
    this.requestCookies,
    this.requestFileExtension,
    this.requestFilename,
    this.requestHeader,
    this.requestMethod,
    this.requestPath,
    this.requestScheme,
    this.requestUrl,
    this.serverPort,
    this.socketAddress,
    this.sslProtocol,
  });

  final List<CdnFrontdoorRuleClientPort>? clientPort;

  final List<CdnFrontdoorRuleDeviceType>? deviceType;

  final List<CdnFrontdoorRuleHostName>? hostName;

  final List<CdnFrontdoorRuleHttpVersion>? httpVersion;

  final List<CdnFrontdoorRulePostArgument>? postArgument;

  final List<CdnFrontdoorRuleQueryString>? queryString;

  final List<CdnFrontdoorRuleRemoteAddress>? remoteAddress;

  final List<CdnFrontdoorRuleRequestBody>? requestBody;

  final List<CdnFrontdoorRuleRequestCookies>? requestCookies;

  final List<CdnFrontdoorRuleRequestFileExtension>? requestFileExtension;

  final List<CdnFrontdoorRuleRequestFilename>? requestFilename;

  final List<CdnFrontdoorRuleRequestHeader>? requestHeader;

  final List<CdnFrontdoorRuleRequestMethod>? requestMethod;

  final List<CdnFrontdoorRuleRequestPath>? requestPath;

  final List<CdnFrontdoorRuleRequestScheme>? requestScheme;

  final List<CdnFrontdoorRuleRequestUrl>? requestUrl;

  final List<CdnFrontdoorRuleServerPort>? serverPort;

  final List<CdnFrontdoorRuleSocketAddress>? socketAddress;

  final List<CdnFrontdoorRuleSslProtocol>? sslProtocol;

  @internal
  Map<String, Object?> encode() => {
    if (clientPort != null)
      'client_port': [for (final e in clientPort!) e.encode()],
    if (deviceType != null)
      'device_type': [for (final e in deviceType!) e.encode()],
    if (hostName != null) 'host_name': [for (final e in hostName!) e.encode()],
    if (httpVersion != null)
      'http_version': [for (final e in httpVersion!) e.encode()],
    if (postArgument != null)
      'post_argument': [for (final e in postArgument!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
    if (remoteAddress != null)
      'remote_address': [for (final e in remoteAddress!) e.encode()],
    if (requestBody != null)
      'request_body': [for (final e in requestBody!) e.encode()],
    if (requestCookies != null)
      'request_cookies': [for (final e in requestCookies!) e.encode()],
    if (requestFileExtension != null)
      'request_file_extension': [
        for (final e in requestFileExtension!) e.encode(),
      ],
    if (requestFilename != null)
      'request_filename': [for (final e in requestFilename!) e.encode()],
    if (requestHeader != null)
      'request_header': [for (final e in requestHeader!) e.encode()],
    if (requestMethod != null)
      'request_method': [for (final e in requestMethod!) e.encode()],
    if (requestPath != null)
      'request_path': [for (final e in requestPath!) e.encode()],
    if (requestScheme != null)
      'request_scheme': [for (final e in requestScheme!) e.encode()],
    if (requestUrl != null)
      'request_url': [for (final e in requestUrl!) e.encode()],
    if (serverPort != null)
      'server_port': [for (final e in serverPort!) e.encode()],
    if (socketAddress != null)
      'socket_address': [for (final e in socketAddress!) e.encode()],
    if (sslProtocol != null)
      'ssl_protocol': [for (final e in sslProtocol!) e.encode()],
  };
}

/// Typed helper for the `conditions.client_port` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleClientPort {
  const CdnFrontdoorRuleClientPort({required this.operator, this.values});

  final TfArg<String> operator;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.device_type` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleDeviceType {
  const CdnFrontdoorRuleDeviceType({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleDeviceTypeValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorRuleDeviceTypeValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleDeviceTypeValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleDeviceTypeValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleDeviceTypeValues.arg(TfArg<String> arg) : this._(arg);

  static const desktop = CdnFrontdoorRuleDeviceTypeValues._(
    TfArgLiteral('Desktop'),
  );
  static const mobile = CdnFrontdoorRuleDeviceTypeValues._(
    TfArgLiteral('Mobile'),
  );

  static const List<CdnFrontdoorRuleDeviceTypeValues> values = [
    desktop,
    mobile,
  ];
}

/// Typed helper for the `conditions.host_name` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleHostName {
  const CdnFrontdoorRuleHostName({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `transforms` — derived from the provider schema description.
extension type const CdnFrontdoorRuleTransforms._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleTransforms.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleTransforms.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleTransforms.arg(TfArg<String> arg) : this._(arg);

  static const lowercase = CdnFrontdoorRuleTransforms._(
    TfArgLiteral('Lowercase'),
  );
  static const removenulls = CdnFrontdoorRuleTransforms._(
    TfArgLiteral('RemoveNulls'),
  );
  static const trim = CdnFrontdoorRuleTransforms._(TfArgLiteral('Trim'));
  static const urldecode = CdnFrontdoorRuleTransforms._(
    TfArgLiteral('UrlDecode'),
  );
  static const urlencode = CdnFrontdoorRuleTransforms._(
    TfArgLiteral('UrlEncode'),
  );
  static const uppercase = CdnFrontdoorRuleTransforms._(
    TfArgLiteral('Uppercase'),
  );

  static const List<CdnFrontdoorRuleTransforms> values = [
    lowercase,
    removenulls,
    trim,
    urldecode,
    urlencode,
    uppercase,
  ];
}

/// Typed helper for the `conditions.http_version` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleHttpVersion {
  const CdnFrontdoorRuleHttpVersion({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleHttpVersionValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorRuleHttpVersionValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleHttpVersionValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleHttpVersionValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleHttpVersionValues.arg(TfArg<String> arg) : this._(arg);

  static const v2p0 = CdnFrontdoorRuleHttpVersionValues._(TfArgLiteral('2.0'));
  static const v1p1 = CdnFrontdoorRuleHttpVersionValues._(TfArgLiteral('1.1'));
  static const v1p0 = CdnFrontdoorRuleHttpVersionValues._(TfArgLiteral('1.0'));
  static const v0p9 = CdnFrontdoorRuleHttpVersionValues._(TfArgLiteral('0.9'));

  static const List<CdnFrontdoorRuleHttpVersionValues> values = [
    v2p0,
    v1p1,
    v1p0,
    v0p9,
  ];
}

/// Typed helper for the `conditions.post_argument` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRulePostArgument {
  const CdnFrontdoorRulePostArgument({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> name;

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.query_string` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleQueryString {
  const CdnFrontdoorRuleQueryString({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.remote_address` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRemoteAddress {
  const CdnFrontdoorRuleRemoteAddress({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_body` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestBody {
  const CdnFrontdoorRuleRequestBody({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_cookies` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestCookies {
  const CdnFrontdoorRuleRequestCookies({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> name;

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_file_extension` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestFileExtension {
  const CdnFrontdoorRuleRequestFileExtension({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_filename` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestFilename {
  const CdnFrontdoorRuleRequestFilename({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_header` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestHeader {
  const CdnFrontdoorRuleRequestHeader({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> name;

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_method` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestMethod {
  const CdnFrontdoorRuleRequestMethod({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleRequestMethodValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorRuleRequestMethodValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleRequestMethodValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleRequestMethodValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleRequestMethodValues.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = CdnFrontdoorRuleRequestMethodValues._(
    TfArgLiteral('DELETE'),
  );
  static const get = CdnFrontdoorRuleRequestMethodValues._(TfArgLiteral('GET'));
  static const head = CdnFrontdoorRuleRequestMethodValues._(
    TfArgLiteral('HEAD'),
  );
  static const options = CdnFrontdoorRuleRequestMethodValues._(
    TfArgLiteral('OPTIONS'),
  );
  static const post = CdnFrontdoorRuleRequestMethodValues._(
    TfArgLiteral('POST'),
  );
  static const put = CdnFrontdoorRuleRequestMethodValues._(TfArgLiteral('PUT'));
  static const trace = CdnFrontdoorRuleRequestMethodValues._(
    TfArgLiteral('TRACE'),
  );

  static const List<CdnFrontdoorRuleRequestMethodValues> values = [
    delete,
    get,
    head,
    options,
    post,
    put,
    trace,
  ];
}

/// Typed helper for the `conditions.request_path` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestPath {
  const CdnFrontdoorRuleRequestPath({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.request_scheme` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestScheme {
  const CdnFrontdoorRuleRequestScheme({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleRequestSchemeValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorRuleRequestSchemeValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleRequestSchemeValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleRequestSchemeValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleRequestSchemeValues.arg(TfArg<String> arg)
    : this._(arg);

  static const http = CdnFrontdoorRuleRequestSchemeValues._(
    TfArgLiteral('HTTP'),
  );
  static const https = CdnFrontdoorRuleRequestSchemeValues._(
    TfArgLiteral('HTTPS'),
  );

  static const List<CdnFrontdoorRuleRequestSchemeValues> values = [http, https];
}

/// Typed helper for the `conditions.request_url` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleRequestUrl {
  const CdnFrontdoorRuleRequestUrl({
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `conditions.server_port` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleServerPort {
  const CdnFrontdoorRuleServerPort({required this.operator, this.values});

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleServerPortValues>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (values != null) 'values': [for (final e in values!) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorRuleServerPortValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleServerPortValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleServerPortValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleServerPortValues.arg(TfArg<String> arg) : this._(arg);

  static const v80 = CdnFrontdoorRuleServerPortValues._(TfArgLiteral('80'));
  static const v443 = CdnFrontdoorRuleServerPortValues._(TfArgLiteral('443'));

  static const List<CdnFrontdoorRuleServerPortValues> values = [v80, v443];
}

/// Typed helper for the `conditions.socket_address` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleSocketAddress {
  const CdnFrontdoorRuleSocketAddress({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `conditions.ssl_protocol` block of
/// `azurerm_cdn_frontdoor_rule` (derived from provider schema).
@immutable
final class CdnFrontdoorRuleSslProtocol {
  const CdnFrontdoorRuleSslProtocol({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final List<CdnFrontdoorRuleSslProtocolValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorRuleSslProtocolValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorRuleSslProtocolValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorRuleSslProtocolValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorRuleSslProtocolValues.arg(TfArg<String> arg) : this._(arg);

  static const tlsv1 = CdnFrontdoorRuleSslProtocolValues._(
    TfArgLiteral('TLSv1'),
  );
  static const tlsv1p1 = CdnFrontdoorRuleSslProtocolValues._(
    TfArgLiteral('TLSv1.1'),
  );
  static const tlsv1p2 = CdnFrontdoorRuleSslProtocolValues._(
    TfArgLiteral('TLSv1.2'),
  );

  static const List<CdnFrontdoorRuleSslProtocolValues> values = [
    tlsv1,
    tlsv1p1,
    tlsv1p2,
  ];
}

/// Factory wrapper for `azurerm_cdn_frontdoor_rule`.
final class AzurermCdnFrontdoorRule extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_rule';

  AzurermCdnFrontdoorRule(
    super.localName, {
    CdnFrontdoorRuleBehaviourOnMatch? behaviourOnMatch,
    required TfArg<String> cdnFrontdoorRuleSetId,
    required TfArg<String> name,
    required TfArg<num> order,
    required CdnFrontdoorRuleActions actions,
    CdnFrontdoorRuleConditions? conditions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'behaviour_on_match': ?behaviourOnMatch,
           'cdn_frontdoor_rule_set_id': cdnFrontdoorRuleSetId,
           'name': name,
           'order': order,
           'actions': TfArg.literal(actions.encode()),
           if (conditions != null)
             'conditions': TfArg.literal(conditions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorRule>`.
  RefTo<AzurermCdnFrontdoorRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_rule_set_name` attribute.
  TfRef<String> get cdnFrontdoorRuleSetName =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_rule_set_name');

  /// Reference to `behaviour_on_match` attribute.
  TfRef<String> get behaviourOnMatch =>
      TfRef.attribute<String>(this, 'behaviour_on_match');

  /// Reference to `cdn_frontdoor_rule_set_id` attribute.
  TfRef<String> get cdnFrontdoorRuleSetId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_rule_set_id');

  /// Reference to `order` attribute.
  TfRef<num> get order => TfRef.attribute<num>(this, 'order');
}
