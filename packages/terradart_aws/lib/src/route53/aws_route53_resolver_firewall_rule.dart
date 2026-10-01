// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rule`.
const Set<String> _awsRoute53ResolverFirewallRuleSensitive = <String>{};

/// Route53 Resolver Firewall Rule enum for `action`.
extension type const Route53ResolverFirewallRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverFirewallRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = Route53ResolverFirewallRuleAction._(
    TfArgLiteral('ALLOW'),
  );
  static const block = Route53ResolverFirewallRuleAction._(
    TfArgLiteral('BLOCK'),
  );
  static const alert = Route53ResolverFirewallRuleAction._(
    TfArgLiteral('ALERT'),
  );

  static const List<Route53ResolverFirewallRuleAction> values = [
    allow,
    block,
    alert,
  ];
}

/// Route53 Resolver Firewall Rule Block Override Dns enum for `block_override_dns_type`.
extension type const Route53ResolverFirewallRuleBlockOverrideDnsType._(
  TfArg<String> _
) implements TfArg<String> {
  Route53ResolverFirewallRuleBlockOverrideDnsType.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleBlockOverrideDnsType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleBlockOverrideDnsType.arg(TfArg<String> arg)
    : this._(arg);

  static const cname = Route53ResolverFirewallRuleBlockOverrideDnsType._(
    TfArgLiteral('CNAME'),
  );

  static const List<Route53ResolverFirewallRuleBlockOverrideDnsType> values = [
    cname,
  ];
}

/// Route53 Resolver Firewall Rule Block enum for `block_response`.
extension type const Route53ResolverFirewallRuleBlockResponse._(TfArg<String> _)
    implements TfArg<String> {
  Route53ResolverFirewallRuleBlockResponse.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleBlockResponse.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleBlockResponse.arg(TfArg<String> arg)
    : this._(arg);

  static const nodata = Route53ResolverFirewallRuleBlockResponse._(
    TfArgLiteral('NODATA'),
  );
  static const nxdomain = Route53ResolverFirewallRuleBlockResponse._(
    TfArgLiteral('NXDOMAIN'),
  );
  static const overrideCase = Route53ResolverFirewallRuleBlockResponse._(
    TfArgLiteral('OVERRIDE'),
  );

  static const List<Route53ResolverFirewallRuleBlockResponse> values = [
    nodata,
    nxdomain,
    overrideCase,
  ];
}

/// Route53 Resolver Firewall Rule Confidence enum for `confidence_threshold`.
extension type const Route53ResolverFirewallRuleConfidenceThreshold._(
  TfArg<String> _
) implements TfArg<String> {
  Route53ResolverFirewallRuleConfidenceThreshold.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleConfidenceThreshold.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleConfidenceThreshold.arg(TfArg<String> arg)
    : this._(arg);

  static const low = Route53ResolverFirewallRuleConfidenceThreshold._(
    TfArgLiteral('LOW'),
  );
  static const medium = Route53ResolverFirewallRuleConfidenceThreshold._(
    TfArgLiteral('MEDIUM'),
  );
  static const high = Route53ResolverFirewallRuleConfidenceThreshold._(
    TfArgLiteral('HIGH'),
  );

  static const List<Route53ResolverFirewallRuleConfidenceThreshold> values = [
    low,
    medium,
    high,
  ];
}

/// Route53 Resolver Firewall Rule Dns Threat enum for `dns_threat_protection`.
extension type const Route53ResolverFirewallRuleDnsThreatProtection._(
  TfArg<String> _
) implements TfArg<String> {
  Route53ResolverFirewallRuleDnsThreatProtection.variable(String name)
    : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleDnsThreatProtection.expression(String template)
    : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleDnsThreatProtection.arg(TfArg<String> arg)
    : this._(arg);

  static const dga = Route53ResolverFirewallRuleDnsThreatProtection._(
    TfArgLiteral('DGA'),
  );
  static const dnsTunneling = Route53ResolverFirewallRuleDnsThreatProtection._(
    TfArgLiteral('DNS_TUNNELING'),
  );
  static const dictionaryDga = Route53ResolverFirewallRuleDnsThreatProtection._(
    TfArgLiteral('DICTIONARY_DGA'),
  );

  static const List<Route53ResolverFirewallRuleDnsThreatProtection> values = [
    dga,
    dnsTunneling,
    dictionaryDga,
  ];
}

