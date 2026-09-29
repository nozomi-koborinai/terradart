// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route_table_association`.
const Set<String> _awsRouteTableAssociationSensitive = <String>{};

/// Exactly one of `gateway_id`, `subnet_id` on `aws_route_table_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gatewayId(...)`.
sealed class RouteTableAssociationGatewayIdOrSubnetId {
  const RouteTableAssociationGatewayIdOrSubnetId();

  /// Sets `gateway_id`.
  const factory RouteTableAssociationGatewayIdOrSubnetId.gatewayId(
    TfArg<String> gatewayId,
  ) = RouteTableAssociationGatewayIdOrSubnetIdGatewayId;

  /// Sets `subnet_id`.
  const factory RouteTableAssociationGatewayIdOrSubnetId.subnetId(
    TfArg<String> subnetId,
  ) = RouteTableAssociationGatewayIdOrSubnetIdSubnetId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RouteTableAssociationGatewayIdOrSubnetId.gatewayId] choice: sets `gateway_id`.
final class RouteTableAssociationGatewayIdOrSubnetIdGatewayId
    extends RouteTableAssociationGatewayIdOrSubnetId {
  const RouteTableAssociationGatewayIdOrSubnetIdGatewayId(this.gatewayId);

  final TfArg<String> gatewayId;

  @override
  String get blockKey => 'gateway_id';

  @override
  Map<String, Object?> encode() => {'gateway_id': gatewayId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'gateway_id': gatewayId};
}

/// The [RouteTableAssociationGatewayIdOrSubnetId.subnetId] choice: sets `subnet_id`.
final class RouteTableAssociationGatewayIdOrSubnetIdSubnetId
    extends RouteTableAssociationGatewayIdOrSubnetId {
  const RouteTableAssociationGatewayIdOrSubnetIdSubnetId(this.subnetId);

  final TfArg<String> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnet_id': subnetId};
}

/// Factory wrapper for `aws_route_table_association`.
final class AwsRouteTableAssociation extends Resource {
  static const String tfType = 'aws_route_table_association';

  AwsRouteTableAssociation({
    required super.localName,
    required RouteTableAssociationGatewayIdOrSubnetId gatewayIdOrSubnetId,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...gatewayIdOrSubnetId.argMap,
           if (region != null) 'region': region,
           'route_table_id': routeTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteTableAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
