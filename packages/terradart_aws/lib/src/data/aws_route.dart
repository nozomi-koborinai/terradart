// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route`.
const Set<String> _awsRouteSensitive = <String>{};

/// Factory wrapper for `aws_route`.
final class DataAwsRoute extends Data {
  static const String tfType = 'aws_route';

  DataAwsRoute({
    required super.localName,
    TfArg<String>? carrierGatewayId,
    TfArg<String>? coreNetworkArn,
    TfArg<String>? destinationCidrBlock,
    TfArg<String>? destinationIpv6CidrBlock,
    TfArg<String>? destinationPrefixListId,
    TfArg<String>? egressOnlyGatewayId,
    TfArg<String>? gatewayId,
    TfArg<String>? instanceId,
    TfArg<String>? localGatewayId,
    TfArg<String>? natGatewayId,
    TfArg<String>? networkInterfaceId,
    TfArg<String>? odbNetworkArn,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    TfArg<String>? transitGatewayId,
    TfArg<String>? vpcPeeringConnectionId,
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
           if (instanceId != null) 'instance_id': instanceId,
           if (localGatewayId != null) 'local_gateway_id': localGatewayId,
           if (natGatewayId != null) 'nat_gateway_id': natGatewayId,
           if (networkInterfaceId != null)
             'network_interface_id': networkInterfaceId,
           if (odbNetworkArn != null) 'odb_network_arn': odbNetworkArn,
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
           if (transitGatewayId != null) 'transit_gateway_id': transitGatewayId,
           if (vpcPeeringConnectionId != null)
             'vpc_peering_connection_id': vpcPeeringConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
