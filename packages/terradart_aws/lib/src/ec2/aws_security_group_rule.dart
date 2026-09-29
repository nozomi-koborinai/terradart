// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_security_group_rule`.
const Set<String> _awsSecurityGroupRuleSensitive = <String>{};

/// Security Group Rule enum for `type`.
enum SecurityGroupRuleType implements TerraformEnum {
  egress('egress'),
  ingress('ingress');

  const SecurityGroupRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_security_group_rule`.
final class AwsSecurityGroupRule extends Resource {
  static const String tfType = 'aws_security_group_rule';

  AwsSecurityGroupRule({
    required super.localName,
    TfArg<List<String>>? cidrBlocks,
    TfArg<String>? description,
    required TfArg<num> fromPort,
    TfArg<List<String>>? ipv6CidrBlocks,
    TfArg<List<String>>? prefixListIds,
    required TfArg<String> protocol,
    TfArg<String>? region,
    required RefTo<AwsSecurityGroup> securityGroupId,
    TfArg<bool>? self,
    RefTo<AwsSecurityGroup>? sourceSecurityGroupId,
    required TfArg<num> toPort,
    required TfArg<SecurityGroupRuleType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_blocks': ?cidrBlocks,
           'description': ?description,
           'from_port': fromPort,
           'ipv6_cidr_blocks': ?ipv6CidrBlocks,
           'prefix_list_ids': ?prefixListIds,
           'protocol': protocol,
           'region': ?region,
           'security_group_id': securityGroupId.encodeAs('id'),
           'self': ?self,
           'source_security_group_id': ?sourceSecurityGroupId?.encodeAs('id'),
           'to_port': toPort,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityGroupRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityGroupRule>`.
  RefTo<AwsSecurityGroupRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `security_group_rule_id` attribute.
  TfRef<String> get securityGroupRuleId =>
      TfRef.attribute<String>(this, 'security_group_rule_id');
}
