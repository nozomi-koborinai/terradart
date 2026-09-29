// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_private_virtual_interface`.
const Set<String> _awsDxPrivateVirtualInterfaceSensitive = <String>{};

/// Dx Private Virtual Interface Address enum for `address_family`.
enum DxPrivateVirtualInterfaceAddressFamily implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const DxPrivateVirtualInterfaceAddressFamily(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `dx_gateway_id`, `vpn_gateway_id` on `aws_dx_private_virtual_interface`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dxGatewayId(...)`.
sealed class DxPrivateVirtualInterfaceGatewayId {
  const DxPrivateVirtualInterfaceGatewayId();

  /// Sets `dx_gateway_id`.
  const factory DxPrivateVirtualInterfaceGatewayId.dxGatewayId(
    TfArg<String> dxGatewayId,
  ) = DxPrivateVirtualInterfaceGatewayIdDxGatewayId;

  /// Sets `vpn_gateway_id`.
  const factory DxPrivateVirtualInterfaceGatewayId.vpnGatewayId(
    TfArg<String> vpnGatewayId,
  ) = DxPrivateVirtualInterfaceGatewayIdVpnGatewayId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DxPrivateVirtualInterfaceGatewayId.dxGatewayId] choice: sets `dx_gateway_id`.
final class DxPrivateVirtualInterfaceGatewayIdDxGatewayId
    extends DxPrivateVirtualInterfaceGatewayId {
  const DxPrivateVirtualInterfaceGatewayIdDxGatewayId(this.dxGatewayId);

  final TfArg<String> dxGatewayId;

  @override
  String get blockKey => 'dx_gateway_id';

  @override
  Map<String, Object?> encode() => {'dx_gateway_id': dxGatewayId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'dx_gateway_id': dxGatewayId};
}

/// The [DxPrivateVirtualInterfaceGatewayId.vpnGatewayId] choice: sets `vpn_gateway_id`.
final class DxPrivateVirtualInterfaceGatewayIdVpnGatewayId
    extends DxPrivateVirtualInterfaceGatewayId {
  const DxPrivateVirtualInterfaceGatewayIdVpnGatewayId(this.vpnGatewayId);

  final TfArg<String> vpnGatewayId;

  @override
  String get blockKey => 'vpn_gateway_id';

  @override
  Map<String, Object?> encode() => {'vpn_gateway_id': vpnGatewayId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpn_gateway_id': vpnGatewayId};
}

/// Factory wrapper for `aws_dx_private_virtual_interface`.
final class AwsDxPrivateVirtualInterface extends Resource {
  static const String tfType = 'aws_dx_private_virtual_interface';

  AwsDxPrivateVirtualInterface({
    required super.localName,
    required TfArg<DxPrivateVirtualInterfaceAddressFamily> addressFamily,
    TfArg<String>? amazonAddress,
    TfArg<num>? bgpAsn,
    TfArg<String>? bgpAsnLong,
    TfArg<String>? bgpAuthKey,
    required TfArg<String> connectionId,
    TfArg<String>? customerAddress,
    required DxPrivateVirtualInterfaceGatewayId gatewayId,
    TfArg<num>? mtu,
    required TfArg<String> name,
    TfArg<num>? prefixPoolAllocatedCountIpv4,
    TfArg<num>? prefixPoolAllocatedCountIpv6,
    TfArg<String>? rateLimit,
    TfArg<String>? region,
    TfArg<bool>? sitelinkEnabled,
    TfArg<Map<String, String>>? tags,
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
           ...gatewayId.argMap,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxPrivateVirtualInterfaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxPrivateVirtualInterface>`.
  RefTo<AwsDxPrivateVirtualInterface> get ref => RefTo.of(this);

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
