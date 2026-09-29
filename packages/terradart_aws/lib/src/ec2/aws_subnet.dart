// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_subnet`.
const Set<String> _awsSubnetSensitive = <String>{};

/// Subnet Private Dns Hostname Type On enum for `private_dns_hostname_type_on_launch`.
enum SubnetPrivateDnsHostnameTypeOnLaunch implements TerraformEnum {
  ipName('ip-name'),
  resourceName('resource-name');

  const SubnetPrivateDnsHostnameTypeOnLaunch(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `availability_zone`, `availability_zone_id` on `aws_subnet`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.availabilityZone(...)`.
sealed class SubnetAvailabilityZone {
  const SubnetAvailabilityZone();

  /// Sets `availability_zone`.
  const factory SubnetAvailabilityZone.availabilityZone(
    TfArg<String> availabilityZone,
  ) = SubnetAvailabilityZoneAvailabilityZone;

  /// Sets `availability_zone_id`.
  const factory SubnetAvailabilityZone.availabilityZoneId(
    TfArg<String> availabilityZoneId,
  ) = SubnetAvailabilityZoneAvailabilityZoneId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SubnetAvailabilityZone.availabilityZone] choice: sets `availability_zone`.
final class SubnetAvailabilityZoneAvailabilityZone
    extends SubnetAvailabilityZone {
  const SubnetAvailabilityZoneAvailabilityZone(this.availabilityZone);

  final TfArg<String> availabilityZone;

  @override
  String get blockKey => 'availability_zone';

  @override
  Map<String, Object?> encode() => {
    'availability_zone': availabilityZone.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_zone': availabilityZone,
  };
}

/// The [SubnetAvailabilityZone.availabilityZoneId] choice: sets `availability_zone_id`.
final class SubnetAvailabilityZoneAvailabilityZoneId
    extends SubnetAvailabilityZone {
  const SubnetAvailabilityZoneAvailabilityZoneId(this.availabilityZoneId);

  final TfArg<String> availabilityZoneId;

  @override
  String get blockKey => 'availability_zone_id';

  @override
  Map<String, Object?> encode() => {
    'availability_zone_id': availabilityZoneId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_zone_id': availabilityZoneId,
  };
}

/// At most one of `ipv6_cidr_block`, `ipv6_netmask_length` on `aws_subnet`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv6CidrBlock(...)`.
sealed class SubnetIpv6 {
  const SubnetIpv6();

  /// Sets `ipv6_cidr_block`.
  const factory SubnetIpv6.ipv6CidrBlock(TfArg<String> ipv6CidrBlock) =
      SubnetIpv6Ipv6CidrBlock;

  /// Sets `ipv6_netmask_length`.
  const factory SubnetIpv6.ipv6NetmaskLength(TfArg<num> ipv6NetmaskLength) =
      SubnetIpv6Ipv6NetmaskLength;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SubnetIpv6.ipv6CidrBlock] choice: sets `ipv6_cidr_block`.
final class SubnetIpv6Ipv6CidrBlock extends SubnetIpv6 {
  const SubnetIpv6Ipv6CidrBlock(this.ipv6CidrBlock);

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

/// The [SubnetIpv6.ipv6NetmaskLength] choice: sets `ipv6_netmask_length`.
final class SubnetIpv6Ipv6NetmaskLength extends SubnetIpv6 {
  const SubnetIpv6Ipv6NetmaskLength(this.ipv6NetmaskLength);

  final TfArg<num> ipv6NetmaskLength;

  @override
  String get blockKey => 'ipv6_netmask_length';

  @override
  Map<String, Object?> encode() => {
    'ipv6_netmask_length': ipv6NetmaskLength.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_netmask_length': ipv6NetmaskLength,
  };
}

/// Factory wrapper for `aws_subnet`.
final class AwsSubnet extends Resource {
  static const String tfType = 'aws_subnet';

  AwsSubnet({
    required super.localName,
    TfArg<bool>? assignIpv6AddressOnCreation,
    SubnetAvailabilityZone? availabilityZone,
    TfArg<String>? cidrBlock,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<bool>? enableDns64,
    TfArg<num>? enableLniAtDeviceIndex,
    TfArg<bool>? enableResourceNameDnsARecordOnLaunch,
    TfArg<bool>? enableResourceNameDnsAaaaRecordOnLaunch,
    TfArg<String>? ipv4IpamPoolId,
    TfArg<num>? ipv4NetmaskLength,
    SubnetIpv6? ipv6,
    TfArg<String>? ipv6IpamPoolId,
    TfArg<bool>? ipv6Native,
    TfArg<bool>? mapCustomerOwnedIpOnLaunch,
    TfArg<bool>? mapPublicIpOnLaunch,
    TfArg<String>? outpostArn,
    TfArg<SubnetPrivateDnsHostnameTypeOnLaunch>? privateDnsHostnameTypeOnLaunch,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assignIpv6AddressOnCreation != null)
             'assign_ipv6_address_on_creation': assignIpv6AddressOnCreation,
           ...?availabilityZone?.argMap,
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (customerOwnedIpv4Pool != null)
             'customer_owned_ipv4_pool': customerOwnedIpv4Pool,
           if (enableDns64 != null) 'enable_dns64': enableDns64,
           if (enableLniAtDeviceIndex != null)
             'enable_lni_at_device_index': enableLniAtDeviceIndex,
           if (enableResourceNameDnsARecordOnLaunch != null)
             'enable_resource_name_dns_a_record_on_launch':
                 enableResourceNameDnsARecordOnLaunch,
           if (enableResourceNameDnsAaaaRecordOnLaunch != null)
             'enable_resource_name_dns_aaaa_record_on_launch':
                 enableResourceNameDnsAaaaRecordOnLaunch,
           if (ipv4IpamPoolId != null) 'ipv4_ipam_pool_id': ipv4IpamPoolId,
           if (ipv4NetmaskLength != null)
             'ipv4_netmask_length': ipv4NetmaskLength,
           ...?ipv6?.argMap,
           if (ipv6IpamPoolId != null) 'ipv6_ipam_pool_id': ipv6IpamPoolId,
           if (ipv6Native != null) 'ipv6_native': ipv6Native,
           if (mapCustomerOwnedIpOnLaunch != null)
             'map_customer_owned_ip_on_launch': mapCustomerOwnedIpOnLaunch,
           if (mapPublicIpOnLaunch != null)
             'map_public_ip_on_launch': mapPublicIpOnLaunch,
           if (outpostArn != null) 'outpost_arn': outpostArn,
           if (privateDnsHostnameTypeOnLaunch != null)
             'private_dns_hostname_type_on_launch':
                 privateDnsHostnameTypeOnLaunch,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSubnetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSubnet>`.
  RefTo<AwsSubnet> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipv6_cidr_block_association_id` attribute.
  TfRef<String> get ipv6CidrBlockAssociationId =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block_association_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
