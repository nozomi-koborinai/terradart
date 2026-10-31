// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_batch_rule_set`.
const Set<String> _azurermCdnFrontdoorBatchRuleSetSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRule {
  const CdnFrontdoorBatchRuleSetRule({
    this.behaviourOnMatch,
    required this.name,
    required this.order,
    required this.actions,
    this.conditions,
  });

  final CdnFrontdoorBatchRuleSetBehaviourOnMatch? behaviourOnMatch;

  final TfArg<String> name;

  final TfArg<num> order;

  final CdnFrontdoorBatchRuleSetActions actions;

  final CdnFrontdoorBatchRuleSetConditions? conditions;

  @internal
  Map<String, Object?> encode() => {
    'behaviour_on_match': ?behaviourOnMatch?.toTfJson(),
    'name': name.toTfJson(),
    'order': order.toTfJson(),
    'actions': actions.encode(),
    'conditions': ?conditions?.encode(),
  };
}

/// `behaviour_on_match` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetBehaviourOnMatch._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetBehaviourOnMatch.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetBehaviourOnMatch.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetBehaviourOnMatch.arg(TfArg<String> arg)
    : this._(arg);

  static const continueCase = CdnFrontdoorBatchRuleSetBehaviourOnMatch._(
    TfArgLiteral('Continue'),
  );
  static const stop = CdnFrontdoorBatchRuleSetBehaviourOnMatch._(
    TfArgLiteral('Stop'),
  );

  static const List<CdnFrontdoorBatchRuleSetBehaviourOnMatch> values = [
    continueCase,
    stop,
  ];
}

/// Typed helper for the `rule.actions` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetActions {
  const CdnFrontdoorBatchRuleSetActions({
    this.modifyRequestHeader,
    this.modifyResponseHeader,
    this.routeConfigurationOverride,
    this.urlRedirect,
    this.urlRewrite,
  });

  final List<CdnFrontdoorBatchRuleSetModifyRequestHeader>? modifyRequestHeader;

  final List<CdnFrontdoorBatchRuleSetModifyResponseHeader>?
  modifyResponseHeader;

  final CdnFrontdoorBatchRuleSetRouteConfigurationOverride?
  routeConfigurationOverride;

  final CdnFrontdoorBatchRuleSetUrlRedirect? urlRedirect;

  final CdnFrontdoorBatchRuleSetUrlRewrite? urlRewrite;

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

/// Typed helper for the `rule.actions.modify_request_header` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetModifyRequestHeader {
  const CdnFrontdoorBatchRuleSetModifyRequestHeader({
    required this.headerName,
    this.headerValue,
    required this.operator,
  });

  final TfArg<String> headerName;

  final TfArg<String>? headerValue;

  final CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator operator;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
    'operator': operator.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const append = CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator._(
    TfArgLiteral('Append'),
  );
  static const delete = CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator._(
    TfArgLiteral('Delete'),
  );
  static const overwrite =
      CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator._(
        TfArgLiteral('Overwrite'),
      );

  static const List<CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator>
  values = [append, delete, overwrite];
}

/// Typed helper for the `rule.actions.modify_response_header` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetModifyResponseHeader {
  const CdnFrontdoorBatchRuleSetModifyResponseHeader({
    required this.headerName,
    this.headerValue,
    required this.operator,
  });

  final TfArg<String> headerName;

  final TfArg<String>? headerValue;

  final CdnFrontdoorBatchRuleSetModifyRequestHeaderOperator operator;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
    'operator': operator.toTfJson(),
  };
}

/// Typed helper for the `rule.actions.route_configuration_override` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRouteConfigurationOverride {
  const CdnFrontdoorBatchRuleSetRouteConfigurationOverride({
    required this.caching,
    this.originGroup,
  });

  final CdnFrontdoorBatchRuleSetCaching caching;

  final CdnFrontdoorBatchRuleSetOriginGroup? originGroup;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.encode(),
    'origin_group': ?originGroup?.encode(),
  };
}

