// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_connect_peer`.
const Set<String> _awsEc2TransitGatewayConnectPeerSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_connect_peer` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayConnectPeerFilter {
  const DataEc2TransitGatewayConnectPeerFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_connect_peer`.
final class DataAwsEc2TransitGatewayConnectPeer extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_connect_peer';

  DataAwsEc2TransitGatewayConnectPeer({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayConnectPeerId,
    List<DataEc2TransitGatewayConnectPeerFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayConnectPeerId != null)
             'transit_gateway_connect_peer_id': transitGatewayConnectPeerId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayConnectPeerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bgp_asn` attribute.
  TfRef<String> get bgpAsn => TfRef.attribute<String>(this, 'bgp_asn');

  /// Reference to `bgp_peer_address` attribute.
  TfRef<String> get bgpPeerAddress =>
      TfRef.attribute<String>(this, 'bgp_peer_address');

  /// Reference to `bgp_transit_gateway_addresses` attribute.
  TfRef<List<String>> get bgpTransitGatewayAddresses =>
      TfRef.attribute<List<String>>(this, 'bgp_transit_gateway_addresses');

  /// Reference to `inside_cidr_blocks` attribute.
  TfRef<List<String>> get insideCidrBlocks =>
      TfRef.attribute<List<String>>(this, 'inside_cidr_blocks');

  /// Reference to `peer_address` attribute.
  TfRef<String> get peerAddress =>
      TfRef.attribute<String>(this, 'peer_address');

  /// Reference to `transit_gateway_address` attribute.
  TfRef<String> get transitGatewayAddress =>
      TfRef.attribute<String>(this, 'transit_gateway_address');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');
}
