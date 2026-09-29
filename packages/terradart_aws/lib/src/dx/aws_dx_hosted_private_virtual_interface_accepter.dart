// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_private_virtual_interface_accepter`.
const Set<String> _awsDxHostedPrivateVirtualInterfaceAccepterSensitive =
    <String>{};

/// Exactly one of `dx_gateway_id`, `vpn_gateway_id` on `aws_dx_hosted_private_virtual_interface_accepter`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dxGatewayId(...)`.
sealed class DxHostedPrivateVirtualInterfaceAccepterGatewayId {
  const DxHostedPrivateVirtualInterfaceAccepterGatewayId();

  /// Sets `dx_gateway_id`.
  const factory DxHostedPrivateVirtualInterfaceAccepterGatewayId.dxGatewayId(
    TfArg<String> dxGatewayId,
  ) = DxHostedPrivateVirtualInterfaceAccepterGatewayIdDxGatewayId;

  /// Sets `vpn_gateway_id`.
  const factory DxHostedPrivateVirtualInterfaceAccepterGatewayId.vpnGatewayId(
    TfArg<String> vpnGatewayId,
  ) = DxHostedPrivateVirtualInterfaceAccepterGatewayIdVpnGatewayId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DxHostedPrivateVirtualInterfaceAccepterGatewayId.dxGatewayId] choice: sets `dx_gateway_id`.
final class DxHostedPrivateVirtualInterfaceAccepterGatewayIdDxGatewayId
    extends DxHostedPrivateVirtualInterfaceAccepterGatewayId {
  const DxHostedPrivateVirtualInterfaceAccepterGatewayIdDxGatewayId(
    this.dxGatewayId,
  );

  final TfArg<String> dxGatewayId;

  @override
  String get blockKey => 'dx_gateway_id';

  @override
  Map<String, Object?> encode() => {'dx_gateway_id': dxGatewayId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'dx_gateway_id': dxGatewayId};
}

/// The [DxHostedPrivateVirtualInterfaceAccepterGatewayId.vpnGatewayId] choice: sets `vpn_gateway_id`.
final class DxHostedPrivateVirtualInterfaceAccepterGatewayIdVpnGatewayId
    extends DxHostedPrivateVirtualInterfaceAccepterGatewayId {
  const DxHostedPrivateVirtualInterfaceAccepterGatewayIdVpnGatewayId(
    this.vpnGatewayId,
  );

  final TfArg<String> vpnGatewayId;

  @override
  String get blockKey => 'vpn_gateway_id';

  @override
  Map<String, Object?> encode() => {'vpn_gateway_id': vpnGatewayId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpn_gateway_id': vpnGatewayId};
}

/// Factory wrapper for `aws_dx_hosted_private_virtual_interface_accepter`.
final class AwsDxHostedPrivateVirtualInterfaceAccepter extends Resource {
  static const String tfType =
      'aws_dx_hosted_private_virtual_interface_accepter';

  AwsDxHostedPrivateVirtualInterfaceAccepter({
    required super.localName,
    required DxHostedPrivateVirtualInterfaceAccepterGatewayId gatewayId,
    TfArg<num>? prefixPoolAllocatedCountIpv4,
    TfArg<num>? prefixPoolAllocatedCountIpv6,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...gatewayId.argMap,
           'prefix_pool_allocated_count_ipv4': ?prefixPoolAllocatedCountIpv4,
           'prefix_pool_allocated_count_ipv6': ?prefixPoolAllocatedCountIpv6,
           'region': ?region,
           'tags': ?tags,
           'virtual_interface_id': virtualInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDxHostedPrivateVirtualInterfaceAccepterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxHostedPrivateVirtualInterfaceAccepter>`.
  RefTo<AwsDxHostedPrivateVirtualInterfaceAccepter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