/// Typed helper for the `rule.actions.route_configuration_override.caching` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetCaching {
  const CdnFrontdoorBatchRuleSetCaching({
    required this.behaviour,
    this.compressionEnabled,
    this.duration,
    this.queryStringBehaviour,
    this.queryStringParameters,
  });

  final CdnFrontdoorBatchRuleSetBehaviour behaviour;

  final TfArg<bool>? compressionEnabled;

  final TfArg<String>? duration;

  final CdnFrontdoorBatchRuleSetQueryStringBehaviour? queryStringBehaviour;

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

/// `behaviour` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetBehaviour._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetBehaviour.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetBehaviour.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetBehaviour.arg(TfArg<String> arg) : this._(arg);

  static const honororigin = CdnFrontdoorBatchRuleSetBehaviour._(
    TfArgLiteral('HonorOrigin'),
  );
  static const overridealways = CdnFrontdoorBatchRuleSetBehaviour._(
    TfArgLiteral('OverrideAlways'),
  );
  static const overrideiforiginmissing = CdnFrontdoorBatchRuleSetBehaviour._(
    TfArgLiteral('OverrideIfOriginMissing'),
  );
  static const disabled = CdnFrontdoorBatchRuleSetBehaviour._(
    TfArgLiteral('Disabled'),
  );

  static const List<CdnFrontdoorBatchRuleSetBehaviour> values = [
    honororigin,
    overridealways,
    overrideiforiginmissing,
    disabled,
  ];
}

/// `query_string_behaviour` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetQueryStringBehaviour._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetQueryStringBehaviour.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetQueryStringBehaviour.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetQueryStringBehaviour.arg(TfArg<String> arg)
    : this._(arg);

  static const ignorequerystring =
      CdnFrontdoorBatchRuleSetQueryStringBehaviour._(
        TfArgLiteral('IgnoreQueryString'),
      );
  static const ignorespecifiedquerystrings =
      CdnFrontdoorBatchRuleSetQueryStringBehaviour._(
        TfArgLiteral('IgnoreSpecifiedQueryStrings'),
      );
  static const includespecifiedquerystrings =
      CdnFrontdoorBatchRuleSetQueryStringBehaviour._(
        TfArgLiteral('IncludeSpecifiedQueryStrings'),
      );
  static const usequerystring = CdnFrontdoorBatchRuleSetQueryStringBehaviour._(
    TfArgLiteral('UseQueryString'),
  );

  static const List<CdnFrontdoorBatchRuleSetQueryStringBehaviour> values = [
    ignorequerystring,
    ignorespecifiedquerystrings,
    includespecifiedquerystrings,
    usequerystring,
  ];
}

/// Typed helper for the `rule.actions.route_configuration_override.origin_group` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetOriginGroup {
  const CdnFrontdoorBatchRuleSetOriginGroup({
    required this.cdnFrontdoorOriginGroupId,
    required this.forwardingProtocol,
  });

  final TfArg<String> cdnFrontdoorOriginGroupId;

  final CdnFrontdoorBatchRuleSetForwardingProtocol forwardingProtocol;

  @internal
  Map<String, Object?> encode() => {
    'cdn_frontdoor_origin_group_id': cdnFrontdoorOriginGroupId.toTfJson(),
    'forwarding_protocol': forwardingProtocol.toTfJson(),
  };
}

/// `forwarding_protocol` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetForwardingProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetForwardingProtocol.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetForwardingProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetForwardingProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const httponly = CdnFrontdoorBatchRuleSetForwardingProtocol._(
    TfArgLiteral('HttpOnly'),
  );
  static const httpsonly = CdnFrontdoorBatchRuleSetForwardingProtocol._(
    TfArgLiteral('HttpsOnly'),
  );
  static const matchrequest = CdnFrontdoorBatchRuleSetForwardingProtocol._(
    TfArgLiteral('MatchRequest'),
  );

  static const List<CdnFrontdoorBatchRuleSetForwardingProtocol> values = [
    httponly,
    httpsonly,
    matchrequest,
  ];
}

