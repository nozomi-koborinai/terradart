// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_routing_rule`.
const Set<String> _awsApigatewayv2RoutingRuleSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_apigatewayv2_routing_rule` (derived from provider schema).
@immutable
final class Apigatewayv2RoutingRuleAction {
  const Apigatewayv2RoutingRuleAction({this.invokeApi});

  final List<Apigatewayv2RoutingRuleActionInvokeApi>? invokeApi;

  Map<String, Object?> encode() => {
    if (invokeApi != null)
      'invoke_api': [for (final e in invokeApi!) e.encode()],
  };
}

/// Typed helper for the `action.invoke_api` block of
/// `aws_apigatewayv2_routing_rule` (derived from provider schema).
@immutable
final class Apigatewayv2RoutingRuleActionInvokeApi {
  const Apigatewayv2RoutingRuleActionInvokeApi({
    required this.apiId,
    required this.stage,
    this.stripBasePath,
  });

  final TfArg<String> apiId;

  final TfArg<String> stage;

  final TfArg<bool>? stripBasePath;

  Map<String, Object?> encode() => {
    'api_id': apiId.toTfJson(),
    'stage': stage.toTfJson(),
    'strip_base_path': ?stripBasePath?.toTfJson(),
  };
}

/// Typed helper for the `condition` block of
/// `aws_apigatewayv2_routing_rule` (derived from provider schema).
@immutable
final class Apigatewayv2RoutingRuleCondition {
  const Apigatewayv2RoutingRuleCondition({
    this.matchBasePaths,
    this.matchHeaders,
  });

  final List<Apigatewayv2RoutingRuleConditionMatchBasePaths>? matchBasePaths;

  final List<Apigatewayv2RoutingRuleConditionMatchHeaders>? matchHeaders;

  Map<String, Object?> encode() => {
    if (matchBasePaths != null)
      'match_base_paths': [for (final e in matchBasePaths!) e.encode()],
    if (matchHeaders != null)
      'match_headers': [for (final e in matchHeaders!) e.encode()],
  };
}

/// Typed helper for the `condition.match_base_paths` block of
/// `aws_apigatewayv2_routing_rule` (derived from provider schema).
@immutable
final class Apigatewayv2RoutingRuleConditionMatchBasePaths {
  const Apigatewayv2RoutingRuleConditionMatchBasePaths({required this.anyOf});

  final TfArg<List<String>> anyOf;

  Map<String, Object?> encode() => {'any_of': anyOf.toTfJson()};
}

/// Typed helper for the `condition.match_headers` block of
/// `aws_apigatewayv2_routing_rule` (derived from provider schema).
@immutable
final class Apigatewayv2RoutingRuleConditionMatchHeaders {
  const Apigatewayv2RoutingRuleConditionMatchHeaders({this.anyOf});

  final List<Apigatewayv2RoutingRuleConditionMatchHeadersAnyOf>? anyOf;

  Map<String, Object?> encode() => {
    if (anyOf != null) 'any_of': [for (final e in anyOf!) e.encode()],
  };
}

/// Typed helper for the `condition.match_headers.any_of` block of
/// `aws_apigatewayv2_routing_rule` (derived from provider schema).
@immutable
final class Apigatewayv2RoutingRuleConditionMatchHeadersAnyOf {
  const Apigatewayv2RoutingRuleConditionMatchHeadersAnyOf({
    required this.header,
    required this.valueGlob,
  });

  final TfArg<String> header;

  final TfArg<String> valueGlob;

  Map<String, Object?> encode() => {
    'header': header.toTfJson(),
    'value_glob': valueGlob.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_routing_rule`.
final class AwsApigatewayv2RoutingRule extends Resource {
  static const String tfType = 'aws_apigatewayv2_routing_rule';

  AwsApigatewayv2RoutingRule({
    required super.localName,
    required TfArg<String> domainName,
    required TfArg<num> priority,
    TfArg<String>? region,
    List<Apigatewayv2RoutingRuleAction>? action,
    List<Apigatewayv2RoutingRuleCondition>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'priority': priority,
           'region': ?region,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (condition != null)
             'condition': TfArg.literal([
               for (final e in condition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2RoutingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2RoutingRule>`.
  RefTo<AwsApigatewayv2RoutingRule> get ref => RefTo.of(this);

  /// Reference to `routing_rule_arn` attribute.
  TfRef<String> get routingRuleArn =>
      TfRef.attribute<String>(this, 'routing_rule_arn');

  /// Reference to `routing_rule_id` attribute.
  TfRef<String> get routingRuleId =>
      TfRef.attribute<String>(this, 'routing_rule_id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainNameRef =>
      TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
