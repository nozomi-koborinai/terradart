// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_transit_gateway_connect_peer_association`.
const Set<String>
_awsNetworkmanagerTransitGatewayConnectPeerAssociationSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_transit_gateway_connect_peer_association`.
final class AwsNetworkmanagerTransitGatewayConnectPeerAssociation
    extends Resource {
  static const String tfType =
      'aws_networkmanager_transit_gateway_connect_peer_association';

  AwsNetworkmanagerTransitGatewayConnectPeerAssociation({
    required super.localName,
    required TfArg<String> deviceId,
    required TfArg<String> globalNetworkId,
    TfArg<String>? linkId,
    required TfArg<String> transitGatewayConnectPeerArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_id': deviceId,
           'global_network_id': globalNetworkId,
           if (linkId != null) 'link_id': linkId,
           'transit_gateway_connect_peer_arn': transitGatewayConnectPeerArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerTransitGatewayConnectPeerAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
