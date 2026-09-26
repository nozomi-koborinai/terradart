// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_security_group_egress_rule`.
const Set<String> _awsVpcSecurityGroupEgressRuleSensitive = <String>{};

/// Factory wrapper for `aws_vpc_security_group_egress_rule`.
final class AwsVpcSecurityGroupEgressRule extends Resource {
  static const String tfType = 'aws_vpc_security_group_egress_rule';

  AwsVpcSecurityGroupEgressRule({
    required super.localName,
    TfArg<String>? cidrIpv4,
    TfArg<String>? cidrIpv6,
    TfArg<String>? description,
    TfArg<num>? fromPort,
    required TfArg<String> ipProtocol,
    TfArg<String>? prefixListId,
    TfArg<String>? referencedSecurityGroupId,
    TfArg<String>? region,
    required TfArg<String> securityGroupId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? toPort,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidrIpv4 != null) 'cidr_ipv4': cidrIpv4,
           if (cidrIpv6 != null) 'cidr_ipv6': cidrIpv6,
           if (description != null) 'description': description,
           if (fromPort != null) 'from_port': fromPort,
           'ip_protocol': ipProtocol,
           if (prefixListId != null) 'prefix_list_id': prefixListId,
           if (referencedSecurityGroupId != null)
             'referenced_security_group_id': referencedSecurityGroupId,
           if (region != null) 'region': region,
           'security_group_id': securityGroupId,
           if (tags != null) 'tags': tags,
           if (toPort != null) 'to_port': toPort,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcSecurityGroupEgressRuleSensitive;

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
