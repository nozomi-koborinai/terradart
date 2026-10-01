// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_acl_rule`.
const Set<String> _awsNetworkAclRuleSensitive = <String>{};

/// Network Acl Rule enum for `rule_action`.
extension type const NetworkAclRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  NetworkAclRuleAction.variable(String name) : this._(TfArg.variable(name));
  NetworkAclRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkAclRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = NetworkAclRuleAction._(TfArgLiteral('allow'));
  static const deny = NetworkAclRuleAction._(TfArgLiteral('deny'));

  static const List<NetworkAclRuleAction> values = [allow, deny];
}

/// Exactly one of `cidr_block`, `ipv6_cidr_block` on `aws_network_acl_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cidrBlock(...)`.
sealed class NetworkAclRuleCidr {
  const NetworkAclRuleCidr();

  /// Sets `cidr_block`.
  const factory NetworkAclRuleCidr.cidrBlock(TfArg<String> cidrBlock) =
      NetworkAclRuleCidrBlock;

  /// Sets `ipv6_cidr_block`.
  const factory NetworkAclRuleCidr.ipv6CidrBlock(TfArg<String> ipv6CidrBlock) =
      NetworkAclRuleCidrIpv6CidrBlock;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkAclRuleCidr.cidrBlock] choice: sets `cidr_block`.
final class NetworkAclRuleCidrBlock extends NetworkAclRuleCidr {
  const NetworkAclRuleCidrBlock(this.cidrBlock);

  final TfArg<String> cidrBlock;

  @internal
  @override
  String get blockKey => 'cidr_block';

  @internal
  @override
  Map<String, Object?> encode() => {'cidr_block': cidrBlock.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr_block': cidrBlock};
}

/// The [NetworkAclRuleCidr.ipv6CidrBlock] choice: sets `ipv6_cidr_block`.
final class NetworkAclRuleCidrIpv6CidrBlock extends NetworkAclRuleCidr {
  const NetworkAclRuleCidrIpv6CidrBlock(this.ipv6CidrBlock);

  final TfArg<String> ipv6CidrBlock;

  @internal
  @override
  String get blockKey => 'ipv6_cidr_block';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ipv6_cidr_block': ipv6CidrBlock.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv6_cidr_block': ipv6CidrBlock};
}

/// Factory wrapper for `aws_network_acl_rule`.
final class AwsNetworkAclRule extends Resource {
  static const String tfType = 'aws_network_acl_rule';

  AwsNetworkAclRule(
    super.localName, {
    required NetworkAclRuleCidr cidr,
    TfArg<bool>? egress,
    TfArg<num>? fromPort,
    TfArg<num>? icmpCode,
    TfArg<num>? icmpType,
    required TfArg<String> networkAclId,
    required TfArg<String> protocol,
    TfArg<String>? region,
    required NetworkAclRuleAction ruleAction,
    required TfArg<num> ruleNumber,
    TfArg<num>? toPort,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...cidr.argMap,
           'egress': ?egress,
           'from_port': ?fromPort,
           'icmp_code': ?icmpCode,
           'icmp_type': ?icmpType,
           'network_acl_id': networkAclId,
           'protocol': protocol,
           'region': ?region,
           'rule_action': ruleAction,
           'rule_number': ruleNumber,
           'to_port': ?toPort,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkAclRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkAclRule>`.
  RefTo<AwsNetworkAclRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `egress` attribute.
  TfRef<bool> get egress => TfRef.attribute<bool>(this, 'egress');

  /// Reference to `from_port` attribute.
  TfRef<num> get fromPort => TfRef.attribute<num>(this, 'from_port');

  /// Reference to `icmp_code` attribute.
  TfRef<num> get icmpCode => TfRef.attribute<num>(this, 'icmp_code');

  /// Reference to `icmp_type` attribute.
  TfRef<num> get icmpType => TfRef.attribute<num>(this, 'icmp_type');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `network_acl_id` attribute.
  TfRef<String> get networkAclId =>
      TfRef.attribute<String>(this, 'network_acl_id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_action` attribute.
  TfRef<String> get ruleAction => TfRef.attribute<String>(this, 'rule_action');

  /// Reference to `rule_number` attribute.
  TfRef<num> get ruleNumber => TfRef.attribute<num>(this, 'rule_number');

  /// Reference to `to_port` attribute.
  TfRef<num> get toPort => TfRef.attribute<num>(this, 'to_port');
}
