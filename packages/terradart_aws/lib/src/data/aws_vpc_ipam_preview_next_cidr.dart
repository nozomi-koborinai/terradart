// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpc_ipam_preview_next_cidr.dart';

/// Sensitive field paths for `aws_vpc_ipam_preview_next_cidr`.
const Set<String> _awsVpcIpamPreviewNextCidrSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_preview_next_cidr`.
final class DataAwsVpcIpamPreviewNextCidr extends Data {
  static const String tfType = 'aws_vpc_ipam_preview_next_cidr';

  DataAwsVpcIpamPreviewNextCidr({
    required super.localName,
    TfArg<List<String>>? disallowedCidrs,
    required TfArg<String> ipamPoolId,
    TfArg<num>? netmaskLength,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disallowed_cidrs': ?disallowedCidrs,
           'ipam_pool_id': ipamPoolId,
           'netmask_length': ?netmaskLength,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPreviewNextCidrSensitive;

  /// A reference to the `aws_vpc_ipam_preview_next_cidr` this data source reads, for
  /// arguments typed `RefTo<AwsVpcIpamPreviewNextCidr>`.
  RefTo<AwsVpcIpamPreviewNextCidr> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `disallowed_cidrs` attribute.
  TfRef<List<String>> get disallowedCidrs =>
      TfRef.attribute<List<String>>(this, 'disallowed_cidrs');

  /// Reference to `ipam_pool_id` attribute.
  TfRef<String> get ipamPoolId => TfRef.attribute<String>(this, 'ipam_pool_id');

  /// Reference to `netmask_length` attribute.
  TfRef<num> get netmaskLength => TfRef.attribute<num>(this, 'netmask_length');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
