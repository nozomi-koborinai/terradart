// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route`.
const Set<String> _awsRouteSensitive = <String>{};

/// Factory wrapper for `aws_route`.
final class AwsRoute extends Resource {
  static const String tfType = 'aws_route';

  AwsRoute({
    required super.localName,
    TfArg<String>? carrierGatewayId,
    TfArg<String>? coreNetworkArn,
    TfArg<String>? destinationCidrBlock,
    TfArg<String>? destinationIpv6CidrBlock,
    TfArg<String>? destinationPrefixListId,
    TfArg<String>? egressOnlyGatewayId,
    TfArg<String>? gatewayId,
    TfArg<String>? localGatewayId,
    TfArg<String>? natGatewayId,
    TfArg<String>? networkInterfaceId,
    TfArg<String>? odbNetworkArn,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    TfArg<String>? transitGatewayId,
    TfArg<String>? vpcEndpointId,
    TfArg<String>? vpcPeeringConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (carrierGatewayId != null) 'carrier_gateway_id': carrierGatewayId,
           if (coreNetworkArn != null) 'core_network_arn': coreNetworkArn,
           if (destinationCidrBlock != null)
             'destination_cidr_block': destinationCidrBlock,
           if (destinationIpv6CidrBlock != null)
             'destination_ipv6_cidr_block': destinationIpv6CidrBlock,
           if (destinationPrefixListId != null)
             'destination_prefix_list_id': destinationPrefixListId,
           if (egressOnlyGatewayId != null)
             'egress_only_gateway_id': egressOnlyGatewayId,
           if (gatewayId != null) 'gateway_id': gatewayId,
           if (localGatewayId != null) 'local_gateway_id': localGatewayId,
           if (natGatewayId != null) 'nat_gateway_id': natGatewayId,
           if (networkInterfaceId != null)
             'network_interface_id': networkInterfaceId,
           if (odbNetworkArn != null) 'odb_network_arn': odbNetworkArn,
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
           if (transitGatewayId != null) 'transit_gateway_id': transitGatewayId,
           if (vpcEndpointId != null) 'vpc_endpoint_id': vpcEndpointId,
           if (vpcPeeringConnectionId != null)
             'vpc_peering_connection_id': vpcPeeringConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `instance_owner_id` attribute.
  TfRef<String> get instanceOwnerId =>
      TfRef.attribute<String>(this, 'instance_owner_id');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
