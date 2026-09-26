// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool_cidr_allocation`.
const Set<String> _awsVpcIpamPoolCidrAllocationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_pool_cidr_allocation`.
final class AwsVpcIpamPoolCidrAllocation extends Resource {
  static const String tfType = 'aws_vpc_ipam_pool_cidr_allocation';

  AwsVpcIpamPoolCidrAllocation({
    required super.localName,
    TfArg<String>? cidr,
    TfArg<String>? description,
    TfArg<List<String>>? disallowedCidrs,
    required TfArg<String> ipamPoolId,
    TfArg<num>? netmaskLength,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidr != null) 'cidr': cidr,
           if (description != null) 'description': description,
           if (disallowedCidrs != null) 'disallowed_cidrs': disallowedCidrs,
           'ipam_pool_id': ipamPoolId,
           if (netmaskLength != null) 'netmask_length': netmaskLength,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolCidrAllocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ipam_pool_allocation_id` attribute.
  TfRef<String> get ipamPoolAllocationId =>
      TfRef.attribute<String>(this, 'ipam_pool_allocation_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
