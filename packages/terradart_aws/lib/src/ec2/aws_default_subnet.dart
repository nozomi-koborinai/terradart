// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_subnet`.
const Set<String> _awsDefaultSubnetSensitive = <String>{};

/// Factory wrapper for `aws_default_subnet`.
final class AwsDefaultSubnet extends Resource {
  static const String tfType = 'aws_default_subnet';

  AwsDefaultSubnet({
    required super.localName,
    TfArg<bool>? assignIpv6AddressOnCreation,
    required TfArg<String> availabilityZone,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<bool>? enableDns64,
    TfArg<bool>? enableResourceNameDnsARecordOnLaunch,
    TfArg<bool>? enableResourceNameDnsAaaaRecordOnLaunch,
    TfArg<bool>? forceDestroy,
    TfArg<String>? ipv6CidrBlock,
    TfArg<bool>? ipv6Native,
    TfArg<bool>? mapCustomerOwnedIpOnLaunch,
    TfArg<bool>? mapPublicIpOnLaunch,
    TfArg<String>? privateDnsHostnameTypeOnLaunch,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assignIpv6AddressOnCreation != null)
             'assign_ipv6_address_on_creation': assignIpv6AddressOnCreation,
           'availability_zone': availabilityZone,
           if (customerOwnedIpv4Pool != null)
             'customer_owned_ipv4_pool': customerOwnedIpv4Pool,
           if (enableDns64 != null) 'enable_dns64': enableDns64,
           if (enableResourceNameDnsARecordOnLaunch != null)
             'enable_resource_name_dns_a_record_on_launch':
                 enableResourceNameDnsARecordOnLaunch,
           if (enableResourceNameDnsAaaaRecordOnLaunch != null)
             'enable_resource_name_dns_aaaa_record_on_launch':
                 enableResourceNameDnsAaaaRecordOnLaunch,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock,
           if (ipv6Native != null) 'ipv6_native': ipv6Native,
           if (mapCustomerOwnedIpOnLaunch != null)
             'map_customer_owned_ip_on_launch': mapCustomerOwnedIpOnLaunch,
           if (mapPublicIpOnLaunch != null)
             'map_public_ip_on_launch': mapPublicIpOnLaunch,
           if (privateDnsHostnameTypeOnLaunch != null)
             'private_dns_hostname_type_on_launch':
                 privateDnsHostnameTypeOnLaunch,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultSubnetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `enable_lni_at_device_index` attribute.
  TfRef<num> get enableLniAtDeviceIndex =>
      TfRef.attribute<num>(this, 'enable_lni_at_device_index');

  /// Reference to `existing_default_subnet` attribute.
  TfRef<bool> get existingDefaultSubnet =>
      TfRef.attribute<bool>(this, 'existing_default_subnet');

  /// Reference to `ipv6_cidr_block_association_id` attribute.
  TfRef<String> get ipv6CidrBlockAssociationId =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block_association_id');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
