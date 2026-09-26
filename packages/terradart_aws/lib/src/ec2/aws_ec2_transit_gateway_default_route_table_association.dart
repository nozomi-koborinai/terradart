// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_default_route_table_association`.
const Set<String> _awsEc2TransitGatewayDefaultRouteTableAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_default_route_table_association`.
final class AwsEc2TransitGatewayDefaultRouteTableAssociation extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_default_route_table_association';

  AwsEc2TransitGatewayDefaultRouteTableAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> transitGatewayId,
    required TfArg<String> transitGatewayRouteTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'transit_gateway_id': transitGatewayId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayDefaultRouteTableAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `original_default_route_table_id` attribute.
  TfRef<String> get originalDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'original_default_route_table_id');
}
