// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_subnet.dart';
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_subnet`.
const Set<String> _awsSubnetSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_subnet` (derived from provider schema).
@immutable
final class DataSubnetFilter {
  const DataSubnetFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_subnet`.
final class DataAwsSubnet extends Data {
  static const String tfType = 'aws_subnet';

  DataAwsSubnet({
    required super.localName,
    TfArg<String>? availabilityZone,
    TfArg<String>? availabilityZoneId,
    TfArg<String>? cidrBlock,
    TfArg<bool>? defaultForAz,
    TfArg<String>? ipv6CidrBlock,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<DataSubnetFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': ?availabilityZone,
           'availability_zone_id': ?availabilityZoneId,
           'cidr_block': ?cidrBlock,
           'default_for_az': ?defaultForAz,
           'ipv6_cidr_block': ?ipv6CidrBlock,
           'region': ?region,
           'state': ?state,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSubnetSensitive;

  /// A reference to the `aws_subnet` this data source reads, for
  /// arguments typed `RefTo<AwsSubnet>`.
  RefTo<AwsSubnet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `assign_ipv6_address_on_creation` attribute.
  TfRef<bool> get assignIpv6AddressOnCreation =>
      TfRef.attribute<bool>(this, 'assign_ipv6_address_on_creation');

  /// Reference to `available_ip_address_count` attribute.
  TfRef<num> get availableIpAddressCount =>
      TfRef.attribute<num>(this, 'available_ip_address_count');

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

  /// Reference to `ipv6_cidr_block_association_id` attribute.
  TfRef<String> get ipv6CidrBlockAssociationId =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block_association_id');

  /// Reference to `ipv6_native` attribute.
  TfRef<bool> get ipv6Native => TfRef.attribute<bool>(this, 'ipv6_native');

  /// Reference to `map_customer_owned_ip_on_launch` attribute.
  TfRef<bool> get mapCustomerOwnedIpOnLaunch =>
      TfRef.attribute<bool>(this, 'map_customer_owned_ip_on_launch');

  /// Reference to `map_public_ip_on_launch` attribute.
  TfRef<bool> get mapPublicIpOnLaunch =>
      TfRef.attribute<bool>(this, 'map_public_ip_on_launch');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `private_dns_hostname_type_on_launch` attribute.
  TfRef<String> get privateDnsHostnameTypeOnLaunch =>
      TfRef.attribute<String>(this, 'private_dns_hostname_type_on_launch');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `default_for_az` attribute.
  TfRef<bool> get defaultForAz => TfRef.attribute<bool>(this, 'default_for_az');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
