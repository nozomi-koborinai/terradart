// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_listener_rule`.
const Set<String> _awsLbListenerRuleSensitive = <String>{
  'action.authenticate_oidc.client_secret',
};

/// Typed helper for the `action` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleAction {
  const LbListenerRuleAction({
    this.order,
    this.targetGroupArn,
    required this.type,
    this.authenticateCognito,
    this.authenticateOidc,
    this.fixedResponse,
    this.forward,
    this.jwtValidation,
    this.redirect,
  });

  final TfArg<num>? order;

  final TfArg<String>? targetGroupArn;

  final LbListenerRuleActionType type;

  final LbListenerRuleAuthenticateCognito? authenticateCognito;

  final LbListenerRuleAuthenticateOidc? authenticateOidc;

  final LbListenerRuleFixedResponse? fixedResponse;

  final LbListenerRuleForward? forward;

  final LbListenerRuleJwtValidation? jwtValidation;

  final LbListenerRuleRedirect? redirect;

  Map<String, Object?> encode() => {
    'order': ?order?.toTfJson(),
    'target_group_arn': ?targetGroupArn?.toTfJson(),
    'type': type.toTfJson(),
    'authenticate_cognito': ?authenticateCognito?.encode(),
    'authenticate_oidc': ?authenticateOidc?.encode(),
    'fixed_response': ?fixedResponse?.encode(),
    'forward': ?forward?.encode(),
    'jwt_validation': ?jwtValidation?.encode(),
    'redirect': ?redirect?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LbListenerRuleActionType._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleActionType.variable(String name) : this._(TfArg.variable(name));
  LbListenerRuleActionType.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleActionType.arg(TfArg<String> arg) : this._(arg);

  static const forward = LbListenerRuleActionType._(TfArgLiteral('forward'));
  static const authenticateOidc = LbListenerRuleActionType._(
    TfArgLiteral('authenticate-oidc'),
  );
  static const authenticateCognito = LbListenerRuleActionType._(
    TfArgLiteral('authenticate-cognito'),
  );
  static const redirect = LbListenerRuleActionType._(TfArgLiteral('redirect'));
  static const fixedResponse = LbListenerRuleActionType._(
    TfArgLiteral('fixed-response'),
  );
  static const jwtValidation = LbListenerRuleActionType._(
    TfArgLiteral('jwt-validation'),
  );

  static const List<LbListenerRuleActionType> values = [
    forward,
    authenticateOidc,
    authenticateCognito,
    redirect,
    fixedResponse,
    jwtValidation,
  ];
}

/// Typed helper for the `action.authenticate_cognito` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleAuthenticateCognito {
  const LbListenerRuleAuthenticateCognito({
    this.authenticationRequestExtraParams,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.userPoolArn,
    required this.userPoolClientId,
    required this.userPoolDomain,
  });

  final TfArg<Map<String, String>>? authenticationRequestExtraParams;

  final LbListenerRuleOnUnauthenticatedRequest? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> userPoolArn;

  final TfArg<String> userPoolClientId;

  final TfArg<String> userPoolDomain;

  Map<String, Object?> encode() => {
    'authentication_request_extra_params': ?authenticationRequestExtraParams
        ?.toTfJson(),
    'on_unauthenticated_request': ?onUnauthenticatedRequest?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'session_cookie_name': ?sessionCookieName?.toTfJson(),
    'session_timeout': ?sessionTimeout?.toTfJson(),
    'user_pool_arn': userPoolArn.toTfJson(),
    'user_pool_client_id': userPoolClientId.toTfJson(),
    'user_pool_domain': userPoolDomain.toTfJson(),
  };
}

