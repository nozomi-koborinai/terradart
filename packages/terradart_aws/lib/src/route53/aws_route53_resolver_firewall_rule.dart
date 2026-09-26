// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rule`.
const Set<String> _awsRoute53ResolverFirewallRuleSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_rule`.
final class AwsRoute53ResolverFirewallRule extends Resource {
  static const String tfType = 'aws_route53_resolver_firewall_rule';

  AwsRoute53ResolverFirewallRule({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? blockOverrideDnsType,
    TfArg<String>? blockOverrideDomain,
    TfArg<num>? blockOverrideTtl,
    TfArg<String>? blockResponse,
    TfArg<String>? confidenceThreshold,
    TfArg<String>? dnsThreatProtection,
    TfArg<String>? firewallDomainListId,
    TfArg<String>? firewallDomainRedirectionAction,
    required TfArg<String> firewallRuleGroupId,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? qType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (blockOverrideDnsType != null)
             'block_override_dns_type': blockOverrideDnsType,
           if (blockOverrideDomain != null)
             'block_override_domain': blockOverrideDomain,
           if (blockOverrideTtl != null) 'block_override_ttl': blockOverrideTtl,
           if (blockResponse != null) 'block_response': blockResponse,
           if (confidenceThreshold != null)
             'confidence_threshold': confidenceThreshold,
           if (dnsThreatProtection != null)
             'dns_threat_protection': dnsThreatProtection,
           if (firewallDomainListId != null)
             'firewall_domain_list_id': firewallDomainListId,
           if (firewallDomainRedirectionAction != null)
             'firewall_domain_redirection_action':
                 firewallDomainRedirectionAction,
           'firewall_rule_group_id': firewallRuleGroupId,
           'name': name,
           'priority': priority,
           if (qType != null) 'q_type': qType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverFirewallRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `firewall_threat_protection_id` attribute.
  TfRef<String> get firewallThreatProtectionId =>
      TfRef.attribute<String>(this, 'firewall_threat_protection_id');
}
