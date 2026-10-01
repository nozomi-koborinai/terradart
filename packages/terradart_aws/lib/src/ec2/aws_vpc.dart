// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc`.
const Set<String> _awsVpcSensitive = <String>{};

/// Vpc Instance enum for `instance_tenancy`.
extension type const VpcInstanceTenancy._(TfArg<String> _)
    implements TfArg<String> {
  VpcInstanceTenancy.variable(String name) : this._(TfArg.variable(name));
  VpcInstanceTenancy.expression(String template)
    : this._(TfArg.expression(template));
  const VpcInstanceTenancy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = VpcInstanceTenancy._(TfArgLiteral('default'));
  static const dedicated = VpcInstanceTenancy._(TfArgLiteral('dedicated'));

  static const List<VpcInstanceTenancy> values = [defaultCase, dedicated];
}

/// At most one of `cidr_block`, `ipv4_netmask_length` on `aws_vpc`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cidrBlock(...)`.
sealed class VpcIpv4Cidr {
  const VpcIpv4Cidr();

  /// Sets `cidr_block`.
  const factory VpcIpv4Cidr.cidrBlock(TfArg<String> cidrBlock) =
      VpcIpv4CidrBlock;

  /// Sets `ipv4_netmask_length`.
  const factory VpcIpv4Cidr.ipv4NetmaskLength(TfArg<num> ipv4NetmaskLength) =
      VpcIpv4CidrIpv4NetmaskLength;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcIpv4Cidr.cidrBlock] choice: sets `cidr_block`.
final class VpcIpv4CidrBlock extends VpcIpv4Cidr {
  const VpcIpv4CidrBlock(this.cidrBlock);

  final TfArg<String> cidrBlock;

  @override
  String get blockKey => 'cidr_block';

  @override
  Map<String, Object?> encode() => {'cidr_block': cidrBlock.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr_block': cidrBlock};
}

/// The [VpcIpv4Cidr.ipv4NetmaskLength] choice: sets `ipv4_netmask_length`.
final class VpcIpv4CidrIpv4NetmaskLength extends VpcIpv4Cidr {
  const VpcIpv4CidrIpv4NetmaskLength(this.ipv4NetmaskLength);

  final TfArg<num> ipv4NetmaskLength;

  @override
  String get blockKey => 'ipv4_netmask_length';

  @override
  Map<String, Object?> encode() => {
    'ipv4_netmask_length': ipv4NetmaskLength.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv4_netmask_length': ipv4NetmaskLength,
  };
}

/// Factory wrapper for `aws_vpc`.
final class AwsVpc extends Resource {
  static const String tfType = 'aws_vpc';

  AwsVpc(
    super.localName, {
    TfArg<bool>? assignGeneratedIpv6CidrBlock,
    VpcIpv4Cidr? ipv4Cidr,
    TfArg<bool>? enableDnsHostnames,
    TfArg<bool>? enableDnsSupport,
    TfArg<bool>? enableNetworkAddressUsageMetrics,
    VpcInstanceTenancy? instanceTenancy,
    TfArg<String>? ipv4IpamPoolId,
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
           ...?ipv4Cidr?.argMap,
           'enable_dns_hostnames': ?enableDnsHostnames,
           'enable_dns_support': ?enableDnsSupport,
           'enable_network_address_usage_metrics':
               ?enableNetworkAddressUsageMetrics,
           'instance_tenancy': ?instanceTenancy,
           'ipv4_ipam_pool_id': ?ipv4IpamPoolId,
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
  Set<String> get sensitiveFields => _awsVpcSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpc>`.
  RefTo<AwsVpc> get ref => RefTo.of(this);

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

  /// Reference to `assign_generated_ipv6_cidr_block` attribute.
  TfRef<bool> get assignGeneratedIpv6CidrBlock =>
      TfRef.attribute<bool>(this, 'assign_generated_ipv6_cidr_block');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `enable_dns_hostnames` attribute.
  TfRef<bool> get enableDnsHostnames =>
      TfRef.attribute<bool>(this, 'enable_dns_hostnames');

  /// Reference to `enable_dns_support` attribute.
  TfRef<bool> get enableDnsSupport =>
      TfRef.attribute<bool>(this, 'enable_dns_support');

  /// Reference to `enable_network_address_usage_metrics` attribute.
  TfRef<bool> get enableNetworkAddressUsageMetrics =>
      TfRef.attribute<bool>(this, 'enable_network_address_usage_metrics');

  /// Reference to `instance_tenancy` attribute.
  TfRef<String> get instanceTenancy =>
      TfRef.attribute<String>(this, 'instance_tenancy');

  /// Reference to `ipv4_ipam_pool_id` attribute.
  TfRef<String> get ipv4IpamPoolId =>
      TfRef.attribute<String>(this, 'ipv4_ipam_pool_id');

  /// Reference to `ipv4_netmask_length` attribute.
  TfRef<num> get ipv4NetmaskLength =>
      TfRef.attribute<num>(this, 'ipv4_netmask_length');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `ipv6_cidr_block_network_border_group` attribute.
  TfRef<String> get ipv6CidrBlockNetworkBorderGroup =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block_network_border_group');

  /// Reference to `ipv6_ipam_pool_id` attribute.
  TfRef<String> get ipv6IpamPoolId =>
      TfRef.attribute<String>(this, 'ipv6_ipam_pool_id');

  /// Reference to `ipv6_netmask_length` attribute.
  TfRef<num> get ipv6NetmaskLength =>
      TfRef.attribute<num>(this, 'ipv6_netmask_length');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
