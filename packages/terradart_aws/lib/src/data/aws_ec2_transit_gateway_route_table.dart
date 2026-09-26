// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_transit_gateway_route_table`.
const Set<String> _awsEc2TransitGatewayRouteTableSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_transit_gateway_route_table` (derived from provider schema).
@immutable
final class DataEc2TransitGatewayRouteTableFilter {
  const DataEc2TransitGatewayRouteTableFilter({
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

/// Factory wrapper for `aws_ec2_transit_gateway_route_table`.
final class DataAwsEc2TransitGatewayRouteTable extends Data {
  static const String tfType = 'aws_ec2_transit_gateway_route_table';

  DataAwsEc2TransitGatewayRouteTable({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2TransitGatewayRouteTableFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TransitGatewayRouteTableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_association_route_table` attribute.
  TfRef<bool> get defaultAssociationRouteTable =>
      TfRef.attribute<bool>(this, 'default_association_route_table');

  /// Reference to `default_propagation_route_table` attribute.
  TfRef<bool> get defaultPropagationRouteTable =>
      TfRef.attribute<bool>(this, 'default_propagation_route_table');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');
}
