// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_route_table_routes`.
const Set<String> _awsEc2TransitGatewayRouteTableRoutesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_route_table_routes` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayRouteTableRoutesFilter {
  const DataEc2TransitGatewayRouteTableRoutesFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_transit_gateway_route_table_routes`.
final class DataAwsEc2TransitGatewayRouteTableRoutes extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_route_table_routes';

  DataAwsEc2TransitGatewayRouteTableRoutes({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> transitGatewayRouteTableId,
    required List<DataEc2TransitGatewayRouteTableRoutesFilter> filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'transit_gateway_route_table_id': transitGatewayRouteTableId,
           'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2TransitGatewayRouteTableRoutesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `routes` attribute.
  TfRef<List<Map<String, Object?>>> get routes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routes');
}
