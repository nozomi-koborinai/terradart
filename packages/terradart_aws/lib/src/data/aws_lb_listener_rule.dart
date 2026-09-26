// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_listener_rule`.
const Set<String> _awsLbListenerRuleSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleAction {
  const DataLbListenerRuleAction({
    this.authenticateCognito,
    this.authenticateOidc,
    this.fixedResponse,
    this.forward,
    this.jwtValidation,
    this.redirect,
  });

  final List<DataLbListenerRuleActionAuthenticateCognito>? authenticateCognito;

  final List<DataLbListenerRuleActionAuthenticateOidc>? authenticateOidc;

  final List<DataLbListenerRuleActionFixedResponse>? fixedResponse;

  final List<DataLbListenerRuleActionForward>? forward;

  final List<DataLbListenerRuleActionJwtValidation>? jwtValidation;

  final List<DataLbListenerRuleActionRedirect>? redirect;

  Map<String, Object?> encode() => {
    if (authenticateCognito != null)
      'authenticate_cognito': [
        for (final e in authenticateCognito!) e.encode(),
      ],
    if (authenticateOidc != null)
      'authenticate_oidc': [for (final e in authenticateOidc!) e.encode()],
    if (fixedResponse != null)
      'fixed_response': [for (final e in fixedResponse!) e.encode()],
    if (forward != null) 'forward': [for (final e in forward!) e.encode()],
    if (jwtValidation != null)
      'jwt_validation': [for (final e in jwtValidation!) e.encode()],
    if (redirect != null) 'redirect': [for (final e in redirect!) e.encode()],
  };
}

/// Typed helper for the `action.authenticate_cognito` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionAuthenticateCognito {
  const DataLbListenerRuleActionAuthenticateCognito();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.authenticate_oidc` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionAuthenticateOidc {
  const DataLbListenerRuleActionAuthenticateOidc();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionFixedResponse {
  const DataLbListenerRuleActionFixedResponse();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.forward` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionForward {
  const DataLbListenerRuleActionForward({this.stickiness, this.targetGroup});

  final List<DataLbListenerRuleActionForwardStickiness>? stickiness;

  final List<DataLbListenerRuleActionForwardTargetGroup>? targetGroup;

  Map<String, Object?> encode() => {
    if (stickiness != null)
      'stickiness': [for (final e in stickiness!) e.encode()],
    if (targetGroup != null)
      'target_group': [for (final e in targetGroup!) e.encode()],
  };
}

/// Typed helper for the `action.forward.stickiness` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionForwardStickiness {
  const DataLbListenerRuleActionForwardStickiness();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.forward.target_group` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionForwardTargetGroup {
  const DataLbListenerRuleActionForwardTargetGroup();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.jwt_validation` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionJwtValidation {
  const DataLbListenerRuleActionJwtValidation({this.additionalClaim});

  final List<DataLbListenerRuleActionJwtValidationAdditionalClaim>?
  additionalClaim;

  Map<String, Object?> encode() => {
    if (additionalClaim != null)
      'additional_claim': [for (final e in additionalClaim!) e.encode()],
  };
}

