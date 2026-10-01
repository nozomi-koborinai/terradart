// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_route`.
const Set<String> _awsEc2TransitGatewayRouteSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_route`.
final class AwsEc2TransitGatewayRoute extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_route';

  AwsEc2TransitGatewayRoute({
    required super.localName,
    TfArg<bool>? blackhole,
    required TfArg<String> destinationCidrBlock,
    TfArg<String>? region,
    TfArg<String>? transitGatewayAttachmentId,
    required TfArg<String> transitGatewayRouteTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blackhole': ?blackhole,
           'destination_cidr_block': destinationCidrBlock,
           'region': ?region,
           'transit_gateway_attachment_id': ?transitGatewayAttachmentId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayRoute>`.
  RefTo<AwsEc2TransitGatewayRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blackhole` attribute.
  TfRef<bool> get blackhole => TfRef.attribute<bool>(this, 'blackhole');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlock =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `transit_gateway_route_table_id` attribute.
  TfRef<String> get transitGatewayRouteTableId =>
      TfRef.attribute<String>(this, 'transit_gateway_route_table_id');
}
