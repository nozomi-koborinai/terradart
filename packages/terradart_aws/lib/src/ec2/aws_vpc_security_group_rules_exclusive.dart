// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_vpc_security_group_rules_exclusive`.
const Set<String> _awsVpcSecurityGroupRulesExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_vpc_security_group_rules_exclusive`.
final class AwsVpcSecurityGroupRulesExclusive extends Resource {
  static const String tfType = 'aws_vpc_security_group_rules_exclusive';

  AwsVpcSecurityGroupRulesExclusive({
    required super.localName,
    required TfArg<List<String>> egressRuleIds,
    required TfArg<List<String>> ingressRuleIds,
    TfArg<String>? region,
    required RefTo<AwsSecurityGroup> securityGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'egress_rule_ids': egressRuleIds,
           'ingress_rule_ids': ingressRuleIds,
           'region': ?region,
           'security_group_id': securityGroupId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcSecurityGroupRulesExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcSecurityGroupRulesExclusive>`.
  RefTo<AwsVpcSecurityGroupRulesExclusive> get ref => RefTo.of(this);

  /// Reference to `egress_rule_ids` attribute.
  TfRef<List<String>> get egressRuleIdsRef =>
      TfRef.attribute<List<String>>(this, 'egress_rule_ids');

  /// Reference to `ingress_rule_ids` attribute.
  TfRef<List<String>> get ingressRuleIdsRef =>
      TfRef.attribute<List<String>>(this, 'ingress_rule_ids');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupIdRef =>
      TfRef.attribute<String>(this, 'security_group_id');
}
