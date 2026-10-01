// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_ipv4_cidr_block_association`.
const Set<String> _awsVpcIpv4CidrBlockAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipv4_cidr_block_association`.
final class AwsVpcIpv4CidrBlockAssociation extends Resource {
  static const String tfType = 'aws_vpc_ipv4_cidr_block_association';

  AwsVpcIpv4CidrBlockAssociation(
    super.localName, {
    TfArg<String>? cidrBlock,
    TfArg<String>? ipv4IpamPoolId,
    TfArg<num>? ipv4NetmaskLength,
    TfArg<String>? region,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_block': ?cidrBlock,
           'ipv4_ipam_pool_id': ?ipv4IpamPoolId,
           'ipv4_netmask_length': ?ipv4NetmaskLength,
           'region': ?region,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpv4CidrBlockAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpv4CidrBlockAssociation>`.
  RefTo<AwsVpcIpv4CidrBlockAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `ipv4_ipam_pool_id` attribute.
  TfRef<String> get ipv4IpamPoolId =>
      TfRef.attribute<String>(this, 'ipv4_ipam_pool_id');

  /// Reference to `ipv4_netmask_length` attribute.
  TfRef<num> get ipv4NetmaskLength =>
      TfRef.attribute<num>(this, 'ipv4_netmask_length');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
