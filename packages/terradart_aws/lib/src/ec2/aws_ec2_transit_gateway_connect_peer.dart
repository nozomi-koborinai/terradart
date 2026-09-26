// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_connect_peer`.
const Set<String> _awsEc2TransitGatewayConnectPeerSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_connect_peer`.
final class AwsEc2TransitGatewayConnectPeer extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_connect_peer';

  AwsEc2TransitGatewayConnectPeer({
    required super.localName,
    TfArg<String>? bgpAsn,
    required TfArg<List<String>> insideCidrBlocks,
    required TfArg<String> peerAddress,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayAddress,
    required TfArg<String> transitGatewayAttachmentId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bgpAsn != null) 'bgp_asn': bgpAsn,
           'inside_cidr_blocks': insideCidrBlocks,
           'peer_address': peerAddress,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayAddress != null)
             'transit_gateway_address': transitGatewayAddress,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayConnectPeerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bgp_peer_address` attribute.
  TfRef<String> get bgpPeerAddress =>
      TfRef.attribute<String>(this, 'bgp_peer_address');

  /// Reference to `bgp_transit_gateway_addresses` attribute.
  TfRef<List<String>> get bgpTransitGatewayAddresses =>
      TfRef.attribute<List<String>>(this, 'bgp_transit_gateway_addresses');
}
