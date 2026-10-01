// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_rules`.
const Set<String> _awsRoute53ResolverRulesSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_rules`.
final class DataAwsRoute53ResolverRules extends Data {
  static const String tfType = 'aws_route53_resolver_rules';

  DataAwsRoute53ResolverRules(
    super.localName, {
    TfArg<String>? nameRegex,
    TfArg<String>? ownerId,
    TfArg<String>? region,
    TfArg<String>? resolverEndpointId,
    TfArg<String>? ruleType,
    TfArg<String>? shareStatus,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name_regex': ?nameRegex,
           'owner_id': ?ownerId,
           'region': ?region,
           'resolver_endpoint_id': ?resolverEndpointId,
           'rule_type': ?ruleType,
           'share_status': ?shareStatus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resolver_rule_ids` attribute.
  TfRef<List<String>> get resolverRuleIds =>
      TfRef.attribute<List<String>>(this, 'resolver_rule_ids');

  /// Reference to `name_regex` attribute.
  TfRef<String> get nameRegex => TfRef.attribute<String>(this, 'name_regex');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resolver_endpoint_id` attribute.
  TfRef<String> get resolverEndpointId =>
      TfRef.attribute<String>(this, 'resolver_endpoint_id');

  /// Reference to `rule_type` attribute.
  TfRef<String> get ruleType => TfRef.attribute<String>(this, 'rule_type');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');
}
