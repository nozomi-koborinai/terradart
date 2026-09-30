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
           'region': ?region,
           'vpn_connection_id': vpnConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnConnectionRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpnConnectionRoute>`.
  RefTo<AwsVpnConnectionRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlockRef =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `vpn_connection_id` attribute.
  TfRef<String> get vpnConnectionIdRef =>
      TfRef.attribute<String>(this, 'vpn_connection_id');
}
