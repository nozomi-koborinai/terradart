// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../route53/aws_route53_resolver_rule.dart';

/// Sensitive field paths for `aws_route53_resolver_rule`.
const Set<String> _awsRoute53ResolverRuleSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_rule`.
final class DataAwsRoute53ResolverRule extends Data {
  static const String tfType = 'aws_route53_resolver_rule';

  DataAwsRoute53ResolverRule({
    required super.localName,
    TfArg<String>? domainName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? resolverEndpointId,
    TfArg<String>? resolverRuleId,
    TfArg<String>? ruleType,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': ?domainName,
           'name': ?name,
           'region': ?region,
           'resolver_endpoint_id': ?resolverEndpointId,
           'resolver_rule_id': ?resolverRuleId,
           'rule_type': ?ruleType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverRuleSensitive;

  /// A reference to the `aws_route53_resolver_rule` this data source reads, for
  /// arguments typed `RefTo<AwsRoute53ResolverRule>`.
  RefTo<AwsRoute53ResolverRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');

  /// Reference to `target_ips` attribute.
  TfRef<List<Map<String, Object?>>> get targetIps =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_ips');
}
