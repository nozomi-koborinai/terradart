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

  final TfArg<Ec2TransitGatewayPeeringAttachmentOptionsDynamicRouting>?
  dynamicRouting;

  Map<String, Object?> encode() => {
    'dynamic_routing': ?dynamicRouting?.toTfJson(),
  };
}

/// `dynamic_routing` — derived from the provider schema description.
enum Ec2TransitGatewayPeeringAttachmentOptionsDynamicRouting
    implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const Ec2TransitGatewayPeeringAttachmentOptionsDynamicRouting(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
           'peer_account_id': ?peerAccountId,
           'peer_region': peerRegion,
           'peer_transit_gateway_id': peerTransitGatewayId,
           'region': ?region,
           'tags': ?tags,
           'transit_gateway_id': transitGatewayId,
           if (options != null) 'options': TfArg.literal(options.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPeeringAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayPeeringAttachment>`.
  RefTo<AwsEc2TransitGatewayPeeringAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `peer_account_id` attribute.
  TfRef<String> get peerAccountIdRef =>
      TfRef.attribute<String>(this, 'peer_account_id');

  /// Reference to `peer_region` attribute.
  TfRef<String> get peerRegionRef =>
      TfRef.attribute<String>(this, 'peer_region');

  /// Reference to `peer_transit_gateway_id` attribute.
  TfRef<String> get peerTransitGatewayIdRef =>
      TfRef.attribute<String>(this, 'peer_transit_gateway_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
