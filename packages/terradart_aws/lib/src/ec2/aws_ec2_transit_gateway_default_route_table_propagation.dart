// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_default_route_table_propagation`.
const Set<String> _awsEc2TransitGatewayDefaultRouteTablePropagationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_default_route_table_propagation`.
final class AwsEc2TransitGatewayDefaultRouteTablePropagation extends Resource {
  static const String tfType =
      'aws_ec2_transit_gateway_default_route_table_propagation';

  AwsEc2TransitGatewayDefaultRouteTablePropagation({
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
           'region': ?region,
           'transit_gateway_id': transitGatewayId,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayDefaultRouteTablePropagationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TransitGatewayDefaultRouteTablePropagation>`.
  RefTo<AwsEc2TransitGatewayDefaultRouteTablePropagation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `original_default_route_table_id` attribute.
  TfRef<String> get originalDefaultRouteTableId =>
      TfRef.attribute<String>(this, 'original_default_route_table_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `transit_gateway_route_table_id` attribute.
  TfRef<String> get transitGatewayRouteTableIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_route_table_id');
}
