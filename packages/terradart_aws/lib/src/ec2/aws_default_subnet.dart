// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_subnet`.
const Set<String> _awsDefaultSubnetSensitive = <String>{};

/// Default Subnet Private Dns Hostname Type On enum for `private_dns_hostname_type_on_launch`.
enum DefaultSubnetPrivateDnsHostnameTypeOnLaunch implements TerraformEnum {
  ipName('ip-name'),
  resourceName('resource-name');

  const DefaultSubnetPrivateDnsHostnameTypeOnLaunch(this.terraformValue);
  @override
  final String terraformValue;
}

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
    TfArg<DefaultSubnetPrivateDnsHostnameTypeOnLaunch>?
    privateDnsHostnameTypeOnLaunch,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assign_ipv6_address_on_creation': ?assignIpv6AddressOnCreation,
           'availability_zone': availabilityZone,
           'customer_owned_ipv4_pool': ?customerOwnedIpv4Pool,
           'enable_dns64': ?enableDns64,
           'enable_resource_name_dns_a_record_on_launch':
               ?enableResourceNameDnsARecordOnLaunch,
           'enable_resource_name_dns_aaaa_record_on_launch':
               ?enableResourceNameDnsAaaaRecordOnLaunch,
           'force_destroy': ?forceDestroy,
           'ipv6_cidr_block': ?ipv6CidrBlock,
           'ipv6_native': ?ipv6Native,
           'map_customer_owned_ip_on_launch': ?mapCustomerOwnedIpOnLaunch,
           'map_public_ip_on_launch': ?mapPublicIpOnLaunch,
           'private_dns_hostname_type_on_launch':
               ?privateDnsHostnameTypeOnLaunch,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultSubnetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDefaultSubnet>`.
  RefTo<AwsDefaultSubnet> get ref => RefTo.of(this);

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
