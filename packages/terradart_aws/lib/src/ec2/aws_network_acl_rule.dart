// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_acl_rule`.
const Set<String> _awsNetworkAclRuleSensitive = <String>{};

/// Factory wrapper for `aws_network_acl_rule`.
final class AwsNetworkAclRule extends Resource {
  static const String tfType = 'aws_network_acl_rule';

  AwsNetworkAclRule({
    required super.localName,
    TfArg<String>? cidrBlock,
    TfArg<bool>? egress,
    TfArg<num>? fromPort,
    TfArg<num>? icmpCode,
    TfArg<num>? icmpType,
    TfArg<String>? ipv6CidrBlock,
    required TfArg<String> networkAclId,
    required TfArg<String> protocol,
    TfArg<String>? region,
    required TfArg<String> ruleAction,
    required TfArg<num> ruleNumber,
    TfArg<num>? toPort,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (egress != null) 'egress': egress,
           if (fromPort != null) 'from_port': fromPort,
           if (icmpCode != null) 'icmp_code': icmpCode,
           if (icmpType != null) 'icmp_type': icmpType,
           if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock,
           'network_acl_id': networkAclId,
           'protocol': protocol,
           if (region != null) 'region': region,
           'rule_action': ruleAction,
           'rule_number': ruleNumber,
           if (toPort != null) 'to_port': toPort,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkAclRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
