// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc`.
const Set<String> _awsVpcSensitive = <String>{};

/// Factory wrapper for `aws_vpc`.
final class AwsVpc extends Resource {
  static const String tfType = 'aws_vpc';

  AwsVpc({
    required super.localName,
    TfArg<bool>? assignGeneratedIpv6CidrBlock,
    TfArg<String>? cidrBlock,
    TfArg<bool>? enableDnsHostnames,
    TfArg<bool>? enableDnsSupport,
    TfArg<bool>? enableNetworkAddressUsageMetrics,
    TfArg<String>? instanceTenancy,
    TfArg<String>? ipv4IpamPoolId,
    TfArg<num>? ipv4NetmaskLength,
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
           if (assignGeneratedIpv6CidrBlock != null)
             'assign_generated_ipv6_cidr_block': assignGeneratedIpv6CidrBlock,
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (enableDnsHostnames != null)
             'enable_dns_hostnames': enableDnsHostnames,
           if (enableDnsSupport != null) 'enable_dns_support': enableDnsSupport,
           if (enableNetworkAddressUsageMetrics != null)
             'enable_network_address_usage_metrics':
                 enableNetworkAddressUsageMetrics,
           if (instanceTenancy != null) 'instance_tenancy': instanceTenancy,
           if (ipv4IpamPoolId != null) 'ipv4_ipam_pool_id': ipv4IpamPoolId,
           if (ipv4NetmaskLength != null)
             'ipv4_netmask_length': ipv4NetmaskLength,
           if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock,
           if (ipv6CidrBlockNetworkBorderGroup != null)
             'ipv6_cidr_block_network_border_group':
                 ipv6CidrBlockNetworkBorderGroup,
           if (ipv6IpamPoolId != null) 'ipv6_ipam_pool_id': ipv6IpamPoolId,
           if (ipv6NetmaskLength != null)
             'ipv6_netmask_length': ipv6NetmaskLength,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

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

  /// Reference to `ipv6_association_id` attribute.
  TfRef<String> get ipv6AssociationId =>
      TfRef.attribute<String>(this, 'ipv6_association_id');

  /// Reference to `main_route_table_id` attribute.
  TfRef<String> get mainRouteTableId =>
      TfRef.attribute<String>(this, 'main_route_table_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
