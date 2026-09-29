// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool_cidr_allocation`.
const Set<String> _awsVpcIpamPoolCidrAllocationSensitive = <String>{};

/// At most one of `cidr`, `netmask_length` on `aws_vpc_ipam_pool_cidr_allocation`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cidr(...)`.
sealed class VpcIpamPoolCidrAllocationCidr {
  const VpcIpamPoolCidrAllocationCidr();

  /// Sets `cidr`.
  const factory VpcIpamPoolCidrAllocationCidr.cidr(TfArg<String> cidr) =
      VpcIpamPoolCidrAllocationCidrCidr;

  /// Sets `netmask_length`.
  const factory VpcIpamPoolCidrAllocationCidr.netmaskLength(
    TfArg<num> netmaskLength,
  ) = VpcIpamPoolCidrAllocationCidrNetmaskLength;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcIpamPoolCidrAllocationCidr.cidr] choice: sets `cidr`.
final class VpcIpamPoolCidrAllocationCidrCidr
    extends VpcIpamPoolCidrAllocationCidr {
  const VpcIpamPoolCidrAllocationCidrCidr(this.cidr);

  final TfArg<String> cidr;

  @override
  String get blockKey => 'cidr';

  @override
  Map<String, Object?> encode() => {'cidr': cidr.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr': cidr};
}

/// The [VpcIpamPoolCidrAllocationCidr.netmaskLength] choice: sets `netmask_length`.
final class VpcIpamPoolCidrAllocationCidrNetmaskLength
    extends VpcIpamPoolCidrAllocationCidr {
  const VpcIpamPoolCidrAllocationCidrNetmaskLength(this.netmaskLength);

  final TfArg<num> netmaskLength;

  @override
  String get blockKey => 'netmask_length';

  @override
  Map<String, Object?> encode() => {'netmask_length': netmaskLength.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'netmask_length': netmaskLength};
}

/// Factory wrapper for `aws_vpc_ipam_pool_cidr_allocation`.
final class AwsVpcIpamPoolCidrAllocation extends Resource {
  static const String tfType = 'aws_vpc_ipam_pool_cidr_allocation';

  AwsVpcIpamPoolCidrAllocation({
    required super.localName,
    VpcIpamPoolCidrAllocationCidr? cidr,
    TfArg<String>? description,
    TfArg<List<String>>? disallowedCidrs,
    required TfArg<String> ipamPoolId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?cidr?.argMap,
           if (description != null) 'description': description,
           if (disallowedCidrs != null) 'disallowed_cidrs': disallowedCidrs,
           'ipam_pool_id': ipamPoolId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolCidrAllocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpamPoolCidrAllocation>`.
  RefTo<AwsVpcIpamPoolCidrAllocation> get ref => RefTo.of(this);

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
