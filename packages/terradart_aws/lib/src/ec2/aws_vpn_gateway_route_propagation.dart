// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpn_gateway_route_propagation`.
const Set<String> _awsVpnGatewayRoutePropagationSensitive = <String>{};

/// Factory wrapper for `aws_vpn_gateway_route_propagation`.
final class AwsVpnGatewayRoutePropagation extends Resource {
  static const String tfType = 'aws_vpn_gateway_route_propagation';

  AwsVpnGatewayRoutePropagation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    required TfArg<String> vpnGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
           'vpn_gateway_id': vpnGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnGatewayRoutePropagationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
