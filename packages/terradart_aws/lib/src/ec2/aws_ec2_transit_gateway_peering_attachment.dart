// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_peering_attachment`.
const Set<String> _awsEc2TransitGatewayPeeringAttachmentSensitive = <String>{};

/// Typed helper for the `options` block of
/// `aws_ec2_transit_gateway_peering_attachment` (derived from provider schema).
@immutable
final class Ec2TransitGatewayPeeringAttachmentOptions {
  const Ec2TransitGatewayPeeringAttachmentOptions({this.dynamicRouting});

  final TfArg<String>? dynamicRouting;

  Map<String, Object?> encode() => {
    if (dynamicRouting != null) 'dynamic_routing': dynamicRouting!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_peering_attachment`.
final class AwsEc2TransitGatewayPeeringAttachment extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_peering_attachment';

  AwsEc2TransitGatewayPeeringAttachment({
    required super.localName,
    TfArg<String>? peerAccountId,
    required TfArg<String> peerRegion,
    required TfArg<String> peerTransitGatewayId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayId,
    Ec2TransitGatewayPeeringAttachmentOptions? options,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (peerAccountId != null) 'peer_account_id': peerAccountId,
           'peer_region': peerRegion,
           'peer_transit_gateway_id': peerTransitGatewayId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'transit_gateway_id': transitGatewayId,
           if (options != null) 'options': TfArg.literal(options.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPeeringAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
