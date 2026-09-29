// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rule`.
const Set<String> _awsRoute53ResolverFirewallRuleSensitive = <String>{};

/// Route53 Resolver Firewall Rule enum for `action`.
enum Route53ResolverFirewallRuleAction implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK'),
  alert('ALERT');

  const Route53ResolverFirewallRuleAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Firewall Rule Block Override Dns enum for `block_override_dns_type`.
enum Route53ResolverFirewallRuleBlockOverrideDnsType implements TerraformEnum {
  cname('CNAME');

  const Route53ResolverFirewallRuleBlockOverrideDnsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Firewall Rule Block enum for `block_response`.
enum Route53ResolverFirewallRuleBlockResponse implements TerraformEnum {
  nodata('NODATA'),
  nxdomain('NXDOMAIN'),
  overrideCase('OVERRIDE');

  const Route53ResolverFirewallRuleBlockResponse(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Firewall Rule Confidence enum for `confidence_threshold`.
enum Route53ResolverFirewallRuleConfidenceThreshold implements TerraformEnum {
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH');

  const Route53ResolverFirewallRuleConfidenceThreshold(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Firewall Rule Dns Threat enum for `dns_threat_protection`.
enum Route53ResolverFirewallRuleDnsThreatProtection implements TerraformEnum {
  dga('DGA'),
  dnsTunneling('DNS_TUNNELING'),
  dictionaryDga('DICTIONARY_DGA');

  const Route53ResolverFirewallRuleDnsThreatProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Resolver Firewall Rule Firewall Domain Redirection enum for `firewall_domain_redirection_action`.
enum Route53ResolverFirewallRuleFirewallDomainRedirectionAction
    implements TerraformEnum {
  inspectRedirectionDomain('INSPECT_REDIRECTION_DOMAIN'),
  trustRedirectionDomain('TRUST_REDIRECTION_DOMAIN');

  const Route53ResolverFirewallRuleFirewallDomainRedirectionAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_resolver_firewall_rule`.
final class AwsRoute53ResolverFirewallRule extends Resource {
  static const String tfType = 'aws_route53_resolver_firewall_rule';

  AwsRoute53ResolverFirewallRule({
    required super.localName,
    required TfArg<Route53ResolverFirewallRuleAction> action,
    TfArg<Route53ResolverFirewallRuleBlockOverrideDnsType>?
    blockOverrideDnsType,
    TfArg<String>? blockOverrideDomain,
    TfArg<num>? blockOverrideTtl,
    TfArg<Route53ResolverFirewallRuleBlockResponse>? blockResponse,
    TfArg<Route53ResolverFirewallRuleConfidenceThreshold>? confidenceThreshold,
    TfArg<Route53ResolverFirewallRuleDnsThreatProtection>? dnsThreatProtection,
    TfArg<String>? firewallDomainListId,
    TfArg<Route53ResolverFirewallRuleFirewallDomainRedirectionAction>?
    firewallDomainRedirectionAction,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverFirewallRule>`.
  RefTo<AwsRoute53ResolverFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `firewall_threat_protection_id` attribute.
  TfRef<String> get firewallThreatProtectionId =>
      TfRef.attribute<String>(this, 'firewall_threat_protection_id');
}
