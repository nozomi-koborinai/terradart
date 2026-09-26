// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_route_table_vpc_association`.
const Set<String> _awsEc2LocalGatewayRouteTableVpcAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_local_gateway_route_table_vpc_association`.
final class AwsEc2LocalGatewayRouteTableVpcAssociation extends Resource {
  static const String tfType =
      'aws_ec2_local_gateway_route_table_vpc_association';

  AwsEc2LocalGatewayRouteTableVpcAssociation({
    required super.localName,
    required TfArg<String> localGatewayRouteTableId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'local_gateway_route_table_id': localGatewayRouteTableId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2LocalGatewayRouteTableVpcAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `local_gateway_id` attribute.
  TfRef<String> get localGatewayId =>
      TfRef.attribute<String>(this, 'local_gateway_id');
}
