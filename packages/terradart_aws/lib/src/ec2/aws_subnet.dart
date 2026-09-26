// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_subnet`.
const Set<String> _awsSubnetSensitive = <String>{};

/// Factory wrapper for `aws_subnet`.
final class AwsSubnet extends Resource {
  static const String tfType = 'aws_subnet';

  AwsSubnet({
    required super.localName,
    TfArg<bool>? assignIpv6AddressOnCreation,
    TfArg<String>? availabilityZone,
    TfArg<String>? availabilityZoneId,
    TfArg<String>? cidrBlock,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<bool>? enableDns64,
    TfArg<num>? enableLniAtDeviceIndex,
    TfArg<bool>? enableResourceNameDnsARecordOnLaunch,
    TfArg<bool>? enableResourceNameDnsAaaaRecordOnLaunch,
    TfArg<String>? ipv4IpamPoolId,
    TfArg<num>? ipv4NetmaskLength,
    TfArg<String>? ipv6CidrBlock,
    TfArg<String>? ipv6IpamPoolId,
    TfArg<bool>? ipv6Native,
    TfArg<num>? ipv6NetmaskLength,
    TfArg<bool>? mapCustomerOwnedIpOnLaunch,
    TfArg<bool>? mapPublicIpOnLaunch,
    TfArg<String>? outpostArn,
    TfArg<String>? privateDnsHostnameTypeOnLaunch,
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
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
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
           if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock,
           if (ipv6IpamPoolId != null) 'ipv6_ipam_pool_id': ipv6IpamPoolId,
           if (ipv6Native != null) 'ipv6_native': ipv6Native,
           if (ipv6NetmaskLength != null)
             'ipv6_netmask_length': ipv6NetmaskLength,
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
