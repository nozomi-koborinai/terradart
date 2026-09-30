// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_vpc`.
const Set<String> _awsDefaultVpcSensitive = <String>{};

/// Factory wrapper for `aws_default_vpc`.
final class AwsDefaultVpc extends Resource {
  static const String tfType = 'aws_default_vpc';

  AwsDefaultVpc({
    required super.localName,
    TfArg<bool>? assignGeneratedIpv6CidrBlock,
    TfArg<bool>? enableDnsHostnames,
    TfArg<bool>? enableDnsSupport,
    TfArg<bool>? enableNetworkAddressUsageMetrics,
    TfArg<bool>? forceDestroy,
    TfArg<String>? ipv6CidrBlock,
    TfArg<String>? ipv6CidrBlockNetworkBorderGroup,
    TfArg<String>? ipv6IpamPoolId,
    TfArg<num>? ipv6NetmaskLength,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assign_generated_ipv6_cidr_block': ?assignGeneratedIpv6CidrBlock,
           'enable_dns_hostnames': ?enableDnsHostnames,
           'enable_dns_support': ?enableDnsSupport,
           'enable_network_address_usage_metrics':
               ?enableNetworkAddressUsageMetrics,
           'force_destroy': ?forceDestroy,
           'ipv6_cidr_block': ?ipv6CidrBlock,
           'ipv6_cidr_block_network_border_group':
               ?ipv6CidrBlockNetworkBorderGroup,
           'ipv6_ipam_pool_id': ?ipv6IpamPoolId,
           'ipv6_netmask_length': ?ipv6NetmaskLength,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultVpcSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDefaultVpc>`.
  RefTo<AwsDefaultVpc> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `default_network_acl_id` attribute.
  TfRef<String> get defaultNetworkAclId =>
      TfRef.attribute<String>(this, 'default_network_acl_id');

  /// Reference to `default_route_table_id` attribute.
  TfRef<String> get defaultRouteTableId =>
      TfRef.attribute<String>(this, 'default_route_table_id');

  /// Reference to `default_security_group_id` attribute.
  TfRef<String> get defaultSecurityGroupId =>
      TfRef.attribute<String>(this, 'default_security_group_id');

  /// Reference to `dhcp_options_id` attribute.
  TfRef<String> get dhcpOptionsId =>
      TfRef.attribute<String>(this, 'dhcp_options_id');

  /// Reference to `existing_default_vpc` attribute.
  TfRef<bool> get existingDefaultVpc =>
      TfRef.attribute<bool>(this, 'existing_default_vpc');

  /// Reference to `instance_tenancy` attribute.
  TfRef<String> get instanceTenancy =>
      TfRef.attribute<String>(this, 'instance_tenancy');

  /// Reference to `ipv6_association_id` attribute.
  TfRef<String> get ipv6AssociationId =>
      TfRef.attribute<String>(this, 'ipv6_association_id');

  /// Reference to `main_route_table_id` attribute.
  TfRef<String> get mainRouteTableId =>
      TfRef.attribute<String>(this, 'main_route_table_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `assign_generated_ipv6_cidr_block` attribute.
  TfRef<bool> get assignGeneratedIpv6CidrBlockRef =>
      TfRef.attribute<bool>(this, 'assign_generated_ipv6_cidr_block');

  /// Reference to `enable_dns_hostnames` attribute.
  TfRef<bool> get enableDnsHostnamesRef =>
      TfRef.attribute<bool>(this, 'enable_dns_hostnames');

  /// Reference to `enable_dns_support` attribute.
  TfRef<bool> get enableDnsSupportRef =>
      TfRef.attribute<bool>(this, 'enable_dns_support');

  /// Reference to `enable_network_address_usage_metrics` attribute.
  TfRef<bool> get enableNetworkAddressUsageMetricsRef =>
      TfRef.attribute<bool>(this, 'enable_network_address_usage_metrics');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroyRef =>
      TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlockRef =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `ipv6_cidr_block_network_border_group` attribute.
  TfRef<String> get ipv6CidrBlockNetworkBorderGroupRef =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block_network_border_group');

  /// Reference to `ipv6_ipam_pool_id` attribute.
  TfRef<String> get ipv6IpamPoolIdRef =>
      TfRef.attribute<String>(this, 'ipv6_ipam_pool_id');

  /// Reference to `ipv6_netmask_length` attribute.
  TfRef<num> get ipv6NetmaskLengthRef =>
      TfRef.attribute<num>(this, 'ipv6_netmask_length');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
