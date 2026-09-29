// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_vpc_security_group_ingress_rule`.
const Set<String> _awsVpcSecurityGroupIngressRuleSensitive = <String>{};

/// Factory wrapper for `aws_vpc_security_group_ingress_rule`.
final class AwsVpcSecurityGroupIngressRule extends Resource {
  static const String tfType = 'aws_vpc_security_group_ingress_rule';

  AwsVpcSecurityGroupIngressRule({
    required super.localName,
    TfArg<String>? cidrIpv4,
    TfArg<String>? cidrIpv6,
    TfArg<String>? description,
    TfArg<num>? fromPort,
    required TfArg<String> ipProtocol,
    TfArg<String>? prefixListId,
    RefTo<AwsSecurityGroup>? referencedSecurityGroupId,
    TfArg<String>? region,
    required RefTo<AwsSecurityGroup> securityGroupId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? toPort,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_ipv4': ?cidrIpv4,
           'cidr_ipv6': ?cidrIpv6,
           'description': ?description,
           'from_port': ?fromPort,
           'ip_protocol': ipProtocol,
           'prefix_list_id': ?prefixListId,
           'referenced_security_group_id': ?referencedSecurityGroupId?.encodeAs(
             'id',
           ),
           'region': ?region,
           'security_group_id': securityGroupId.encodeAs('id'),
           'tags': ?tags,
           'to_port': ?toPort,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcSecurityGroupIngressRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcSecurityGroupIngressRule>`.
  RefTo<AwsVpcSecurityGroupIngressRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `security_group_rule_id` attribute.
  TfRef<String> get securityGroupRuleId =>
      TfRef.attribute<String>(this, 'security_group_rule_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
