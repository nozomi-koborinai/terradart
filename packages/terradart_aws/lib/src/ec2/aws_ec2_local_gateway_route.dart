// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_route`.
const Set<String> _awsEc2LocalGatewayRouteSensitive = <String>{};

/// Factory wrapper for `aws_ec2_local_gateway_route`.
final class AwsEc2LocalGatewayRoute extends Resource {
  static const String tfType = 'aws_ec2_local_gateway_route';

  AwsEc2LocalGatewayRoute({
    required super.localName,
    required TfArg<String> destinationCidrBlock,
    required TfArg<String> localGatewayRouteTableId,
    required TfArg<String> localGatewayVirtualInterfaceGroupId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_cidr_block': destinationCidrBlock,
           'local_gateway_route_table_id': localGatewayRouteTableId,
           'local_gateway_virtual_interface_group_id':
               localGatewayVirtualInterfaceGroupId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2LocalGatewayRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
