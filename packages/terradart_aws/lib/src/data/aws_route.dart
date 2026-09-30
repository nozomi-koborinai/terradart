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

  /// Reference to `carrier_gateway_id` attribute.
  TfRef<String> get carrierGatewayIdRef =>
      TfRef.attribute<String>(this, 'carrier_gateway_id');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArnRef =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlockRef =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `destination_ipv6_cidr_block` attribute.
  TfRef<String> get destinationIpv6CidrBlockRef =>
      TfRef.attribute<String>(this, 'destination_ipv6_cidr_block');

  /// Reference to `destination_prefix_list_id` attribute.
  TfRef<String> get destinationPrefixListIdRef =>
      TfRef.attribute<String>(this, 'destination_prefix_list_id');

  /// Reference to `egress_only_gateway_id` attribute.
  TfRef<String> get egressOnlyGatewayIdRef =>
      TfRef.attribute<String>(this, 'egress_only_gateway_id');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayIdRef => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `local_gateway_id` attribute.
  TfRef<String> get localGatewayIdRef =>
      TfRef.attribute<String>(this, 'local_gateway_id');

  /// Reference to `nat_gateway_id` attribute.
  TfRef<String> get natGatewayIdRef =>
      TfRef.attribute<String>(this, 'nat_gateway_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceIdRef =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArnRef =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableIdRef =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayIdRef =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_peering_connection_id` attribute.
  TfRef<String> get vpcPeeringConnectionIdRef =>
      TfRef.attribute<String>(this, 'vpc_peering_connection_id');
}
