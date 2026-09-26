// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_peering_attachment_accepter`.
const Set<String> _awsEc2TransitGatewayPeeringAttachmentAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_peering_attachment_accepter`.
final class AwsEc2TransitGatewayPeeringAttachmentAccepter extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_peering_attachment_accepter';

  AwsEc2TransitGatewayPeeringAttachmentAccepter({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayAttachmentId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPeeringAttachmentAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `peer_account_id` attribute.
  TfRef<String> get peerAccountId =>
      TfRef.attribute<String>(this, 'peer_account_id');

  /// Reference to `peer_region` attribute.
  TfRef<String> get peerRegion => TfRef.attribute<String>(this, 'peer_region');

  /// Reference to `peer_transit_gateway_id` attribute.
  TfRef<String> get peerTransitGatewayId =>
      TfRef.attribute<String>(this, 'peer_transit_gateway_id');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
