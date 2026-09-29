// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_route.dart';

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
           'carrier_gateway_id': ?carrierGatewayId,
           'core_network_arn': ?coreNetworkArn,
           'destination_cidr_block': ?destinationCidrBlock,
           'destination_ipv6_cidr_block': ?destinationIpv6CidrBlock,
           'destination_prefix_list_id': ?destinationPrefixListId,
           'egress_only_gateway_id': ?egressOnlyGatewayId,
           'gateway_id': ?gatewayId,
           'instance_id': ?instanceId,
           'local_gateway_id': ?localGatewayId,
           'nat_gateway_id': ?natGatewayId,
           'network_interface_id': ?networkInterfaceId,
           'odb_network_arn': ?odbNetworkArn,
           'region': ?region,
           'route_table_id': routeTableId,
           'transit_gateway_id': ?transitGatewayId,
           'vpc_peering_connection_id': ?vpcPeeringConnectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteSensitive;

  /// A reference to the `aws_route` this data source reads, for
  /// arguments typed `RefTo<AwsRoute>`.
  RefTo<AwsRoute> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
