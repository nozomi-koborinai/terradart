// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rules`.
const Set<String> _awsRoute53ResolverFirewallRulesSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_rules`.
final class DataAwsRoute53ResolverFirewallRules extends Data {
  static const String tfType = 'aws_route53_resolver_firewall_rules';

  DataAwsRoute53ResolverFirewallRules({
    required super.localName,
    TfArg<String>? action,
    required TfArg<String> firewallRuleGroupId,
    TfArg<num>? priority,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (action != null) 'action': action,
           'firewall_rule_group_id': firewallRuleGroupId,
           if (priority != null) 'priority': priority,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverFirewallRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `firewall_rules` attribute.
  TfRef<List<Map<String, Object?>>> get firewallRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'firewall_rules');
}
