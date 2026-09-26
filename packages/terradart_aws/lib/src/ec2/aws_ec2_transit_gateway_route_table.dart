// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_route_table`.
const Set<String> _awsEc2TransitGatewayRouteTableSensitive = <String>{};

/// Factory wrapper for `aws_ec2_transit_gateway_route_table`.
final class AwsEc2TransitGatewayRouteTable extends Resource {
  static const String tfType = 'aws_ec2_transit_gateway_route_table';

  AwsEc2TransitGatewayRouteTable({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> transitGatewayId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'transit_gateway_id': transitGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayRouteTableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_association_route_table` attribute.
  TfRef<bool> get defaultAssociationRouteTable =>
      TfRef.attribute<bool>(this, 'default_association_route_table');

  /// Reference to `default_propagation_route_table` attribute.
  TfRef<bool> get defaultPropagationRouteTable =>
      TfRef.attribute<bool>(this, 'default_propagation_route_table');
}
