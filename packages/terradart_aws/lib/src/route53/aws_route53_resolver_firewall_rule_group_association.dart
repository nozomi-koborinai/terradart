// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rule_group_association`.
const Set<String> _awsRoute53ResolverFirewallRuleGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_rule_group_association`.
final class AwsRoute53ResolverFirewallRuleGroupAssociation extends Resource {
  static const String tfType =
      'aws_route53_resolver_firewall_rule_group_association';

  AwsRoute53ResolverFirewallRuleGroupAssociation({
    required super.localName,
    required TfArg<String> firewallRuleGroupId,
    TfArg<String>? mutationProtection,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_rule_group_id': firewallRuleGroupId,
           if (mutationProtection != null)
             'mutation_protection': mutationProtection,
           'name': name,
           'priority': priority,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverFirewallRuleGroupAssociationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
