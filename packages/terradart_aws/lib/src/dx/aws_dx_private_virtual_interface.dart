// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_private_virtual_interface`.
const Set<String> _awsDxPrivateVirtualInterfaceSensitive = <String>{};

/// Factory wrapper for `aws_dx_private_virtual_interface`.
final class AwsDxPrivateVirtualInterface extends Resource {
  static const String tfType = 'aws_dx_private_virtual_interface';

  AwsDxPrivateVirtualInterface({
    required super.localName,
    required TfArg<String> addressFamily,
    TfArg<String>? amazonAddress,
    TfArg<num>? bgpAsn,
    TfArg<String>? bgpAsnLong,
    TfArg<String>? bgpAuthKey,
    required TfArg<String> connectionId,
    TfArg<String>? customerAddress,
    TfArg<String>? dxGatewayId,
    TfArg<num>? mtu,
    required TfArg<String> name,
    TfArg<num>? prefixPoolAllocatedCountIpv4,
    TfArg<num>? prefixPoolAllocatedCountIpv6,
    TfArg<String>? rateLimit,
    TfArg<String>? region,
    TfArg<bool>? sitelinkEnabled,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> vlan,
    TfArg<String>? vpnGatewayId,
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
           if (dxGatewayId != null) 'dx_gateway_id': dxGatewayId,
           if (mtu != null) 'mtu': mtu,
           'name': name,
           if (prefixPoolAllocatedCountIpv4 != null)
             'prefix_pool_allocated_count_ipv4': prefixPoolAllocatedCountIpv4,
           if (prefixPoolAllocatedCountIpv6 != null)
             'prefix_pool_allocated_count_ipv6': prefixPoolAllocatedCountIpv6,
           if (rateLimit != null) 'rate_limit': rateLimit,
           if (region != null) 'region': region,
           if (sitelinkEnabled != null) 'sitelink_enabled': sitelinkEnabled,
           if (tags != null) 'tags': tags,
           'vlan': vlan,
           if (vpnGatewayId != null) 'vpn_gateway_id': vpnGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxPrivateVirtualInterfaceSensitive;

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
}
