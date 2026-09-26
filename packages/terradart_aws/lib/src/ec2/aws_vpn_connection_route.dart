// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpn_connection_route`.
const Set<String> _awsVpnConnectionRouteSensitive = <String>{};

/// Factory wrapper for `aws_vpn_connection_route`.
final class AwsVpnConnectionRoute extends Resource {
  static const String tfType = 'aws_vpn_connection_route';

  AwsVpnConnectionRoute({
    required super.localName,
    required TfArg<String> destinationCidrBlock,
    TfArg<String>? region,
    required TfArg<String> vpnConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_cidr_block': destinationCidrBlock,
           if (region != null) 'region': region,
           'vpn_connection_id': vpnConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnConnectionRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