/// Typed helper for the `rule.actions.url_redirect` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetUrlRedirect {
  const CdnFrontdoorBatchRuleSetUrlRedirect({
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

  final CdnFrontdoorBatchRuleSetRedirectProtocol? redirectProtocol;

  final CdnFrontdoorBatchRuleSetRedirectType redirectType;

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
extension type const CdnFrontdoorBatchRuleSetRedirectProtocol._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetRedirectProtocol.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetRedirectProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetRedirectProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const http = CdnFrontdoorBatchRuleSetRedirectProtocol._(
    TfArgLiteral('Http'),
  );
  static const https = CdnFrontdoorBatchRuleSetRedirectProtocol._(
    TfArgLiteral('Https'),
  );
  static const matchrequest = CdnFrontdoorBatchRuleSetRedirectProtocol._(
    TfArgLiteral('MatchRequest'),
  );

  static const List<CdnFrontdoorBatchRuleSetRedirectProtocol> values = [
    http,
    https,
    matchrequest,
  ];
}

/// `redirect_type` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetRedirectType._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetRedirectType.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetRedirectType.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetRedirectType.arg(TfArg<String> arg)
    : this._(arg);

  static const found = CdnFrontdoorBatchRuleSetRedirectType._(
    TfArgLiteral('Found'),
  );
  static const moved = CdnFrontdoorBatchRuleSetRedirectType._(
    TfArgLiteral('Moved'),
  );
  static const permanentredirect = CdnFrontdoorBatchRuleSetRedirectType._(
    TfArgLiteral('PermanentRedirect'),
  );
  static const temporaryredirect = CdnFrontdoorBatchRuleSetRedirectType._(
    TfArgLiteral('TemporaryRedirect'),
  );

  static const List<CdnFrontdoorBatchRuleSetRedirectType> values = [
    found,
    moved,
    permanentredirect,
    temporaryredirect,
  ];
}

