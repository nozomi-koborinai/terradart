// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_subnet`.
const Set<String> _awsDefaultSubnetSensitive = <String>{};

/// Default Subnet Private Dns Hostname Type On enum for `private_dns_hostname_type_on_launch`.
extension type const DefaultSubnetPrivateDnsHostnameTypeOnLaunch._(
  TfArg<String> _
) implements TfArg<String> {
  DefaultSubnetPrivateDnsHostnameTypeOnLaunch.variable(String name)
    : this._(TfArg.variable(name));
  DefaultSubnetPrivateDnsHostnameTypeOnLaunch.expression(String template)
    : this._(TfArg.expression(template));
  const DefaultSubnetPrivateDnsHostnameTypeOnLaunch.arg(TfArg<String> arg)
    : this._(arg);

  static const ipName = DefaultSubnetPrivateDnsHostnameTypeOnLaunch._(
    TfArgLiteral('ip-name'),
  );
  static const resourceName = DefaultSubnetPrivateDnsHostnameTypeOnLaunch._(
    TfArgLiteral('resource-name'),
  );

  static const List<DefaultSubnetPrivateDnsHostnameTypeOnLaunch> values = [
    ipName,
    resourceName,
  ];
}

/// Factory wrapper for `aws_default_subnet`.
final class AwsDefaultSubnet extends Resource {
  static const String tfType = 'aws_default_subnet';

  AwsDefaultSubnet(
    super.localName, {
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
    DefaultSubnetPrivateDnsHostnameTypeOnLaunch? privateDnsHostnameTypeOnLaunch,
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

  /// Reference to `assign_ipv6_address_on_creation` attribute.
  TfRef<bool> get assignIpv6AddressOnCreation =>
      TfRef.attribute<bool>(this, 'assign_ipv6_address_on_creation');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `enable_dns64` attribute.
  TfRef<bool> get enableDns64 => TfRef.attribute<bool>(this, 'enable_dns64');

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

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `ipv6_native` attribute.
  TfRef<bool> get ipv6Native => TfRef.attribute<bool>(this, 'ipv6_native');

  /// Reference to `map_customer_owned_ip_on_launch` attribute.
  TfRef<bool> get mapCustomerOwnedIpOnLaunch =>
      TfRef.attribute<bool>(this, 'map_customer_owned_ip_on_launch');

  /// Reference to `map_public_ip_on_launch` attribute.
  TfRef<bool> get mapPublicIpOnLaunch =>
      TfRef.attribute<bool>(this, 'map_public_ip_on_launch');

  /// Reference to `private_dns_hostname_type_on_launch` attribute.
  TfRef<String> get privateDnsHostnameTypeOnLaunch =>
      TfRef.attribute<String>(this, 'private_dns_hostname_type_on_launch');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
