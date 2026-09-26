// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_rules`.
const Set<String> _awsRoute53ResolverRulesSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_rules`.
final class DataAwsRoute53ResolverRules extends Data {
  static const String tfType = 'aws_route53_resolver_rules';

  DataAwsRoute53ResolverRules({
    required super.localName,
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
           if (nameRegex != null) 'name_regex': nameRegex,
           if (ownerId != null) 'owner_id': ownerId,
           if (region != null) 'region': region,
           if (resolverEndpointId != null)
             'resolver_endpoint_id': resolverEndpointId,
           if (ruleType != null) 'rule_type': ruleType,
           if (shareStatus != null) 'share_status': shareStatus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resolver_rule_ids` attribute.
  TfRef<List<String>> get resolverRuleIds =>
      TfRef.attribute<List<String>>(this, 'resolver_rule_ids');
}