/// Route53 Resolver Firewall Rule Firewall Domain Redirection enum for `firewall_domain_redirection_action`.
extension type const Route53ResolverFirewallRuleFirewallDomainRedirectionAction._(
  TfArg<String> _
) implements TfArg<String> {
  Route53ResolverFirewallRuleFirewallDomainRedirectionAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleFirewallDomainRedirectionAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleFirewallDomainRedirectionAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const inspectRedirectionDomain =
      Route53ResolverFirewallRuleFirewallDomainRedirectionAction._(
        TfArgLiteral('INSPECT_REDIRECTION_DOMAIN'),
      );
  static const trustRedirectionDomain =
      Route53ResolverFirewallRuleFirewallDomainRedirectionAction._(
        TfArgLiteral('TRUST_REDIRECTION_DOMAIN'),
      );

  static const List<Route53ResolverFirewallRuleFirewallDomainRedirectionAction>
  values = [inspectRedirectionDomain, trustRedirectionDomain];
}

/// Factory wrapper for `aws_route53_resolver_firewall_rule`.
final class AwsRoute53ResolverFirewallRule extends Resource {
  static const String tfType = 'aws_route53_resolver_firewall_rule';

  AwsRoute53ResolverFirewallRule(
    super.localName, {
    required Route53ResolverFirewallRuleAction action,
    Route53ResolverFirewallRuleBlockOverrideDnsType? blockOverrideDnsType,
    TfArg<String>? blockOverrideDomain,
    TfArg<num>? blockOverrideTtl,
    Route53ResolverFirewallRuleBlockResponse? blockResponse,
    Route53ResolverFirewallRuleConfidenceThreshold? confidenceThreshold,
    Route53ResolverFirewallRuleDnsThreatProtection? dnsThreatProtection,
    TfArg<String>? firewallDomainListId,
    Route53ResolverFirewallRuleFirewallDomainRedirectionAction?
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
           'block_override_dns_type': ?blockOverrideDnsType,
           'block_override_domain': ?blockOverrideDomain,
           'block_override_ttl': ?blockOverrideTtl,
           'block_response': ?blockResponse,
           'confidence_threshold': ?confidenceThreshold,
           'dns_threat_protection': ?dnsThreatProtection,
           'firewall_domain_list_id': ?firewallDomainListId,
           'firewall_domain_redirection_action':
               ?firewallDomainRedirectionAction,
           'firewall_rule_group_id': firewallRuleGroupId,
           'name': name,
           'priority': priority,
           'q_type': ?qType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverFirewallRule>`.
  RefTo<AwsRoute53ResolverFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `firewall_threat_protection_id` attribute.
  TfRef<String> get firewallThreatProtectionId =>
      TfRef.attribute<String>(this, 'firewall_threat_protection_id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `block_override_dns_type` attribute.
  TfRef<String> get blockOverrideDnsType =>
      TfRef.attribute<String>(this, 'block_override_dns_type');

  /// Reference to `block_override_domain` attribute.
  TfRef<String> get blockOverrideDomain =>
      TfRef.attribute<String>(this, 'block_override_domain');

  /// Reference to `block_override_ttl` attribute.
  TfRef<num> get blockOverrideTtl =>
      TfRef.attribute<num>(this, 'block_override_ttl');

  /// Reference to `block_response` attribute.
  TfRef<String> get blockResponse =>
      TfRef.attribute<String>(this, 'block_response');

  /// Reference to `confidence_threshold` attribute.
  TfRef<String> get confidenceThreshold =>
      TfRef.attribute<String>(this, 'confidence_threshold');

  /// Reference to `dns_threat_protection` attribute.
  TfRef<String> get dnsThreatProtection =>
      TfRef.attribute<String>(this, 'dns_threat_protection');

  /// Reference to `firewall_domain_list_id` attribute.
  TfRef<String> get firewallDomainListId =>
      TfRef.attribute<String>(this, 'firewall_domain_list_id');

  /// Reference to `firewall_domain_redirection_action` attribute.
  TfRef<String> get firewallDomainRedirectionAction =>
      TfRef.attribute<String>(this, 'firewall_domain_redirection_action');

  /// Reference to `firewall_rule_group_id` attribute.
  TfRef<String> get firewallRuleGroupId =>
      TfRef.attribute<String>(this, 'firewall_rule_group_id');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `q_type` attribute.
  TfRef<String> get qType => TfRef.attribute<String>(this, 'q_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
