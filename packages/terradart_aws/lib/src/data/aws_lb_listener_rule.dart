// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../elb/aws_lb_listener_rule.dart';

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

  final List<DataLbListenerRuleAuthenticateCognito>? authenticateCognito;

  final List<DataLbListenerRuleAuthenticateOidc>? authenticateOidc;

  final List<DataLbListenerRuleFixedResponse>? fixedResponse;

  final List<DataLbListenerRuleForward>? forward;

  final List<DataLbListenerRuleJwtValidation>? jwtValidation;

  final List<DataLbListenerRuleRedirect>? redirect;

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
final class DataLbListenerRuleAuthenticateCognito {
  const DataLbListenerRuleAuthenticateCognito();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.authenticate_oidc` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleAuthenticateOidc {
  const DataLbListenerRuleAuthenticateOidc();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.fixed_response` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleFixedResponse {
  const DataLbListenerRuleFixedResponse();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.forward` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleForward {
  const DataLbListenerRuleForward({this.stickiness, this.targetGroup});

  final List<DataLbListenerRuleStickiness>? stickiness;

  final List<DataLbListenerRuleTargetGroup>? targetGroup;

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
final class DataLbListenerRuleStickiness {
  const DataLbListenerRuleStickiness();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.forward.target_group` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleTargetGroup {
  const DataLbListenerRuleTargetGroup();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.jwt_validation` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleJwtValidation {
  const DataLbListenerRuleJwtValidation({this.additionalClaim});

  final List<DataLbListenerRuleAdditionalClaim>? additionalClaim;

  Map<String, Object?> encode() => {
    if (additionalClaim != null)
      'additional_claim': [for (final e in additionalClaim!) e.encode()],
  };
}

/// Typed helper for the `action.jwt_validation.additional_claim` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleAdditionalClaim {
  const DataLbListenerRuleAdditionalClaim();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `action.redirect` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleRedirect {
  const DataLbListenerRuleRedirect();

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

  final List<DataLbListenerRuleHostHeader>? hostHeader;

  final List<DataLbListenerRuleHttpHeader>? httpHeader;

  final List<DataLbListenerRuleHttpRequestMethod>? httpRequestMethod;

  final List<DataLbListenerRulePathPattern>? pathPattern;

  final List<DataLbListenerRuleQueryString>? queryString;

  final List<DataLbListenerRuleSourceIp>? sourceIp;

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
final class DataLbListenerRuleHostHeader {
  const DataLbListenerRuleHostHeader();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.http_header` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleHttpHeader {
  const DataLbListenerRuleHttpHeader();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.http_request_method` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleHttpRequestMethod {
  const DataLbListenerRuleHttpRequestMethod();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.path_pattern` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRulePathPattern {
  const DataLbListenerRulePathPattern();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.query_string` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleQueryString {
  const DataLbListenerRuleQueryString({this.values});

  final List<DataLbListenerRuleValues>? values;

  Map<String, Object?> encode() => {
    if (values != null) 'values': [for (final e in values!) e.encode()],
  };
}

/// Typed helper for the `condition.query_string.values` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleValues {
  const DataLbListenerRuleValues();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition.source_ip` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleSourceIp {
  const DataLbListenerRuleSourceIp();

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

  final List<DataLbListenerRuleHostHeaderRewriteConfig>?
  hostHeaderRewriteConfig;

  final List<DataLbListenerRuleUrlRewriteConfig>? urlRewriteConfig;

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
final class DataLbListenerRuleHostHeaderRewriteConfig {
  const DataLbListenerRuleHostHeaderRewriteConfig({this.rewrite});

  final List<DataLbListenerRuleRewrite>? rewrite;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': [for (final e in rewrite!) e.encode()],
  };
}

/// Typed helper for the `transform.host_header_rewrite_config.rewrite` block of
/// `aws_lb_listener_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLbListenerRuleRewrite {
  const DataLbListenerRuleRewrite();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `transform.url_rewrite_config` block of
/// `aws_lb_listener_rule` (derived from provider schema).
@immutable
final class DataLbListenerRuleUrlRewriteConfig {
  const DataLbListenerRuleUrlRewriteConfig({this.rewrite});

  final List<DataLbListenerRuleRewrite>? rewrite;

  Map<String, Object?> encode() => {
    if (rewrite != null) 'rewrite': [for (final e in rewrite!) e.encode()],
  };
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
           'arn': ?arn,
           'listener_arn': ?listenerArn,
           'priority': ?priority,
           'region': ?region,
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

  /// A reference to the `aws_lb_listener_rule` this data source reads, for
  /// arguments typed `RefTo<AwsLbListenerRule>`.
  RefTo<AwsLbListenerRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `listener_arn` attribute.
  TfRef<String> get listenerArn =>
      TfRef.attribute<String>(this, 'listener_arn');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
