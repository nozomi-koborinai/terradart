// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route`.
const Set<String> _awsRouteSensitive = <String>{};

/// At most one of `carrier_gateway_id`, `destination_ipv6_cidr_block` on `aws_route`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.carrierGatewayId(...)`.
sealed class RouteCarrierIpv6 {
  const RouteCarrierIpv6();

  /// Sets `carrier_gateway_id`.
  const factory RouteCarrierIpv6.carrierGatewayId(
    TfArg<String> carrierGatewayId,
  ) = RouteCarrierIpv6CarrierGatewayId;

  /// Sets `destination_ipv6_cidr_block`.
  const factory RouteCarrierIpv6.destinationIpv6CidrBlock(
    TfArg<String> destinationIpv6CidrBlock,
  ) = RouteCarrierIpv6DestinationIpv6CidrBlock;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RouteCarrierIpv6.carrierGatewayId] choice: sets `carrier_gateway_id`.
final class RouteCarrierIpv6CarrierGatewayId extends RouteCarrierIpv6 {
  const RouteCarrierIpv6CarrierGatewayId(this.carrierGatewayId);

  final TfArg<String> carrierGatewayId;

  @override
  String get blockKey => 'carrier_gateway_id';

  @override
  Map<String, Object?> encode() => {
    'carrier_gateway_id': carrierGatewayId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'carrier_gateway_id': carrierGatewayId,
  };
}

/// The [RouteCarrierIpv6.destinationIpv6CidrBlock] choice: sets `destination_ipv6_cidr_block`.
final class RouteCarrierIpv6DestinationIpv6CidrBlock extends RouteCarrierIpv6 {
  const RouteCarrierIpv6DestinationIpv6CidrBlock(this.destinationIpv6CidrBlock);

  final TfArg<String> destinationIpv6CidrBlock;

  @override
  String get blockKey => 'destination_ipv6_cidr_block';

  @override
  Map<String, Object?> encode() => {
    'destination_ipv6_cidr_block': destinationIpv6CidrBlock.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_ipv6_cidr_block': destinationIpv6CidrBlock,
  };
}

/// At most one of `destination_cidr_block`, `egress_only_gateway_id` on `aws_route`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.destinationCidrBlock(...)`.
sealed class RouteIpv4Egress {
  const RouteIpv4Egress();

  /// Sets `destination_cidr_block`.
  const factory RouteIpv4Egress.destinationCidrBlock(
    TfArg<String> destinationCidrBlock,
  ) = RouteIpv4EgressDestinationCidrBlock;

  /// Sets `egress_only_gateway_id`.
  const factory RouteIpv4Egress.egressOnlyGatewayId(
    TfArg<String> egressOnlyGatewayId,
  ) = RouteIpv4EgressEgressOnlyGatewayId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RouteIpv4Egress.destinationCidrBlock] choice: sets `destination_cidr_block`.
final class RouteIpv4EgressDestinationCidrBlock extends RouteIpv4Egress {
  const RouteIpv4EgressDestinationCidrBlock(this.destinationCidrBlock);

  final TfArg<String> destinationCidrBlock;

  @override
  String get blockKey => 'destination_cidr_block';

  @override
  Map<String, Object?> encode() => {
    'destination_cidr_block': destinationCidrBlock.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_cidr_block': destinationCidrBlock,
  };
}

/// The [RouteIpv4Egress.egressOnlyGatewayId] choice: sets `egress_only_gateway_id`.
final class RouteIpv4EgressEgressOnlyGatewayId extends RouteIpv4Egress {
  const RouteIpv4EgressEgressOnlyGatewayId(this.egressOnlyGatewayId);

  final TfArg<String> egressOnlyGatewayId;

  @override
  String get blockKey => 'egress_only_gateway_id';

  @override
  Map<String, Object?> encode() => {
    'egress_only_gateway_id': egressOnlyGatewayId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'egress_only_gateway_id': egressOnlyGatewayId,
  };
}

/// At most one of `destination_prefix_list_id`, `vpc_endpoint_id` on `aws_route`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.destinationPrefixListId(...)`.
sealed class RoutePrefixListEndpoint {
  const RoutePrefixListEndpoint();

  /// Sets `destination_prefix_list_id`.
  const factory RoutePrefixListEndpoint.destinationPrefixListId(
    TfArg<String> destinationPrefixListId,
  ) = RoutePrefixListEndpointDestinationPrefixListId;

  /// Sets `vpc_endpoint_id`.
  const factory RoutePrefixListEndpoint.vpcEndpointId(
    TfArg<String> vpcEndpointId,
  ) = RoutePrefixListEndpointVpcEndpointId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RoutePrefixListEndpoint.destinationPrefixListId] choice: sets `destination_prefix_list_id`.
final class RoutePrefixListEndpointDestinationPrefixListId
    extends RoutePrefixListEndpoint {
  const RoutePrefixListEndpointDestinationPrefixListId(
    this.destinationPrefixListId,
  );

  final TfArg<String> destinationPrefixListId;

  @override
  String get blockKey => 'destination_prefix_list_id';

  @override
  Map<String, Object?> encode() => {
    'destination_prefix_list_id': destinationPrefixListId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_prefix_list_id': destinationPrefixListId,
  };
}

/// The [RoutePrefixListEndpoint.vpcEndpointId] choice: sets `vpc_endpoint_id`.
final class RoutePrefixListEndpointVpcEndpointId
    extends RoutePrefixListEndpoint {
  const RoutePrefixListEndpointVpcEndpointId(this.vpcEndpointId);

  final TfArg<String> vpcEndpointId;

  @override
  String get blockKey => 'vpc_endpoint_id';

  @override
  Map<String, Object?> encode() => {
    'vpc_endpoint_id': vpcEndpointId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'vpc_endpoint_id': vpcEndpointId};
}

/// Factory wrapper for `aws_route`.
final class AwsRoute extends Resource {
  static const String tfType = 'aws_route';

  AwsRoute({
    required super.localName,
    RouteCarrierIpv6? carrierIpv6,
    TfArg<String>? coreNetworkArn,
    RouteIpv4Egress? ipv4Egress,
    RoutePrefixListEndpoint? prefixListEndpoint,
    TfArg<String>? gatewayId,
    TfArg<String>? localGatewayId,
    TfArg<String>? natGatewayId,
    TfArg<String>? networkInterfaceId,
    TfArg<String>? odbNetworkArn,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    TfArg<String>? transitGatewayId,
    TfArg<String>? vpcPeeringConnectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?carrierIpv6?.argMap,
           if (coreNetworkArn != null) 'core_network_arn': coreNetworkArn,
           ...?ipv4Egress?.argMap,
           ...?prefixListEndpoint?.argMap,
           if (gatewayId != null) 'gateway_id': gatewayId,
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
