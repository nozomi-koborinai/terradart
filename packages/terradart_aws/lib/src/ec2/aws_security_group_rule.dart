// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_security_group_rule`.
const Set<String> _awsSecurityGroupRuleSensitive = <String>{};

/// Security Group Rule enum for `type`.
extension type const SecurityGroupRuleType._(TfArg<String> _)
    implements TfArg<String> {
  SecurityGroupRuleType.variable(String name) : this._(TfArg.variable(name));
  SecurityGroupRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityGroupRuleType.arg(TfArg<String> arg) : this._(arg);

  static const egress = SecurityGroupRuleType._(TfArgLiteral('egress'));
  static const ingress = SecurityGroupRuleType._(TfArgLiteral('ingress'));

  static const List<SecurityGroupRuleType> values = [egress, ingress];
}

/// Factory wrapper for `aws_security_group_rule`.
final class AwsSecurityGroupRule extends Resource {
  static const String tfType = 'aws_security_group_rule';

  AwsSecurityGroupRule(
    super.localName, {
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
    required SecurityGroupRuleType type,
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

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `from_port` attribute.
  TfRef<num> get fromPort => TfRef.attribute<num>(this, 'from_port');

  /// Reference to `ipv6_cidr_blocks` attribute.
  TfRef<List<String>> get ipv6CidrBlocks =>
      TfRef.attribute<List<String>>(this, 'ipv6_cidr_blocks');

  /// Reference to `prefix_list_ids` attribute.
  TfRef<List<String>> get prefixListIds =>
      TfRef.attribute<List<String>>(this, 'prefix_list_ids');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `self` attribute.
  TfRef<bool> get self => TfRef.attribute<bool>(this, 'self');

  /// Reference to `source_security_group_id` attribute.
  TfRef<String> get sourceSecurityGroupId =>
      TfRef.attribute<String>(this, 'source_security_group_id');

  /// Reference to `to_port` attribute.
  TfRef<num> get toPort => TfRef.attribute<num>(this, 'to_port');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
