// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_security_group_rule`.
const Set<String> _awsSecurityGroupRuleSensitive = <String>{};

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
    required TfArg<String> securityGroupId,
    TfArg<bool>? self,
    TfArg<String>? sourceSecurityGroupId,
    required TfArg<num> toPort,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidrBlocks != null) 'cidr_blocks': cidrBlocks,
           if (description != null) 'description': description,
           'from_port': fromPort,
           if (ipv6CidrBlocks != null) 'ipv6_cidr_blocks': ipv6CidrBlocks,
           if (prefixListIds != null) 'prefix_list_ids': prefixListIds,
           'protocol': protocol,
           if (region != null) 'region': region,
           'security_group_id': securityGroupId,
           if (self != null) 'self': self,
           if (sourceSecurityGroupId != null)
             'source_security_group_id': sourceSecurityGroupId,
           'to_port': toPort,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityGroupRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `security_group_rule_id` attribute.
  TfRef<String> get securityGroupRuleId =>
      TfRef.attribute<String>(this, 'security_group_rule_id');
}
