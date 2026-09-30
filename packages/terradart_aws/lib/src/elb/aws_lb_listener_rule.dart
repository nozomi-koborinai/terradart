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

  final TfArg<LbListenerRuleActionType> type;

  final LbListenerRuleActionAuthenticateCognito? authenticateCognito;

  final LbListenerRuleActionAuthenticateOidc? authenticateOidc;

  final LbListenerRuleActionFixedResponse? fixedResponse;

  final LbListenerRuleActionForward? forward;

  final LbListenerRuleActionJwtValidation? jwtValidation;

  final LbListenerRuleActionRedirect? redirect;

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
enum LbListenerRuleActionType implements TerraformEnum {
  forward('forward'),
  authenticateOidc('authenticate-oidc'),
  authenticateCognito('authenticate-cognito'),
  redirect('redirect'),
  fixedResponse('fixed-response'),
  jwtValidation('jwt-validation');

  const LbListenerRuleActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `action.authenticate_cognito` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleActionAuthenticateCognito {
  const LbListenerRuleActionAuthenticateCognito({
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

  final TfArg<LbListenerRuleActionAuthenticateCognitoOnUnauthenticatedRequest>?
  onUnauthenticatedRequest;

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
enum LbListenerRuleActionAuthenticateCognitoOnUnauthenticatedRequest
    implements TerraformEnum {
  deny('deny'),
  allow('allow'),
  authenticate('authenticate');

  const LbListenerRuleActionAuthenticateCognitoOnUnauthenticatedRequest(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `action.authenticate_oidc` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleActionAuthenticateOidc {
  const LbListenerRuleActionAuthenticateOidc({
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

  final TfArg<String> clientSecret;

  final TfArg<String> issuer;

  final TfArg<LbListenerRuleActionAuthenticateOidcOnUnauthenticatedRequest>?
  onUnauthenticatedRequest;

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

/// `on_unauthenticated_request` — derived from the provider schema description.
enum LbListenerRuleActionAuthenticateOidcOnUnauthenticatedRequest
    implements TerraformEnum {
  deny('deny'),
  allow('allow'),
  authenticate('authenticate');

  const LbListenerRuleActionAuthenticateOidcOnUnauthenticatedRequest(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleActionFixedResponse {
  const LbListenerRuleActionFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  final TfArg<LbListenerRuleActionFixedResponseContentType> contentType;

  final TfArg<String>? messageBody;

  final TfArg<String>? statusCode;

  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    'message_body': ?messageBody?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
  };
}

/// `content_type` — derived from the provider schema description.
enum LbListenerRuleActionFixedResponseContentType implements TerraformEnum {
  textPlain('text/plain'),
  textCss('text/css'),
  textHtml('text/html'),
  applicationJavascript('application/javascript'),
  applicationJson('application/json');

  const LbListenerRuleActionFixedResponseContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `action.forward` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleActionForward {
  const LbListenerRuleActionForward({
    this.stickiness,
    required this.targetGroup,
  });

  final LbListenerRuleActionForwardStickiness? stickiness;

  final List<LbListenerRuleActionForwardTargetGroup> targetGroup;

  Map<String, Object?> encode() => {
    'stickiness': ?stickiness?.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
  };
}

/// Typed helper for the `action.forward.stickiness` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleActionForwardStickiness {
  const LbListenerRuleActionForwardStickiness({
    required this.duration,
    this.enabled,
  });

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
final class LbListenerRuleActionForwardTargetGroup {
  const LbListenerRuleActionForwardTargetGroup({
    required this.arn,
    this.weight,
  });

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
final class LbListenerRuleActionJwtValidation {
  const LbListenerRuleActionJwtValidation({
    required this.issuer,
    required this.jwksEndpoint,
    this.additionalClaim,
  });

  final TfArg<String> issuer;

  final TfArg<String> jwksEndpoint;

  final List<LbListenerRuleActionJwtValidationAdditionalClaim>? additionalClaim;

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
final class LbListenerRuleActionJwtValidationAdditionalClaim {
  const LbListenerRuleActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  final TfArg<LbListenerRuleActionJwtValidationAdditionalClaimFormat> format;

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
enum LbListenerRuleActionJwtValidationAdditionalClaimFormat
    implements TerraformEnum {
  singleString('single-string'),
  stringArray('string-array'),
  spaceSeparatedValues('space-separated-values');

  const LbListenerRuleActionJwtValidationAdditionalClaimFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `action.redirect` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleActionRedirect {
  const LbListenerRuleActionRedirect({
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

  final TfArg<LbListenerRuleActionRedirectProtocol>? protocol;

  final TfArg<String>? query;

  final TfArg<LbListenerRuleActionRedirectStatusCode> statusCode;

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
enum LbListenerRuleActionRedirectProtocol implements TerraformEnum {
  protocol('#{protocol}'),
  http('HTTP'),
  https('HTTPS');

  const LbListenerRuleActionRedirectProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `status_code` — derived from the provider schema description.
enum LbListenerRuleActionRedirectStatusCode implements TerraformEnum {
  http301('HTTP_301'),
  http302('HTTP_302');

  const LbListenerRuleActionRedirectStatusCode(this.terraformValue);
  @override
  final String terraformValue;
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

  final LbListenerRuleConditionHostHeader? hostHeader;

  final LbListenerRuleConditionHttpHeader? httpHeader;

  final LbListenerRuleConditionHttpRequestMethod? httpRequestMethod;

  final LbListenerRuleConditionPathPattern? pathPattern;

  final List<LbListenerRuleConditionQueryString>? queryString;

  final LbListenerRuleConditionSourceIp? sourceIp;

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
final class LbListenerRuleConditionHostHeader {
  const LbListenerRuleConditionHostHeader({this.regexValues, this.values});

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
final class LbListenerRuleConditionHttpHeader {
  const LbListenerRuleConditionHttpHeader({
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
final class LbListenerRuleConditionHttpRequestMethod {
  const LbListenerRuleConditionHttpRequestMethod({required this.values});

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `condition.path_pattern` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleConditionPathPattern {
  const LbListenerRuleConditionPathPattern({this.regexValues, this.values});

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
final class LbListenerRuleConditionQueryString {
  const LbListenerRuleConditionQueryString({this.key, required this.value});

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
final class LbListenerRuleConditionSourceIp {
  const LbListenerRuleConditionSourceIp({this.ipAddressType, this.values});

  final TfArg<LbListenerRuleConditionSourceIpIpAddressType>? ipAddressType;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum LbListenerRuleConditionSourceIpIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const LbListenerRuleConditionSourceIpIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<LbListenerRuleTransformType> type;

  final LbListenerRuleTransformHostHeaderRewriteConfig? hostHeaderRewriteConfig;

  final LbListenerRuleTransformUrlRewriteConfig? urlRewriteConfig;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'host_header_rewrite_config': ?hostHeaderRewriteConfig?.encode(),
    'url_rewrite_config': ?urlRewriteConfig?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum LbListenerRuleTransformType implements TerraformEnum {
  hostHeaderRewrite('host-header-rewrite'),
  urlRewrite('url-rewrite');

  const LbListenerRuleTransformType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `transform.host_header_rewrite_config` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleTransformHostHeaderRewriteConfig {
  const LbListenerRuleTransformHostHeaderRewriteConfig({this.rewrite});

  final LbListenerRuleTransformHostHeaderRewriteConfigRewrite? rewrite;

  Map<String, Object?> encode() => {'rewrite': ?rewrite?.encode()};
}

/// Typed helper for the `transform.host_header_rewrite_config.rewrite` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleTransformHostHeaderRewriteConfigRewrite {
  const LbListenerRuleTransformHostHeaderRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

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
final class LbListenerRuleTransformUrlRewriteConfig {
  const LbListenerRuleTransformUrlRewriteConfig({this.rewrite});

  final LbListenerRuleTransformUrlRewriteConfigRewrite? rewrite;

  Map<String, Object?> encode() => {'rewrite': ?rewrite?.encode()};
}

/// Typed helper for the `transform.url_rewrite_config.rewrite` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class LbListenerRuleTransformUrlRewriteConfigRewrite {
  const LbListenerRuleTransformUrlRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  final TfArg<String> regex;

  final TfArg<String> replace;

  Map<String, Object?> encode() => {
    'regex': regex.toTfJson(),
    'replace': replace.toTfJson(),
  };
}

/// Factory wrapper for `aws_lb_listener_rule`.
final class AwsLbListenerRule extends Resource {
  static const String tfType = 'aws_lb_listener_rule';

  AwsLbListenerRule({
    required super.localName,
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
}