/// Typed helper for the `rule.actions.url_rewrite` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetUrlRewrite {
  const CdnFrontdoorBatchRuleSetUrlRewrite({
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

/// Typed helper for the `rule.conditions` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetConditions {
  const CdnFrontdoorBatchRuleSetConditions({
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

  final List<CdnFrontdoorBatchRuleSetClientPort>? clientPort;

  final List<CdnFrontdoorBatchRuleSetDeviceType>? deviceType;

  final List<CdnFrontdoorBatchRuleSetHostName>? hostName;

  final List<CdnFrontdoorBatchRuleSetHttpVersion>? httpVersion;

  final List<CdnFrontdoorBatchRuleSetPostArgument>? postArgument;

  final List<CdnFrontdoorBatchRuleSetQueryString>? queryString;

  final List<CdnFrontdoorBatchRuleSetRemoteAddress>? remoteAddress;

  final List<CdnFrontdoorBatchRuleSetRequestBody>? requestBody;

  final List<CdnFrontdoorBatchRuleSetRequestCookies>? requestCookies;

  final List<CdnFrontdoorBatchRuleSetRequestFileExtension>?
  requestFileExtension;

  final List<CdnFrontdoorBatchRuleSetRequestFilename>? requestFilename;

  final List<CdnFrontdoorBatchRuleSetRequestHeader>? requestHeader;

  final List<CdnFrontdoorBatchRuleSetRequestMethod>? requestMethod;

  final List<CdnFrontdoorBatchRuleSetRequestPath>? requestPath;

  final List<CdnFrontdoorBatchRuleSetRequestScheme>? requestScheme;

  final List<CdnFrontdoorBatchRuleSetRequestUrl>? requestUrl;

  final List<CdnFrontdoorBatchRuleSetServerPort>? serverPort;

  final List<CdnFrontdoorBatchRuleSetSocketAddress>? socketAddress;

  final List<CdnFrontdoorBatchRuleSetSslProtocol>? sslProtocol;

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

/// Typed helper for the `rule.conditions.client_port` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetClientPort {
  const CdnFrontdoorBatchRuleSetClientPort({
    required this.operator,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetClientPortOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetClientPortOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetClientPortOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetClientPortOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const any = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('Any'),
  );
  static const notany = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotAny'),
  );
  static const beginswith = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('BeginsWith'),
  );
  static const notbeginswith = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotBeginsWith'),
  );
  static const contains = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('Contains'),
  );
  static const notcontains = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotContains'),
  );
  static const endswith = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const notendswith = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotEndsWith'),
  );
  static const equal = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('Equal'),
  );
  static const notequal = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotEqual'),
  );
  static const greaterthan = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const notgreaterthan = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotGreaterThan'),
  );
  static const greaterthanorequal =
      CdnFrontdoorBatchRuleSetClientPortOperator._(
        TfArgLiteral('GreaterThanOrEqual'),
      );
  static const notgreaterthanorequal =
      CdnFrontdoorBatchRuleSetClientPortOperator._(
        TfArgLiteral('NotGreaterThanOrEqual'),
      );
  static const lessthan = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('LessThan'),
  );
  static const notlessthan = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotLessThan'),
  );
  static const lessthanorequal = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );
  static const notlessthanorequal =
      CdnFrontdoorBatchRuleSetClientPortOperator._(
        TfArgLiteral('NotLessThanOrEqual'),
      );
  static const regex = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('RegEx'),
  );
  static const notregex = CdnFrontdoorBatchRuleSetClientPortOperator._(
    TfArgLiteral('NotRegEx'),
  );

  static const List<CdnFrontdoorBatchRuleSetClientPortOperator> values = [
    any,
    notany,
    beginswith,
    notbeginswith,
    contains,
    notcontains,
    endswith,
    notendswith,
    equal,
    notequal,
    greaterthan,
    notgreaterthan,
    greaterthanorequal,
    notgreaterthanorequal,
    lessthan,
    notlessthan,
    lessthanorequal,
    notlessthanorequal,
    regex,
    notregex,
  ];
}

