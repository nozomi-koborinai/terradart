// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_private_virtual_interface_accepter`.
const Set<String> _awsDxHostedPrivateVirtualInterfaceAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_dx_hosted_private_virtual_interface_accepter`.
final class AwsDxHostedPrivateVirtualInterfaceAccepter extends Resource {
  static const String tfType =
      'aws_dx_hosted_private_virtual_interface_accepter';

  AwsDxHostedPrivateVirtualInterfaceAccepter({
    required super.localName,
    TfArg<String>? dxGatewayId,
    TfArg<num>? prefixPoolAllocatedCountIpv4,
    TfArg<num>? prefixPoolAllocatedCountIpv6,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualInterfaceId,
    TfArg<String>? vpnGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dxGatewayId != null) 'dx_gateway_id': dxGatewayId,
           if (prefixPoolAllocatedCountIpv4 != null)
             'prefix_pool_allocated_count_ipv4': prefixPoolAllocatedCountIpv4,
           if (prefixPoolAllocatedCountIpv6 != null)
             'prefix_pool_allocated_count_ipv6': prefixPoolAllocatedCountIpv6,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'virtual_interface_id': virtualInterfaceId,
           if (vpnGatewayId != null) 'vpn_gateway_id': vpnGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDxHostedPrivateVirtualInterfaceAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
