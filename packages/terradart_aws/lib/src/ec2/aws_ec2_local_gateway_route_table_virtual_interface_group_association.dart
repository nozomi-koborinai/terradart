// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_route_table_virtual_interface_group_association`.
const Set<String>
_awsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_ec2_local_gateway_route_table_virtual_interface_group_association`.
final class AwsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    extends Resource {
  static const String tfType =
      'aws_ec2_local_gateway_route_table_virtual_interface_group_association';

  AwsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociation({
    required super.localName,
    required TfArg<String> localGatewayRouteTableId,
    required TfArg<String> localGatewayVirtualInterfaceGroupId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'local_gateway_route_table_id': localGatewayRouteTableId,
           'local_gateway_virtual_interface_group_id':
               localGatewayVirtualInterfaceGroupId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `local_gateway_id` attribute.
  TfRef<String> get localGatewayId =>
      TfRef.attribute<String>(this, 'local_gateway_id');

  /// Reference to `local_gateway_route_table_arn` attribute.
  TfRef<String> get localGatewayRouteTableArn =>
      TfRef.attribute<String>(this, 'local_gateway_route_table_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
