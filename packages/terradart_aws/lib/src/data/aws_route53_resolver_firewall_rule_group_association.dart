// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_firewall_rule_group_association`.
const Set<String> _awsRoute53ResolverFirewallRuleGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_route53_resolver_firewall_rule_group_association`.
final class DataAwsRoute53ResolverFirewallRuleGroupAssociation extends Data {
  static const String tfType =
      'aws_route53_resolver_firewall_rule_group_association';

  DataAwsRoute53ResolverFirewallRuleGroupAssociation({
    required super.localName,
    required TfArg<String> firewallRuleGroupAssociationId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'firewall_rule_group_association_id': firewallRuleGroupAssociationId,
           if (region != null) 'region': region,
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

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `creator_request_id` attribute.
  TfRef<String> get creatorRequestId =>
      TfRef.attribute<String>(this, 'creator_request_id');

  /// Reference to `firewall_rule_group_id` attribute.
  TfRef<String> get firewallRuleGroupId =>
      TfRef.attribute<String>(this, 'firewall_rule_group_id');

  /// Reference to `managed_owner_name` attribute.
  TfRef<String> get managedOwnerName =>
      TfRef.attribute<String>(this, 'managed_owner_name');

  /// Reference to `modification_time` attribute.
  TfRef<String> get modificationTime =>
      TfRef.attribute<String>(this, 'modification_time');

  /// Reference to `mutation_protection` attribute.
  TfRef<String> get mutationProtection =>
      TfRef.attribute<String>(this, 'mutation_protection');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
