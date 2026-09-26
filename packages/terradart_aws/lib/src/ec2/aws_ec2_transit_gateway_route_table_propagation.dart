// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_route_table_propagation`.
const Set<String> _awsEc2TransitGatewayRouteTablePropagationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_route_table_propagation`.
final class AwsEc2TransitGatewayRouteTablePropagation extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_route_table_propagation';

  AwsEc2TransitGatewayRouteTablePropagation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> transitGatewayAttachmentId,
    required TfArg<String> transitGatewayRouteTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'transit_gateway_attachment_id': transitGatewayAttachmentId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayRouteTablePropagationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
