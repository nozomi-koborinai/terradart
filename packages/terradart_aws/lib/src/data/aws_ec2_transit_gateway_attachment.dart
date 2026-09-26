// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_attachment`.
const Set<String> _awsEc2TransitGatewayAttachmentSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_attachment` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayAttachmentFilter {
  const DataEc2TransitGatewayAttachmentFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_attachment`.
final class DataAwsEc2TransitGatewayAttachment extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_attachment';

  DataAwsEc2TransitGatewayAttachment({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayAttachmentId,
    List<DataEc2TransitGatewayAttachmentFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (transitGatewayAttachmentId != null)
             'transit_gateway_attachment_id': transitGatewayAttachmentId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_state` attribute.
  TfRef<String> get associationState =>
      TfRef.attribute<String>(this, 'association_state');

  /// Reference to `association_transit_gateway_route_table_id` attribute.
  TfRef<String> get associationTransitGatewayRouteTableId =>
      TfRef.attribute<String>(
        this,
        'association_transit_gateway_route_table_id',
      );

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_owner_id` attribute.
  TfRef<String> get resourceOwnerId =>
      TfRef.attribute<String>(this, 'resource_owner_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `transit_gateway_owner_id` attribute.
  TfRef<String> get transitGatewayOwnerId =>
      TfRef.attribute<String>(this, 'transit_gateway_owner_id');
}
