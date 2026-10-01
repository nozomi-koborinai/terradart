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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2LocalGatewayRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2LocalGatewayRoute>`.
  RefTo<AwsEc2LocalGatewayRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlock =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `local_gateway_route_table_id` attribute.
  TfRef<String> get localGatewayRouteTableId =>
      TfRef.attribute<String>(this, 'local_gateway_route_table_id');

  /// Reference to `local_gateway_virtual_interface_group_id` attribute.
  TfRef<String> get localGatewayVirtualInterfaceGroupId =>
      TfRef.attribute<String>(this, 'local_gateway_virtual_interface_group_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
