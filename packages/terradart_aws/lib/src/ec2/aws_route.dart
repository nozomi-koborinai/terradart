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
  ) = RouteIpv4EgressOnlyGatewayId;

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
final class RouteIpv4EgressOnlyGatewayId extends RouteIpv4Egress {
  const RouteIpv4EgressOnlyGatewayId(this.egressOnlyGatewayId);

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
           'core_network_arn': ?coreNetworkArn,
           ...?ipv4Egress?.argMap,
           ...?prefixListEndpoint?.argMap,
           'gateway_id': ?gatewayId,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute>`.
  RefTo<AwsRoute> get ref => RefTo.of(this);

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

  /// Reference to `carrier_gateway_id` attribute.
  TfRef<String> get carrierGatewayId =>
      TfRef.attribute<String>(this, 'carrier_gateway_id');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `destination_cidr_block` attribute.
  TfRef<String> get destinationCidrBlock =>
      TfRef.attribute<String>(this, 'destination_cidr_block');

  /// Reference to `destination_ipv6_cidr_block` attribute.
  TfRef<String> get destinationIpv6CidrBlock =>
      TfRef.attribute<String>(this, 'destination_ipv6_cidr_block');

  /// Reference to `destination_prefix_list_id` attribute.
  TfRef<String> get destinationPrefixListId =>
      TfRef.attribute<String>(this, 'destination_prefix_list_id');

  /// Reference to `egress_only_gateway_id` attribute.
  TfRef<String> get egressOnlyGatewayId =>
      TfRef.attribute<String>(this, 'egress_only_gateway_id');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `local_gateway_id` attribute.
  TfRef<String> get localGatewayId =>
      TfRef.attribute<String>(this, 'local_gateway_id');

  /// Reference to `nat_gateway_id` attribute.
  TfRef<String> get natGatewayId =>
      TfRef.attribute<String>(this, 'nat_gateway_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArn =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `vpc_endpoint_id` attribute.
  TfRef<String> get vpcEndpointId =>
      TfRef.attribute<String>(this, 'vpc_endpoint_id');

  /// Reference to `vpc_peering_connection_id` attribute.
  TfRef<String> get vpcPeeringConnectionId =>
      TfRef.attribute<String>(this, 'vpc_peering_connection_id');
}
