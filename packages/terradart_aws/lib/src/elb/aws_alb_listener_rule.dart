// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_alb_listener_rule`.
const Set<String> _awsAlbListenerRuleSensitive = <String>{
  'action.authenticate_oidc.client_secret',
};

/// Typed helper for the `action` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleAction {
  const AlbListenerRuleAction({
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

  final TfArg<String> type;

  final AlbListenerRuleActionAuthenticateCognito? authenticateCognito;

  final AlbListenerRuleActionAuthenticateOidc? authenticateOidc;

  final AlbListenerRuleActionFixedResponse? fixedResponse;

  final AlbListenerRuleActionForward? forward;

  final AlbListenerRuleActionJwtValidation? jwtValidation;

  final AlbListenerRuleActionRedirect? redirect;

  Map<String, Object?> encode() => {
    if (order != null) 'order': order!.toTfJson(),
    if (targetGroupArn != null) 'target_group_arn': targetGroupArn!.toTfJson(),
    'type': type.toTfJson(),
    if (authenticateCognito != null)
      'authenticate_cognito': authenticateCognito!.encode(),
    if (authenticateOidc != null)
      'authenticate_oidc': authenticateOidc!.encode(),
    if (fixedResponse != null) 'fixed_response': fixedResponse!.encode(),
    if (forward != null) 'forward': forward!.encode(),
    if (jwtValidation != null) 'jwt_validation': jwtValidation!.encode(),
    if (redirect != null) 'redirect': redirect!.encode(),
  };
}

/// Typed helper for the `action.authenticate_cognito` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionAuthenticateCognito {
  const AlbListenerRuleActionAuthenticateCognito({
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

  final TfArg<String>? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> userPoolArn;

  final TfArg<String> userPoolClientId;

  final TfArg<String> userPoolDomain;

  Map<String, Object?> encode() => {
    if (authenticationRequestExtraParams != null)
      'authentication_request_extra_params': authenticationRequestExtraParams!
          .toTfJson(),
    if (onUnauthenticatedRequest != null)
      'on_unauthenticated_request': onUnauthenticatedRequest!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (sessionCookieName != null)
      'session_cookie_name': sessionCookieName!.toTfJson(),
    if (sessionTimeout != null) 'session_timeout': sessionTimeout!.toTfJson(),
    'user_pool_arn': userPoolArn.toTfJson(),
    'user_pool_client_id': userPoolClientId.toTfJson(),
    'user_pool_domain': userPoolDomain.toTfJson(),
  };
}

/// Typed helper for the `action.authenticate_oidc` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionAuthenticateOidc {
  const AlbListenerRuleActionAuthenticateOidc({
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

  final TfArg<String>? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> tokenEndpoint;

  final TfArg<String> userInfoEndpoint;

  Map<String, Object?> encode() => {
    if (authenticationRequestExtraParams != null)
      'authentication_request_extra_params': authenticationRequestExtraParams!
          .toTfJson(),
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': issuer.toTfJson(),
    if (onUnauthenticatedRequest != null)
      'on_unauthenticated_request': onUnauthenticatedRequest!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (sessionCookieName != null)
      'session_cookie_name': sessionCookieName!.toTfJson(),
    if (sessionTimeout != null) 'session_timeout': sessionTimeout!.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    'user_info_endpoint': userInfoEndpoint.toTfJson(),
  };
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionFixedResponse {
  const AlbListenerRuleActionFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  final TfArg<String> contentType;

  final TfArg<String>? messageBody;

  final TfArg<String>? statusCode;

  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    if (messageBody != null) 'message_body': messageBody!.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
  };
}

/// Typed helper for the `action.forward` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionForward {
  const AlbListenerRuleActionForward({
    this.stickiness,
    required this.targetGroup,
  });

  final AlbListenerRuleActionForwardStickiness? stickiness;

  final List<AlbListenerRuleActionForwardTargetGroup> targetGroup;

  Map<String, Object?> encode() => {
    if (stickiness != null) 'stickiness': stickiness!.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
  };
}

/// Typed helper for the `action.forward.stickiness` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionForwardStickiness {
  const AlbListenerRuleActionForwardStickiness({
    required this.duration,
    this.enabled,
  });

  final TfArg<num> duration;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `action.forward.target_group` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionForwardTargetGroup {
  const AlbListenerRuleActionForwardTargetGroup({
    required this.arn,
    this.weight,
  });

  final TfArg<String> arn;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `action.jwt_validation` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionJwtValidation {
  const AlbListenerRuleActionJwtValidation({
    required this.issuer,
    required this.jwksEndpoint,
    this.additionalClaim,
  });

  final TfArg<String> issuer;

  final TfArg<String> jwksEndpoint;

  final List<AlbListenerRuleActionJwtValidationAdditionalClaim>?
  additionalClaim;

  Map<String, Object?> encode() => {
    'issuer': issuer.toTfJson(),
    'jwks_endpoint': jwksEndpoint.toTfJson(),
    if (additionalClaim != null)
      'additional_claim': [for (final e in additionalClaim!) e.encode()],
  };
}

/// Typed helper for the `action.jwt_validation.additional_claim` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionJwtValidationAdditionalClaim {
  const AlbListenerRuleActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  final TfArg<String> format;

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `action.redirect` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleActionRedirect {
  const AlbListenerRuleActionRedirect({
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

  final TfArg<String>? protocol;

  final TfArg<String>? query;

  final TfArg<String> statusCode;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (query != null) 'query': query!.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// Typed helper for the `condition` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleCondition {
  const AlbListenerRuleCondition({
    this.hostHeader,
    this.httpHeader,
    this.httpRequestMethod,
    this.pathPattern,
    this.queryString,
    this.sourceIp,
  });

  final AlbListenerRuleConditionHostHeader? hostHeader;

  final AlbListenerRuleConditionHttpHeader? httpHeader;

  final AlbListenerRuleConditionHttpRequestMethod? httpRequestMethod;

  final AlbListenerRuleConditionPathPattern? pathPattern;

  final List<AlbListenerRuleConditionQueryString>? queryString;

  final AlbListenerRuleConditionSourceIp? sourceIp;

  Map<String, Object?> encode() => {
    if (hostHeader != null) 'host_header': hostHeader!.encode(),
    if (httpHeader != null) 'http_header': httpHeader!.encode(),
    if (httpRequestMethod != null)
      'http_request_method': httpRequestMethod!.encode(),
    if (pathPattern != null) 'path_pattern': pathPattern!.encode(),
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
    if (sourceIp != null) 'source_ip': sourceIp!.encode(),
  };
}

/// Typed helper for the `condition.host_header` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleConditionHostHeader {
  const AlbListenerRuleConditionHostHeader({this.regexValues, this.values});

  final TfArg<List<Object?>>? regexValues;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (regexValues != null) 'regex_values': regexValues!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `condition.http_header` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleConditionHttpHeader {
  const AlbListenerRuleConditionHttpHeader({
    required this.httpHeaderName,
    this.regexValues,
    this.values,
  });

  final TfArg<String> httpHeaderName;

  final TfArg<List<Object?>>? regexValues;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    'http_header_name': httpHeaderName.toTfJson(),
    if (regexValues != null) 'regex_values': regexValues!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `condition.http_request_method` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleConditionHttpRequestMethod {
  const AlbListenerRuleConditionHttpRequestMethod({required this.values});

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `condition.path_pattern` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleConditionPathPattern {
  const AlbListenerRuleConditionPathPattern({this.regexValues, this.values});

  final TfArg<List<Object?>>? regexValues;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (regexValues != null) 'regex_values': regexValues!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `condition.query_string` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleConditionQueryString {
  const AlbListenerRuleConditionQueryString({this.key, required this.value});

  final TfArg<String>? key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `condition.source_ip` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleConditionSourceIp {
  const AlbListenerRuleConditionSourceIp({this.ipAddressType, this.values});

  final TfArg<String>? ipAddressType;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `transform` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleTransform {
  const AlbListenerRuleTransform({
    required this.type,
    this.hostHeaderRewriteConfig,
    this.urlRewriteConfig,
  });

  final TfArg<String> type;

  final AlbListenerRuleTransformHostHeaderRewriteConfig?
  hostHeaderRewriteConfig;

  final AlbListenerRuleTransformUrlRewriteConfig? urlRewriteConfig;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (hostHeaderRewriteConfig != null)
      'host_header_rewrite_config': hostHeaderRewriteConfig!.encode(),
    if (urlRewriteConfig != null)
      'url_rewrite_config': urlRewriteConfig!.encode(),
  };
}

/// Typed helper for the `transform.host_header_rewrite_config` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleTransformHostHeaderRewriteConfig {
  const AlbListenerRuleTransformHostHeaderRewriteConfig({this.rewrite});

  final AlbListenerRuleTransformHostHeaderRewriteConfigRewrite? rewrite;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': rewrite!.encode(),
  };
}

/// Typed helper for the `transform.host_header_rewrite_config.rewrite` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleTransformHostHeaderRewriteConfigRewrite {
  const AlbListenerRuleTransformHostHeaderRewriteConfigRewrite({
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
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleTransformUrlRewriteConfig {
  const AlbListenerRuleTransformUrlRewriteConfig({this.rewrite});

  final AlbListenerRuleTransformUrlRewriteConfigRewrite? rewrite;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': rewrite!.encode(),
  };
}

/// Typed helper for the `transform.url_rewrite_config.rewrite` block of
/// `aws_alb_listener_rule` (derived from provider schema).
@immutable
final class AlbListenerRuleTransformUrlRewriteConfigRewrite {
  const AlbListenerRuleTransformUrlRewriteConfigRewrite({
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

/// Factory wrapper for `aws_alb_listener_rule`.
final class AwsAlbListenerRule extends Resource {
  static const String tfType = 'aws_alb_listener_rule';

  AwsAlbListenerRule({
    required super.localName,
    required TfArg<String> listenerArn,
    TfArg<num>? priority,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<AlbListenerRuleAction> action,
    required List<AlbListenerRuleCondition> condition,
    List<AlbListenerRuleTransform>? transform,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'listener_arn': listenerArn,
           if (priority != null) 'priority': priority,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'action': TfArg.literal([for (final e in action) e.encode()]),
           'condition': TfArg.literal([for (final e in condition) e.encode()]),
           if (transform != null)
             'transform': TfArg.literal([
               for (final e in transform) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAlbListenerRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