/// `on_unauthenticated_request` — derived from the provider schema description.
extension type const LbListenerRuleOnUnauthenticatedRequest._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleOnUnauthenticatedRequest.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerRuleOnUnauthenticatedRequest.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleOnUnauthenticatedRequest.arg(TfArg<String> arg)
    : this._(arg);

  static const deny = LbListenerRuleOnUnauthenticatedRequest._(
    TfArgLiteral('deny'),
  );
  static const allow = LbListenerRuleOnUnauthenticatedRequest._(
    TfArgLiteral('allow'),
  );
  static const authenticate = LbListenerRuleOnUnauthenticatedRequest._(
    TfArgLiteral('authenticate'),
  );

  static const List<LbListenerRuleOnUnauthenticatedRequest> values = [
    deny,
    allow,
    authenticate,
  ];
}

/// Typed helper for the `action.authenticate_oidc` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleAuthenticateOidc {
  const LbListenerRuleAuthenticateOidc({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  final TfArg<Map<String, String>>? authenticationRequestExtraParams;

  final TfArg<String> authorizationEndpoint;

  final TfArg<String> clientId;

  final Sensitive<String> clientSecret;

  final TfArg<String> issuer;

  final LbListenerRuleOnUnauthenticatedRequest? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> tokenEndpoint;

  final TfArg<String> userInfoEndpoint;

  Map<String, Object?> encode() => {
    'authentication_request_extra_params': ?authenticationRequestExtraParams
        ?.toTfJson(),
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': issuer.toTfJson(),
    'on_unauthenticated_request': ?onUnauthenticatedRequest?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'session_cookie_name': ?sessionCookieName?.toTfJson(),
    'session_timeout': ?sessionTimeout?.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    'user_info_endpoint': userInfoEndpoint.toTfJson(),
  };
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleFixedResponse {
  const LbListenerRuleFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  final LbListenerRuleContentType contentType;

  final TfArg<String>? messageBody;

  final TfArg<String>? statusCode;

  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    'message_body': ?messageBody?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
  };
}

/// `content_type` — derived from the provider schema description.
extension type const LbListenerRuleContentType._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleContentType.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerRuleContentType.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleContentType.arg(TfArg<String> arg) : this._(arg);

  static const textPlain = LbListenerRuleContentType._(
    TfArgLiteral('text/plain'),
  );
  static const textCss = LbListenerRuleContentType._(TfArgLiteral('text/css'));
  static const textHtml = LbListenerRuleContentType._(
    TfArgLiteral('text/html'),
  );
  static const applicationJavascript = LbListenerRuleContentType._(
    TfArgLiteral('application/javascript'),
  );
  static const applicationJson = LbListenerRuleContentType._(
    TfArgLiteral('application/json'),
  );

  static const List<LbListenerRuleContentType> values = [
    textPlain,
    textCss,
    textHtml,
    applicationJavascript,
    applicationJson,
  ];
}

/// Typed helper for the `action.forward` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleForward {
  const LbListenerRuleForward({this.stickiness, required this.targetGroup});

  final LbListenerRuleStickiness? stickiness;

  final List<LbListenerRuleTargetGroup> targetGroup;

  Map<String, Object?> encode() => {
    'stickiness': ?stickiness?.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
  };
}

/// Typed helper for the `action.forward.stickiness` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleStickiness {
  const LbListenerRuleStickiness({required this.duration, this.enabled});

  final TfArg<num> duration;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
  };
}

/// Typed helper for the `action.forward.target_group` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleTargetGroup {
  const LbListenerRuleTargetGroup({required this.arn, this.weight});

  final TfArg<String> arn;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `action.jwt_validation` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleJwtValidation {
  const LbListenerRuleJwtValidation({
    required this.issuer,
    required this.jwksEndpoint,
    this.additionalClaim,
  });

  final TfArg<String> issuer;

  final TfArg<String> jwksEndpoint;

  final List<LbListenerRuleAdditionalClaim>? additionalClaim;

  Map<String, Object?> encode() => {
    'issuer': issuer.toTfJson(),
    'jwks_endpoint': jwksEndpoint.toTfJson(),
    if (additionalClaim != null)
      'additional_claim': [for (final e in additionalClaim!) e.encode()],
  };
}

