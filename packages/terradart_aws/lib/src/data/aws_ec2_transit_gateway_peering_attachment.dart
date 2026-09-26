// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_peering_attachment`.
const Set<String> _awsEc2TransitGatewayPeeringAttachmentSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_peering_attachment` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayPeeringAttachmentFilter {
  const DataEc2TransitGatewayPeeringAttachmentFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_peering_attachment`.
final class DataAwsEc2TransitGatewayPeeringAttachment extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_peering_attachment';

  DataAwsEc2TransitGatewayPeeringAttachment({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2TransitGatewayPeeringAttachmentFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayPeeringAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `peer_account_id` attribute.
  TfRef<String> get peerAccountId =>
      TfRef.attribute<String>(this, 'peer_account_id');

  /// Reference to `peer_region` attribute.
  TfRef<String> get peerRegion => TfRef.attribute<String>(this, 'peer_region');

  /// Reference to `peer_transit_gateway_id` attribute.
  TfRef<String> get peerTransitGatewayId =>
      TfRef.attribute<String>(this, 'peer_transit_gateway_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
