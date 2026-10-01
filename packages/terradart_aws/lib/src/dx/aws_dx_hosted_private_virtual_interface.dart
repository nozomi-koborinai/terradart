// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_private_virtual_interface`.
const Set<String> _awsDxHostedPrivateVirtualInterfaceSensitive = <String>{};

/// Dx Hosted Private Virtual Interface Address enum for `address_family`.
enum DxHostedPrivateVirtualInterfaceAddressFamily implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const DxHostedPrivateVirtualInterfaceAddressFamily(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dx_hosted_private_virtual_interface`.
final class AwsDxHostedPrivateVirtualInterface extends Resource {
  static const String tfType = 'aws_dx_hosted_private_virtual_interface';

  AwsDxHostedPrivateVirtualInterface(
    super.localName, {
    required TfArg<DxHostedPrivateVirtualInterfaceAddressFamily> addressFamily,
    TfArg<String>? amazonAddress,
    TfArg<num>? bgpAsn,
    TfArg<String>? bgpAsnLong,
    TfArg<String>? bgpAuthKey,
    required TfArg<String> connectionId,
    TfArg<String>? customerAddress,
    TfArg<num>? mtu,
    required TfArg<String> name,
    required TfArg<String> ownerAccountId,
    TfArg<String>? rateLimit,
    TfArg<String>? region,
    required TfArg<num> vlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_family': addressFamily,
           'amazon_address': ?amazonAddress,
           'bgp_asn': ?bgpAsn,
           'bgp_asn_long': ?bgpAsnLong,
           'bgp_auth_key': ?bgpAuthKey,
           'connection_id': connectionId,
           'customer_address': ?customerAddress,
           'mtu': ?mtu,
           'name': name,
           'owner_account_id': ownerAccountId,
           'rate_limit': ?rateLimit,
           'region': ?region,
           'vlan': vlan,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDxHostedPrivateVirtualInterfaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxHostedPrivateVirtualInterface>`.
  RefTo<AwsDxHostedPrivateVirtualInterface> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<String> get amazonSideAsn =>
      TfRef.attribute<String>(this, 'amazon_side_asn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `jumbo_frame_capable` attribute.
  TfRef<bool> get jumboFrameCapable =>
      TfRef.attribute<bool>(this, 'jumbo_frame_capable');

  /// Reference to `prefix_pool_allocated_count_ipv4` attribute.
  TfRef<num> get prefixPoolAllocatedCountIpv4 =>
      TfRef.attribute<num>(this, 'prefix_pool_allocated_count_ipv4');

  /// Reference to `prefix_pool_allocated_count_ipv6` attribute.
  TfRef<num> get prefixPoolAllocatedCountIpv6 =>
      TfRef.attribute<num>(this, 'prefix_pool_allocated_count_ipv6');

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `amazon_address` attribute.
  TfRef<String> get amazonAddress =>
      TfRef.attribute<String>(this, 'amazon_address');

  /// Reference to `bgp_asn` attribute.
  TfRef<num> get bgpAsn => TfRef.attribute<num>(this, 'bgp_asn');

  /// Reference to `bgp_asn_long` attribute.
  TfRef<String> get bgpAsnLong => TfRef.attribute<String>(this, 'bgp_asn_long');

  /// Reference to `bgp_auth_key` attribute.
  TfRef<String> get bgpAuthKey => TfRef.attribute<String>(this, 'bgp_auth_key');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `customer_address` attribute.
  TfRef<String> get customerAddress =>
      TfRef.attribute<String>(this, 'customer_address');

  /// Reference to `mtu` attribute.
  TfRef<num> get mtu => TfRef.attribute<num>(this, 'mtu');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `rate_limit` attribute.
  TfRef<String> get rateLimit => TfRef.attribute<String>(this, 'rate_limit');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vlan` attribute.
  TfRef<num> get vlan => TfRef.attribute<num>(this, 'vlan');
}