/// Typed helper for the `action.jwt_validation.additional_claim` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleAdditionalClaim {
  const LbListenerRuleAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  final LbListenerRuleFormat format;

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
extension type const LbListenerRuleFormat._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleFormat.variable(String name) : this._(TfArg.variable(name));
  LbListenerRuleFormat.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleFormat.arg(TfArg<String> arg) : this._(arg);

  static const singleString = LbListenerRuleFormat._(
    TfArgLiteral('single-string'),
  );
  static const stringArray = LbListenerRuleFormat._(
    TfArgLiteral('string-array'),
  );
  static const spaceSeparatedValues = LbListenerRuleFormat._(
    TfArgLiteral('space-separated-values'),
  );

  static const List<LbListenerRuleFormat> values = [
    singleString,
    stringArray,
    spaceSeparatedValues,
  ];
}

/// Typed helper for the `action.redirect` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleRedirect {
  const LbListenerRuleRedirect({
    this.host,
    this.path,
    this.port,
    this.protocol,
    this.query,
    required this.statusCode,
  });

  final TfArg<String>? host;

  final TfArg<String>? path;

  final TfArg<String>? port;

  final LbListenerRuleProtocol? protocol;

  final TfArg<String>? query;

  final LbListenerRuleStatusCode statusCode;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'query': ?query?.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const LbListenerRuleProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleProtocol.variable(String name) : this._(TfArg.variable(name));
  LbListenerRuleProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleProtocol.arg(TfArg<String> arg) : this._(arg);

  static const protocol = LbListenerRuleProtocol._(TfArgLiteral('#{protocol}'));
  static const http = LbListenerRuleProtocol._(TfArgLiteral('HTTP'));
  static const https = LbListenerRuleProtocol._(TfArgLiteral('HTTPS'));

  static const List<LbListenerRuleProtocol> values = [protocol, http, https];
}

/// `status_code` — derived from the provider schema description.
extension type const LbListenerRuleStatusCode._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleStatusCode.variable(String name) : this._(TfArg.variable(name));
  LbListenerRuleStatusCode.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleStatusCode.arg(TfArg<String> arg) : this._(arg);

  static const http301 = LbListenerRuleStatusCode._(TfArgLiteral('HTTP_301'));
  static const http302 = LbListenerRuleStatusCode._(TfArgLiteral('HTTP_302'));

  static const List<LbListenerRuleStatusCode> values = [http301, http302];
}

/// Typed helper for the `condition` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleCondition {
  const LbListenerRuleCondition({
    this.hostHeader,
    this.httpHeader,
    this.httpRequestMethod,
    this.pathPattern,
    this.queryString,
    this.sourceIp,
  });

  final LbListenerRuleHostHeader? hostHeader;

  final LbListenerRuleHttpHeader? httpHeader;

  final LbListenerRuleHttpRequestMethod? httpRequestMethod;

  final LbListenerRulePathPattern? pathPattern;

  final List<LbListenerRuleQueryString>? queryString;

  final LbListenerRuleSourceIp? sourceIp;

  Map<String, Object?> encode() => {
    'host_header': ?hostHeader?.encode(),
    'http_header': ?httpHeader?.encode(),
    'http_request_method': ?httpRequestMethod?.encode(),
    'path_pattern': ?pathPattern?.encode(),
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
    'source_ip': ?sourceIp?.encode(),
  };
}

