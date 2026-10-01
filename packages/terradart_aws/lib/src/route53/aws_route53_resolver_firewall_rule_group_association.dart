// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_route53_resolver_firewall_rule_group_association`.
const Set<String> _awsRoute53ResolverFirewallRuleGroupAssociationSensitive =
    <String>{};

/// Route53 Resolver Firewall Rule Group Association Mutation enum for `mutation_protection`.
extension type const Route53ResolverFirewallRuleGroupAssociationMutationProtection._(
  TfArg<String> _
) implements TfArg<String> {
  Route53ResolverFirewallRuleGroupAssociationMutationProtection.variable(
    String name,
  ) : this._(TfArg.variable(name));
  Route53ResolverFirewallRuleGroupAssociationMutationProtection.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Route53ResolverFirewallRuleGroupAssociationMutationProtection.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      Route53ResolverFirewallRuleGroupAssociationMutationProtection._(
        TfArgLiteral('ENABLED'),
      );
  static const disabled =
      Route53ResolverFirewallRuleGroupAssociationMutationProtection._(
        TfArgLiteral('DISABLED'),
      );

  static const List<
    Route53ResolverFirewallRuleGroupAssociationMutationProtection
  >
  values = [enabled, disabled];
}

/// Factory wrapper for `aws_route53_resolver_firewall_rule_group_association`.
final class AwsRoute53ResolverFirewallRuleGroupAssociation extends Resource {
  static const String tfType =
      'aws_route53_resolver_firewall_rule_group_association';

  AwsRoute53ResolverFirewallRuleGroupAssociation(
    super.localName, {
    required TfArg<String> firewallRuleGroupId,
    Route53ResolverFirewallRuleGroupAssociationMutationProtection?
    mutationProtection,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_rule_group_id': firewallRuleGroupId,
           'mutation_protection': ?mutationProtection,
           'name': name,
           'priority': priority,
           'region': ?region,
           'tags': ?tags,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverFirewallRuleGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverFirewallRuleGroupAssociation>`.
  RefTo<AwsRoute53ResolverFirewallRuleGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `firewall_rule_group_id` attribute.
  TfRef<String> get firewallRuleGroupId =>
      TfRef.attribute<String>(this, 'firewall_rule_group_id');

  /// Reference to `mutation_protection` attribute.
  TfRef<String> get mutationProtection =>
      TfRef.attribute<String>(this, 'mutation_protection');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
