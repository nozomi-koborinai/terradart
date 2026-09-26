// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_subnet`.
const Set<String> _awsSubnetSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_subnet` (derived from provider schema).
@immutable
final class DataSubnetFilter {
  const DataSubnetFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

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
    TfArg<String>? vpcId,
    List<DataSubnetFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (defaultForAz != null) 'default_for_az': defaultForAz,
           if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSubnetSensitive;

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
}