/// Typed helper for the `condition.host_header` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleHostHeader {
  const LbListenerRuleHostHeader({this.regexValues, this.values});

  final TfArg<List<String>>? regexValues;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'regex_values': ?regexValues?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `condition.http_header` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleHttpHeader {
  const LbListenerRuleHttpHeader({
    required this.httpHeaderName,
    this.regexValues,
    this.values,
  });

  final TfArg<String> httpHeaderName;

  final TfArg<List<String>>? regexValues;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'http_header_name': httpHeaderName.toTfJson(),
    'regex_values': ?regexValues?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `condition.http_request_method` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleHttpRequestMethod {
  const LbListenerRuleHttpRequestMethod({required this.values});

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `condition.path_pattern` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRulePathPattern {
  const LbListenerRulePathPattern({this.regexValues, this.values});

  final TfArg<List<String>>? regexValues;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'regex_values': ?regexValues?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `condition.query_string` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleQueryString {
  const LbListenerRuleQueryString({this.key, required this.value});

  final TfArg<String>? key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `condition.source_ip` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleSourceIp {
  const LbListenerRuleSourceIp({this.ipAddressType, this.values});

  final LbListenerRuleIpAddressType? ipAddressType;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const LbListenerRuleIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerRuleIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = LbListenerRuleIpAddressType._(TfArgLiteral('ipv4'));
  static const ipv6 = LbListenerRuleIpAddressType._(TfArgLiteral('ipv6'));

  static const List<LbListenerRuleIpAddressType> values = [ipv4, ipv6];
}

/// Typed helper for the `transform` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleTransform {
  const LbListenerRuleTransform({
    required this.type,
    this.hostHeaderRewriteConfig,
    this.urlRewriteConfig,
  });

  final LbListenerRuleTransformType type;

  final LbListenerRuleHostHeaderRewriteConfig? hostHeaderRewriteConfig;

  final LbListenerRuleUrlRewriteConfig? urlRewriteConfig;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'host_header_rewrite_config': ?hostHeaderRewriteConfig?.encode(),
    'url_rewrite_config': ?urlRewriteConfig?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LbListenerRuleTransformType._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRuleTransformType.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerRuleTransformType.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRuleTransformType.arg(TfArg<String> arg) : this._(arg);

  static const hostHeaderRewrite = LbListenerRuleTransformType._(
    TfArgLiteral('host-header-rewrite'),
  );
  static const urlRewrite = LbListenerRuleTransformType._(
    TfArgLiteral('url-rewrite'),
  );

  static const List<LbListenerRuleTransformType> values = [
    hostHeaderRewrite,
    urlRewrite,
  ];
}

/// Typed helper for the `transform.host_header_rewrite_config` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleHostHeaderRewriteConfig {
  const LbListenerRuleHostHeaderRewriteConfig({this.rewrite});

  final LbListenerRuleRewrite? rewrite;

  Map<String, Object?> encode() => {'rewrite': ?rewrite?.encode()};
}

/// Typed helper for the `transform.host_header_rewrite_config.rewrite` block of
/// `aws_lb_listener_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LbListenerRuleRewrite {
  const LbListenerRuleRewrite({required this.regex, required this.replace});

  final TfArg<String> regex;

  final TfArg<String> replace;

  Map<String, Object?> encode() => {
    'regex': regex.toTfJson(),
    'replace': replace.toTfJson(),
  };
}

/// Typed helper for the `transform.url_rewrite_config` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleUrlRewriteConfig {
  const LbListenerRuleUrlRewriteConfig({this.rewrite});

  final LbListenerRuleRewrite? rewrite;

  Map<String, Object?> encode() => {'rewrite': ?rewrite?.encode()};
}

/// Factory wrapper for `aws_lb_listener_rule`.
final class AwsLbListenerRule extends Resource {
  static const String tfType = 'aws_lb_listener_rule';

  AwsLbListenerRule(
    super.localName, {
    required TfArg<String> listenerArn,
    TfArg<num>? priority,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<LbListenerRuleAction> action,
    required List<LbListenerRuleCondition> condition,
    List<LbListenerRuleTransform>? transform,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'listener_arn': listenerArn,
           'priority': ?priority,
           'region': ?region,
           'tags': ?tags,
           'action': TfArg.literal([for (final e in action) e.encode()]),
           'condition': TfArg.literal([for (final e in condition) e.encode()]),
           if (transform != null)
             'transform': TfArg.literal([
               for (final e in transform) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbListenerRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbListenerRule>`.
  RefTo<AwsLbListenerRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `listener_arn` attribute.
  TfRef<String> get listenerArn =>
      TfRef.attribute<String>(this, 'listener_arn');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
