// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_default_network_acl`.
const Set<String> _awsDefaultNetworkAclSensitive = <String>{};

/// Typed helper for the `egress` block of
/// `aws_default_network_acl` (derived from provider schema).
@immutable
final class DefaultNetworkAclEgress {
  const DefaultNetworkAclEgress({
    required this.action,
    this.cidrBlock,
    required this.fromPort,
    this.icmpCode,
    this.icmpType,
    this.ipv6CidrBlock,
    required this.protocol,
    required this.ruleNo,
    required this.toPort,
  });

  final TfArg<String> action;

  final TfArg<String>? cidrBlock;

  final TfArg<num> fromPort;

  final TfArg<num>? icmpCode;

  final TfArg<num>? icmpType;

  final TfArg<String>? ipv6CidrBlock;

  final TfArg<String> protocol;

  final TfArg<num> ruleNo;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'cidr_block': ?cidrBlock?.toTfJson(),
    'from_port': fromPort.toTfJson(),
    'icmp_code': ?icmpCode?.toTfJson(),
    'icmp_type': ?icmpType?.toTfJson(),
    'ipv6_cidr_block': ?ipv6CidrBlock?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'rule_no': ruleNo.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Typed helper for the `ingress` block of
/// `aws_default_network_acl` (derived from provider schema).
@immutable
final class DefaultNetworkAclIngress {
  const DefaultNetworkAclIngress({
    required this.action,
    this.cidrBlock,
    required this.fromPort,
    this.icmpCode,
    this.icmpType,
    this.ipv6CidrBlock,
    required this.protocol,
    required this.ruleNo,
    required this.toPort,
  });

  final TfArg<String> action;

  final TfArg<String>? cidrBlock;

  final TfArg<num> fromPort;

  final TfArg<num>? icmpCode;

  final TfArg<num>? icmpType;

  final TfArg<String>? ipv6CidrBlock;

  final TfArg<String> protocol;

  final TfArg<num> ruleNo;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'cidr_block': ?cidrBlock?.toTfJson(),
    'from_port': fromPort.toTfJson(),
    'icmp_code': ?icmpCode?.toTfJson(),
    'icmp_type': ?icmpType?.toTfJson(),
    'ipv6_cidr_block': ?ipv6CidrBlock?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'rule_no': ruleNo.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Factory wrapper for `aws_default_network_acl`.
final class AwsDefaultNetworkAcl extends Resource {
  static const String tfType = 'aws_default_network_acl';

  AwsDefaultNetworkAcl({
    required super.localName,
    required TfArg<String> defaultNetworkAclId,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    List<DefaultNetworkAclEgress>? egress,
    List<DefaultNetworkAclIngress>? ingress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_network_acl_id': defaultNetworkAclId,
           'region': ?region,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           if (egress != null)
             'egress': TfArg.literal([for (final e in egress) e.encode()]),
           if (ingress != null)
             'ingress': TfArg.literal([for (final e in ingress) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultNetworkAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDefaultNetworkAcl>`.
  RefTo<AwsDefaultNetworkAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
