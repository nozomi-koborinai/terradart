// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> securityGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'egress_rule_ids': egressRuleIds,
           'ingress_rule_ids': ingressRuleIds,
           if (region != null) 'region': region,
           'security_group_id': securityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcSecurityGroupRulesExclusiveSensitive;
}