/// Typed helper for the `rule.conditions.device_type` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetDeviceType {
  const CdnFrontdoorBatchRuleSetDeviceType({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetDeviceTypeOperator operator;

  final List<CdnFrontdoorBatchRuleSetDeviceTypeValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetDeviceTypeOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetDeviceTypeOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetDeviceTypeOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetDeviceTypeOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equal = CdnFrontdoorBatchRuleSetDeviceTypeOperator._(
    TfArgLiteral('Equal'),
  );
  static const notequal = CdnFrontdoorBatchRuleSetDeviceTypeOperator._(
    TfArgLiteral('NotEqual'),
  );

  static const List<CdnFrontdoorBatchRuleSetDeviceTypeOperator> values = [
    equal,
    notequal,
  ];
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetDeviceTypeValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetDeviceTypeValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetDeviceTypeValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetDeviceTypeValues.arg(TfArg<String> arg)
    : this._(arg);

  static const desktop = CdnFrontdoorBatchRuleSetDeviceTypeValues._(
    TfArgLiteral('Desktop'),
  );
  static const mobile = CdnFrontdoorBatchRuleSetDeviceTypeValues._(
    TfArgLiteral('Mobile'),
  );

  static const List<CdnFrontdoorBatchRuleSetDeviceTypeValues> values = [
    desktop,
    mobile,
  ];
}

/// Typed helper for the `rule.conditions.host_name` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetHostName {
  const CdnFrontdoorBatchRuleSetHostName({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

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
extension type const CdnFrontdoorBatchRuleSetTransforms._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetTransforms.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetTransforms.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetTransforms.arg(TfArg<String> arg) : this._(arg);

  static const lowercase = CdnFrontdoorBatchRuleSetTransforms._(
    TfArgLiteral('Lowercase'),
  );
  static const removenulls = CdnFrontdoorBatchRuleSetTransforms._(
    TfArgLiteral('RemoveNulls'),
  );
  static const trim = CdnFrontdoorBatchRuleSetTransforms._(
    TfArgLiteral('Trim'),
  );
  static const urldecode = CdnFrontdoorBatchRuleSetTransforms._(
    TfArgLiteral('UrlDecode'),
  );
  static const urlencode = CdnFrontdoorBatchRuleSetTransforms._(
    TfArgLiteral('UrlEncode'),
  );
  static const uppercase = CdnFrontdoorBatchRuleSetTransforms._(
    TfArgLiteral('Uppercase'),
  );

  static const List<CdnFrontdoorBatchRuleSetTransforms> values = [
    lowercase,
    removenulls,
    trim,
    urldecode,
    urlencode,
    uppercase,
  ];
}

/// Typed helper for the `rule.conditions.http_version` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetHttpVersion {
  const CdnFrontdoorBatchRuleSetHttpVersion({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetDeviceTypeOperator operator;

  final List<CdnFrontdoorBatchRuleSetHttpVersionValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetHttpVersionValues._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetHttpVersionValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetHttpVersionValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetHttpVersionValues.arg(TfArg<String> arg)
    : this._(arg);

  static const v2p0 = CdnFrontdoorBatchRuleSetHttpVersionValues._(
    TfArgLiteral('2.0'),
  );
  static const v1p1 = CdnFrontdoorBatchRuleSetHttpVersionValues._(
    TfArgLiteral('1.1'),
  );
  static const v1p0 = CdnFrontdoorBatchRuleSetHttpVersionValues._(
    TfArgLiteral('1.0'),
  );
  static const v0p9 = CdnFrontdoorBatchRuleSetHttpVersionValues._(
    TfArgLiteral('0.9'),
  );

  static const List<CdnFrontdoorBatchRuleSetHttpVersionValues> values = [
    v2p0,
    v1p1,
    v1p0,
    v0p9,
  ];
}

/// Typed helper for the `rule.conditions.post_argument` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetPostArgument {
  const CdnFrontdoorBatchRuleSetPostArgument({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> name;

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

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

/// Typed helper for the `rule.conditions.query_string` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetQueryString {
  const CdnFrontdoorBatchRuleSetQueryString({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.conditions.remote_address` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRemoteAddress {
  const CdnFrontdoorBatchRuleSetRemoteAddress({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetRemoteAddressOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetRemoteAddressOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetRemoteAddressOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetRemoteAddressOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetRemoteAddressOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const geomatch = CdnFrontdoorBatchRuleSetRemoteAddressOperator._(
    TfArgLiteral('GeoMatch'),
  );
  static const notgeomatch = CdnFrontdoorBatchRuleSetRemoteAddressOperator._(
    TfArgLiteral('NotGeoMatch'),
  );
  static const ipmatch = CdnFrontdoorBatchRuleSetRemoteAddressOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const notipmatch = CdnFrontdoorBatchRuleSetRemoteAddressOperator._(
    TfArgLiteral('NotIPMatch'),
  );

  static const List<CdnFrontdoorBatchRuleSetRemoteAddressOperator> values = [
    geomatch,
    notgeomatch,
    ipmatch,
    notipmatch,
  ];
}

/// Typed helper for the `rule.conditions.request_body` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestBody {
  const CdnFrontdoorBatchRuleSetRequestBody({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.conditions.request_cookies` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestCookies {
  const CdnFrontdoorBatchRuleSetRequestCookies({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> name;

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

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

/// Typed helper for the `rule.conditions.request_file_extension` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestFileExtension {
  const CdnFrontdoorBatchRuleSetRequestFileExtension({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.conditions.request_filename` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestFilename {
  const CdnFrontdoorBatchRuleSetRequestFilename({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.conditions.request_header` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestHeader {
  const CdnFrontdoorBatchRuleSetRequestHeader({
    required this.name,
    required this.operator,
    this.transforms,
    this.values,
  });

  final TfArg<String> name;

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

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

/// Typed helper for the `rule.conditions.request_method` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestMethod {
  const CdnFrontdoorBatchRuleSetRequestMethod({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetDeviceTypeOperator operator;

  final List<CdnFrontdoorBatchRuleSetRequestMethodValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetRequestMethodValues._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetRequestMethodValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetRequestMethodValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetRequestMethodValues.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('DELETE'),
  );
  static const get = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('GET'),
  );
  static const head = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('HEAD'),
  );
  static const options = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('OPTIONS'),
  );
  static const post = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('POST'),
  );
  static const put = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('PUT'),
  );
  static const trace = CdnFrontdoorBatchRuleSetRequestMethodValues._(
    TfArgLiteral('TRACE'),
  );

  static const List<CdnFrontdoorBatchRuleSetRequestMethodValues> values = [
    delete,
    get,
    head,
    options,
    post,
    put,
    trace,
  ];
}

/// Typed helper for the `rule.conditions.request_path` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestPath {
  const CdnFrontdoorBatchRuleSetRequestPath({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetRequestPathOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetRequestPathOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetRequestPathOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetRequestPathOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetRequestPathOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const any = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('Any'),
  );
  static const notany = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotAny'),
  );
  static const beginswith = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('BeginsWith'),
  );
  static const notbeginswith = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotBeginsWith'),
  );
  static const contains = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('Contains'),
  );
  static const notcontains = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotContains'),
  );
  static const endswith = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const notendswith = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotEndsWith'),
  );
  static const equal = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('Equal'),
  );
  static const notequal = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotEqual'),
  );
  static const greaterthan = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const notgreaterthan = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotGreaterThan'),
  );
  static const greaterthanorequal =
      CdnFrontdoorBatchRuleSetRequestPathOperator._(
        TfArgLiteral('GreaterThanOrEqual'),
      );
  static const notgreaterthanorequal =
      CdnFrontdoorBatchRuleSetRequestPathOperator._(
        TfArgLiteral('NotGreaterThanOrEqual'),
      );
  static const lessthan = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('LessThan'),
  );
  static const notlessthan = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotLessThan'),
  );
  static const lessthanorequal = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );
  static const notlessthanorequal =
      CdnFrontdoorBatchRuleSetRequestPathOperator._(
        TfArgLiteral('NotLessThanOrEqual'),
      );
  static const regex = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('RegEx'),
  );
  static const notregex = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotRegEx'),
  );
  static const wildcard = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('Wildcard'),
  );
  static const notwildcard = CdnFrontdoorBatchRuleSetRequestPathOperator._(
    TfArgLiteral('NotWildcard'),
  );

  static const List<CdnFrontdoorBatchRuleSetRequestPathOperator> values = [
    any,
    notany,
    beginswith,
    notbeginswith,
    contains,
    notcontains,
    endswith,
    notendswith,
    equal,
    notequal,
    greaterthan,
    notgreaterthan,
    greaterthanorequal,
    notgreaterthanorequal,
    lessthan,
    notlessthan,
    lessthanorequal,
    notlessthanorequal,
    regex,
    notregex,
    wildcard,
    notwildcard,
  ];
}

