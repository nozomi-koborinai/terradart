// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_ipv6_cidr_block_association`.
const Set<String> _awsVpcIpv6CidrBlockAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipv6_cidr_block_association`.
final class AwsVpcIpv6CidrBlockAssociation extends Resource {
  static const String tfType = 'aws_vpc_ipv6_cidr_block_association';

  AwsVpcIpv6CidrBlockAssociation({
    required super.localName,
    TfArg<bool>? assignGeneratedIpv6CidrBlock,
    TfArg<String>? ipv6CidrBlock,
    TfArg<String>? ipv6IpamPoolId,
    TfArg<num>? ipv6NetmaskLength,
    TfArg<String>? ipv6Pool,
    TfArg<String>? region,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assign_generated_ipv6_cidr_block': ?assignGeneratedIpv6CidrBlock,
           'ipv6_cidr_block': ?ipv6CidrBlock,
           'ipv6_ipam_pool_id': ?ipv6IpamPoolId,
           'ipv6_netmask_length': ?ipv6NetmaskLength,
           'ipv6_pool': ?ipv6Pool,
           'region': ?region,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpv6CidrBlockAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpv6CidrBlockAssociation>`.
  RefTo<AwsVpcIpv6CidrBlockAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_source` attribute.
  TfRef<String> get ipSource => TfRef.attribute<String>(this, 'ip_source');

  /// Reference to `ipv6_address_attribute` attribute.
  TfRef<String> get ipv6AddressAttribute =>
      TfRef.attribute<String>(this, 'ipv6_address_attribute');
}
