// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_private_virtual_interface`.
const Set<String> _awsDxHostedPrivateVirtualInterfaceSensitive = <String>{};

/// Factory wrapper for `aws_dx_hosted_private_virtual_interface`.
final class AwsDxHostedPrivateVirtualInterface extends Resource {
  static const String tfType = 'aws_dx_hosted_private_virtual_interface';

  AwsDxHostedPrivateVirtualInterface({
    required super.localName,
    required TfArg<String> addressFamily,
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
           if (amazonAddress != null) 'amazon_address': amazonAddress,
           if (bgpAsn != null) 'bgp_asn': bgpAsn,
           if (bgpAsnLong != null) 'bgp_asn_long': bgpAsnLong,
           if (bgpAuthKey != null) 'bgp_auth_key': bgpAuthKey,
           'connection_id': connectionId,
           if (customerAddress != null) 'customer_address': customerAddress,
           if (mtu != null) 'mtu': mtu,
           'name': name,
           'owner_account_id': ownerAccountId,
           if (rateLimit != null) 'rate_limit': rateLimit,
           if (region != null) 'region': region,
           'vlan': vlan,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDxHostedPrivateVirtualInterfaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
