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

  /// Reference to `assign_generated_ipv6_cidr_block` attribute.
  TfRef<bool> get assignGeneratedIpv6CidrBlock =>
      TfRef.attribute<bool>(this, 'assign_generated_ipv6_cidr_block');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `ipv6_ipam_pool_id` attribute.
  TfRef<String> get ipv6IpamPoolId =>
      TfRef.attribute<String>(this, 'ipv6_ipam_pool_id');

  /// Reference to `ipv6_netmask_length` attribute.
  TfRef<num> get ipv6NetmaskLength =>
      TfRef.attribute<num>(this, 'ipv6_netmask_length');

  /// Reference to `ipv6_pool` attribute.
  TfRef<String> get ipv6Pool => TfRef.attribute<String>(this, 'ipv6_pool');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