/// Typed helper for the `action.jwt_validation.additional_claim` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionJwtValidationAdditionalClaim {
  const DataLbListenerRuleActionJwtValidationAdditionalClaim();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.redirect` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleActionRedirect {
  const DataLbListenerRuleActionRedirect();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleCondition {
  const DataLbListenerRuleCondition({
    this.hostHeader,
    this.httpHeader,
    this.httpRequestMethod,
    this.pathPattern,
    this.queryString,
    this.sourceIp,
  });

  final List<DataLbListenerRuleConditionHostHeader>? hostHeader;

  final List<DataLbListenerRuleConditionHttpHeader>? httpHeader;

  final List<DataLbListenerRuleConditionHttpRequestMethod>? httpRequestMethod;

  final List<DataLbListenerRuleConditionPathPattern>? pathPattern;

  final List<DataLbListenerRuleConditionQueryString>? queryString;

  final List<DataLbListenerRuleConditionSourceIp>? sourceIp;

  Map<String, Object?> encode() => {
    if (hostHeader != null)
      'host_header': [for (final e in hostHeader!) e.encode()],
    if (httpHeader != null)
      'http_header': [for (final e in httpHeader!) e.encode()],
    if (httpRequestMethod != null)
      'http_request_method': [for (final e in httpRequestMethod!) e.encode()],
    if (pathPattern != null)
      'path_pattern': [for (final e in pathPattern!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
    if (sourceIp != null) 'source_ip': [for (final e in sourceIp!) e.encode()],
  };
}

/// Typed helper for the `condition.host_header` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionHostHeader {
  const DataLbListenerRuleConditionHostHeader();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.http_header` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionHttpHeader {
  const DataLbListenerRuleConditionHttpHeader();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.http_request_method` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionHttpRequestMethod {
  const DataLbListenerRuleConditionHttpRequestMethod();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.path_pattern` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionPathPattern {
  const DataLbListenerRuleConditionPathPattern();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.query_string` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionQueryString {
  const DataLbListenerRuleConditionQueryString({this.values});

  final List<DataLbListenerRuleConditionQueryStringValues>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `condition.query_string.values` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionQueryStringValues {
  const DataLbListenerRuleConditionQueryStringValues();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.source_ip` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleConditionSourceIp {
  const DataLbListenerRuleConditionSourceIp();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `transform` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleTransform {
  const DataLbListenerRuleTransform({
    this.hostHeaderRewriteConfig,
    this.urlRewriteConfig,
  });

  final List<DataLbListenerRuleTransformHostHeaderRewriteConfig>?
  hostHeaderRewriteConfig;

  final List<DataLbListenerRuleTransformUrlRewriteConfig>? urlRewriteConfig;

  Map<String, Object?> encode() => {
    if (hostHeaderRewriteConfig != null)
      'host_header_rewrite_config': [
        for (final e in hostHeaderRewriteConfig!) e.encode(),
      ],
    if (urlRewriteConfig != null)
      'url_rewrite_config': [for (final e in urlRewriteConfig!) e.encode()],
  };
}

/// Typed helper for the `transform.host_header_rewrite_config` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleTransformHostHeaderRewriteConfig {
  const DataLbListenerRuleTransformHostHeaderRewriteConfig({this.rewrite});

  final List<DataLbListenerRuleTransformHostHeaderRewriteConfigRewrite>?
  rewrite;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': [for (final e in rewrite!) e.encode()],
  };
}

/// Typed helper for the `transform.host_header_rewrite_config.rewrite` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleTransformHostHeaderRewriteConfigRewrite {
  const DataLbListenerRuleTransformHostHeaderRewriteConfigRewrite();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `transform.url_rewrite_config` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleTransformUrlRewriteConfig {
  const DataLbListenerRuleTransformUrlRewriteConfig({this.rewrite});

  final List<DataLbListenerRuleTransformUrlRewriteConfigRewrite>? rewrite;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': [for (final e in rewrite!) e.encode()],
  };
}

/// Typed helper for the `transform.url_rewrite_config.rewrite` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleTransformUrlRewriteConfigRewrite {
  const DataLbListenerRuleTransformUrlRewriteConfigRewrite();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_lb_listener_rule`.
final class DataAwsLbListenerRule extends Data {
  static const String tfType = 'aws_lb_listener_rule';

  DataAwsLbListenerRule({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? listenerArn,
    TfArg<num>? priority,
    TfArg<String>? region,
    List<DataLbListenerRuleAction>? action,
    List<DataLbListenerRuleCondition>? condition,
    List<DataLbListenerRuleTransform>? transform,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (listenerArn != null) 'listener_arn': listenerArn,
           if (priority != null) 'priority': priority,
           if (region != null) 'region': region,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (condition != null)
             'condition': TfArg.literal([
               for (final e in condition) e.encode(),
             ]),
           if (transform != null)
             'transform': TfArg.literal([
               for (final e in transform) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbListenerRuleSensitive;

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
