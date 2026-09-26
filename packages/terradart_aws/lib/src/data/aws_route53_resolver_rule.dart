// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
           if (domainName != null) 'domain_name': domainName,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (resolverEndpointId != null)
             'resolver_endpoint_id': resolverEndpointId,
           if (resolverRuleId != null) 'resolver_rule_id': resolverRuleId,
           if (ruleType != null) 'rule_type': ruleType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverRuleSensitive;

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
