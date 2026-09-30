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

  /// Reference to `cidr_ipv4` attribute.
  TfRef<String> get cidrIpv4Ref => TfRef.attribute<String>(this, 'cidr_ipv4');

  /// Reference to `cidr_ipv6` attribute.
  TfRef<String> get cidrIpv6Ref => TfRef.attribute<String>(this, 'cidr_ipv6');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `from_port` attribute.
  TfRef<num> get fromPortRef => TfRef.attribute<num>(this, 'from_port');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocolRef =>
      TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListIdRef =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `referenced_security_group_id` attribute.
  TfRef<String> get referencedSecurityGroupIdRef =>
      TfRef.attribute<String>(this, 'referenced_security_group_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupIdRef =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `to_port` attribute.
  TfRef<num> get toPortRef => TfRef.attribute<num>(this, 'to_port');
}