/// Typed helper for the `rule.conditions.request_scheme` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestScheme {
  const CdnFrontdoorBatchRuleSetRequestScheme({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetDeviceTypeOperator operator;

  final List<CdnFrontdoorBatchRuleSetRequestSchemeValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetRequestSchemeValues._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetRequestSchemeValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetRequestSchemeValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetRequestSchemeValues.arg(TfArg<String> arg)
    : this._(arg);

  static const http = CdnFrontdoorBatchRuleSetRequestSchemeValues._(
    TfArgLiteral('HTTP'),
  );
  static const https = CdnFrontdoorBatchRuleSetRequestSchemeValues._(
    TfArgLiteral('HTTPS'),
  );

  static const List<CdnFrontdoorBatchRuleSetRequestSchemeValues> values = [
    http,
    https,
  ];
}

/// Typed helper for the `rule.conditions.request_url` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetRequestUrl {
  const CdnFrontdoorBatchRuleSetRequestUrl({
    required this.operator,
    this.transforms,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetTransforms>? transforms;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.conditions.server_port` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetServerPort {
  const CdnFrontdoorBatchRuleSetServerPort({
    required this.operator,
    this.values,
  });

  final CdnFrontdoorBatchRuleSetClientPortOperator operator;

  final List<CdnFrontdoorBatchRuleSetServerPortValues>? values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (values != null) 'values': [for (final e in values!) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetServerPortValues._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorBatchRuleSetServerPortValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetServerPortValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetServerPortValues.arg(TfArg<String> arg)
    : this._(arg);

  static const v80 = CdnFrontdoorBatchRuleSetServerPortValues._(
    TfArgLiteral('80'),
  );
  static const v443 = CdnFrontdoorBatchRuleSetServerPortValues._(
    TfArgLiteral('443'),
  );

  static const List<CdnFrontdoorBatchRuleSetServerPortValues> values = [
    v80,
    v443,
  ];
}

/// Typed helper for the `rule.conditions.socket_address` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetSocketAddress {
  const CdnFrontdoorBatchRuleSetSocketAddress({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetSocketAddressOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetSocketAddressOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetSocketAddressOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetSocketAddressOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetSocketAddressOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const ipmatch = CdnFrontdoorBatchRuleSetSocketAddressOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const notipmatch = CdnFrontdoorBatchRuleSetSocketAddressOperator._(
    TfArgLiteral('NotIPMatch'),
  );

  static const List<CdnFrontdoorBatchRuleSetSocketAddressOperator> values = [
    ipmatch,
    notipmatch,
  ];
}

/// Typed helper for the `rule.conditions.ssl_protocol` block of
/// `azurerm_cdn_frontdoor_batch_rule_set` (derived from provider schema).
@immutable
final class CdnFrontdoorBatchRuleSetSslProtocol {
  const CdnFrontdoorBatchRuleSetSslProtocol({
    required this.operator,
    required this.values,
  });

  final CdnFrontdoorBatchRuleSetDeviceTypeOperator operator;

  final List<CdnFrontdoorBatchRuleSetSslProtocolValues> values;

  @internal
  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `values` — derived from the provider schema description.
extension type const CdnFrontdoorBatchRuleSetSslProtocolValues._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorBatchRuleSetSslProtocolValues.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorBatchRuleSetSslProtocolValues.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorBatchRuleSetSslProtocolValues.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsv1 = CdnFrontdoorBatchRuleSetSslProtocolValues._(
    TfArgLiteral('TLSv1'),
  );
  static const tlsv1p1 = CdnFrontdoorBatchRuleSetSslProtocolValues._(
    TfArgLiteral('TLSv1.1'),
  );
  static const tlsv1p2 = CdnFrontdoorBatchRuleSetSslProtocolValues._(
    TfArgLiteral('TLSv1.2'),
  );

  static const List<CdnFrontdoorBatchRuleSetSslProtocolValues> values = [
    tlsv1,
    tlsv1p1,
    tlsv1p2,
  ];
}

/// Factory wrapper for `azurerm_cdn_frontdoor_batch_rule_set`.
final class AzurermCdnFrontdoorBatchRuleSet extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_batch_rule_set';

  AzurermCdnFrontdoorBatchRuleSet(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    required TfArg<String> name,
    required List<CdnFrontdoorBatchRuleSetRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'name': name,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorBatchRuleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorBatchRuleSet>`.
  RefTo<AzurermCdnFrontdoorBatchRuleSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');
}
