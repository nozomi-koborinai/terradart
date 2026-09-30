// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_route_table_association`.
const Set<String> _awsRouteTableAssociationSensitive = <String>{};

/// Exactly one of `gateway_id`, `subnet_id` on `aws_route_table_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gatewayId(...)`.
sealed class RouteTableAssociationTarget {
  const RouteTableAssociationTarget();

  /// Sets `gateway_id`.
  const factory RouteTableAssociationTarget.gatewayId(TfArg<String> gatewayId) =
      RouteTableAssociationTargetGatewayId;

  /// Sets `subnet_id`.
  const factory RouteTableAssociationTarget.subnetId(
    RefTo<AwsSubnet> subnetId,
  ) = RouteTableAssociationTargetSubnetId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RouteTableAssociationTarget.gatewayId] choice: sets `gateway_id`.
final class RouteTableAssociationTargetGatewayId
    extends RouteTableAssociationTarget {
  const RouteTableAssociationTargetGatewayId(this.gatewayId);

  final TfArg<String> gatewayId;

  @override
  String get blockKey => 'gateway_id';

  @override
  Map<String, Object?> encode() => {'gateway_id': gatewayId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'gateway_id': gatewayId};
}

/// The [RouteTableAssociationTarget.subnetId] choice: sets `subnet_id`.
final class RouteTableAssociationTargetSubnetId
    extends RouteTableAssociationTarget {
  const RouteTableAssociationTargetSubnetId(this.subnetId);

  final RefTo<AwsSubnet> subnetId;

  @override
  String get blockKey => 'subnet_id';

  @override
  Map<String, Object?> encode() => {
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'subnet_id': subnetId.encodeAs('id'),
  };
}

/// Factory wrapper for `aws_route_table_association`.
final class AwsRouteTableAssociation extends Resource {
  static const String tfType = 'aws_route_table_association';

  AwsRouteTableAssociation({
    required super.localName,
    required RouteTableAssociationTarget target,
    TfArg<String>? region,
    required TfArg<String> routeTableId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...target.argMap,
           'region': ?region,
           'route_table_id': routeTableId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteTableAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRouteTableAssociation>`.
  RefTo<AwsRouteTableAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayIdRef => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableIdRef =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetIdRef => TfRef.attribute<String>(this, 'subnet_id');
}
