// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

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
  ) = SubnetAvailabilityZoneChoice;

  /// Sets `availability_zone_id`.
  const factory SubnetAvailabilityZone.availabilityZoneId(
    TfArg<String> availabilityZoneId,
  ) = SubnetAvailabilityZoneId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SubnetAvailabilityZone.availabilityZone] choice: sets `availability_zone`.
final class SubnetAvailabilityZoneChoice extends SubnetAvailabilityZone {
  const SubnetAvailabilityZoneChoice(this.availabilityZone);

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
final class SubnetAvailabilityZoneId extends SubnetAvailabilityZone {
  const SubnetAvailabilityZoneId(this.availabilityZoneId);

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
      SubnetIpv6CidrBlock;

  /// Sets `ipv6_netmask_length`.
  const factory SubnetIpv6.ipv6NetmaskLength(TfArg<num> ipv6NetmaskLength) =
      SubnetIpv6NetmaskLength;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SubnetIpv6.ipv6CidrBlock] choice: sets `ipv6_cidr_block`.
final class SubnetIpv6CidrBlock extends SubnetIpv6 {
  const SubnetIpv6CidrBlock(this.ipv6CidrBlock);

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
final class SubnetIpv6NetmaskLength extends SubnetIpv6 {
  const SubnetIpv6NetmaskLength(this.ipv6NetmaskLength);

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
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assign_ipv6_address_on_creation': ?assignIpv6AddressOnCreation,
           ...?availabilityZone?.argMap,
           'cidr_block': ?cidrBlock,
           'customer_owned_ipv4_pool': ?customerOwnedIpv4Pool,
           'enable_dns64': ?enableDns64,
           'enable_lni_at_device_index': ?enableLniAtDeviceIndex,
           'enable_resource_name_dns_a_record_on_launch':
               ?enableResourceNameDnsARecordOnLaunch,
           'enable_resource_name_dns_aaaa_record_on_launch':
               ?enableResourceNameDnsAaaaRecordOnLaunch,
           'ipv4_ipam_pool_id': ?ipv4IpamPoolId,
           'ipv4_netmask_length': ?ipv4NetmaskLength,
           ...?ipv6?.argMap,
           'ipv6_ipam_pool_id': ?ipv6IpamPoolId,
           'ipv6_native': ?ipv6Native,
           'map_customer_owned_ip_on_launch': ?mapCustomerOwnedIpOnLaunch,
           'map_public_ip_on_launch': ?mapPublicIpOnLaunch,
           'outpost_arn': ?outpostArn,
           'private_dns_hostname_type_on_launch':
               ?privateDnsHostnameTypeOnLaunch,
           'region': ?region,
           'tags': ?tags,
           'vpc_id': vpcId.encodeAs('id'),
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

  /// Reference to `assign_ipv6_address_on_creation` attribute.
  TfRef<bool> get assignIpv6AddressOnCreation =>
      TfRef.attribute<bool>(this, 'assign_ipv6_address_on_creation');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `enable_dns64` attribute.
  TfRef<bool> get enableDns64 => TfRef.attribute<bool>(this, 'enable_dns64');

  /// Reference to `enable_lni_at_device_index` attribute.
  TfRef<num> get enableLniAtDeviceIndex =>
      TfRef.attribute<num>(this, 'enable_lni_at_device_index');

  /// Reference to `enable_resource_name_dns_a_record_on_launch` attribute.
  TfRef<bool> get enableResourceNameDnsARecordOnLaunch => TfRef.attribute<bool>(
    this,
    'enable_resource_name_dns_a_record_on_launch',
  );

  /// Reference to `enable_resource_name_dns_aaaa_record_on_launch` attribute.
  TfRef<bool> get enableResourceNameDnsAaaaRecordOnLaunch =>
      TfRef.attribute<bool>(
        this,
        'enable_resource_name_dns_aaaa_record_on_launch',
      );

  /// Reference to `ipv4_ipam_pool_id` attribute.
  TfRef<String> get ipv4IpamPoolId =>
      TfRef.attribute<String>(this, 'ipv4_ipam_pool_id');

  /// Reference to `ipv4_netmask_length` attribute.
  TfRef<num> get ipv4NetmaskLength =>
      TfRef.attribute<num>(this, 'ipv4_netmask_length');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `ipv6_ipam_pool_id` attribute.
  TfRef<String> get ipv6IpamPoolId =>
      TfRef.attribute<String>(this, 'ipv6_ipam_pool_id');

  /// Reference to `ipv6_native` attribute.
  TfRef<bool> get ipv6Native => TfRef.attribute<bool>(this, 'ipv6_native');

  /// Reference to `ipv6_netmask_length` attribute.
  TfRef<num> get ipv6NetmaskLength =>
      TfRef.attribute<num>(this, 'ipv6_netmask_length');

  /// Reference to `map_customer_owned_ip_on_launch` attribute.
  TfRef<bool> get mapCustomerOwnedIpOnLaunch =>
      TfRef.attribute<bool>(this, 'map_customer_owned_ip_on_launch');

  /// Reference to `map_public_ip_on_launch` attribute.
  TfRef<bool> get mapPublicIpOnLaunch =>
      TfRef.attribute<bool>(this, 'map_public_ip_on_launch');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `private_dns_hostname_type_on_launch` attribute.
  TfRef<String> get privateDnsHostnameTypeOnLaunch =>
      TfRef.attribute<String>(this, 'private_dns_hostname_type_on_launch');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
