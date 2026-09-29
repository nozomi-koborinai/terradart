// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_acl_rule`.
const Set<String> _awsNetworkAclRuleSensitive = <String>{};

/// Network Acl Rule Rule enum for `rule_action`.
enum NetworkAclRuleRuleAction implements TerraformEnum {
  allow('allow'),
  deny('deny');

  const NetworkAclRuleRuleAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `cidr_block`, `ipv6_cidr_block` on `aws_network_acl_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cidrBlock(...)`.
sealed class NetworkAclRuleCidrBlockOrIpv6CidrBlock {
  const NetworkAclRuleCidrBlockOrIpv6CidrBlock();

  /// Sets `cidr_block`.
  const factory NetworkAclRuleCidrBlockOrIpv6CidrBlock.cidrBlock(
    TfArg<String> cidrBlock,
  ) = NetworkAclRuleCidrBlockOrIpv6CidrBlockCidrBlock;

  /// Sets `ipv6_cidr_block`.
  const factory NetworkAclRuleCidrBlockOrIpv6CidrBlock.ipv6CidrBlock(
    TfArg<String> ipv6CidrBlock,
  ) = NetworkAclRuleCidrBlockOrIpv6CidrBlockIpv6CidrBlock;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkAclRuleCidrBlockOrIpv6CidrBlock.cidrBlock] choice: sets `cidr_block`.
final class NetworkAclRuleCidrBlockOrIpv6CidrBlockCidrBlock
    extends NetworkAclRuleCidrBlockOrIpv6CidrBlock {
  const NetworkAclRuleCidrBlockOrIpv6CidrBlockCidrBlock(this.cidrBlock);

  final TfArg<String> cidrBlock;

  @override
  String get blockKey => 'cidr_block';

  @override
  Map<String, Object?> encode() => {'cidr_block': cidrBlock.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr_block': cidrBlock};
}

/// The [NetworkAclRuleCidrBlockOrIpv6CidrBlock.ipv6CidrBlock] choice: sets `ipv6_cidr_block`.
final class NetworkAclRuleCidrBlockOrIpv6CidrBlockIpv6CidrBlock
    extends NetworkAclRuleCidrBlockOrIpv6CidrBlock {
  const NetworkAclRuleCidrBlockOrIpv6CidrBlockIpv6CidrBlock(this.ipv6CidrBlock);

  final TfArg<String> ipv6CidrBlock;

  @override
  String get blockKey => 'ipv6_cidr_block';

  @override
  Map<String, Object?> encode() => {
    'ipv6_cidr_block': ipv6CidrBlock.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv6_cidr_block': ipv6CidrBlock};
}

/// Factory wrapper for `aws_network_acl_rule`.
final class AwsNetworkAclRule extends Resource {
  static const String tfType = 'aws_network_acl_rule';

  AwsNetworkAclRule({
    required super.localName,
    required NetworkAclRuleCidrBlockOrIpv6CidrBlock cidrBlockOrIpv6CidrBlock,
    TfArg<bool>? egress,
    TfArg<num>? fromPort,
    TfArg<num>? icmpCode,
    TfArg<num>? icmpType,
    required TfArg<String> networkAclId,
    required TfArg<String> protocol,
    TfArg<String>? region,
    required TfArg<NetworkAclRuleRuleAction> ruleAction,
    required TfArg<num> ruleNumber,
    TfArg<num>? toPort,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...cidrBlockOrIpv6CidrBlock.argMap,
           if (egress != null) 'egress': egress,
           if (fromPort != null) 'from_port': fromPort,
           if (icmpCode != null) 'icmp_code': icmpCode,
           if (icmpType != null) 'icmp_type': icmpType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkAclRule>`.
  RefTo<AwsNetworkAclRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
