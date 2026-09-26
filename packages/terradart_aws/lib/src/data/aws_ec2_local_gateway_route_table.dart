// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_route_table`.
const Set<String> _awsEc2LocalGatewayRouteTableSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_local_gateway_route_table` (derived from provider schema).
@immutable
final class DataEc2LocalGatewayRouteTableFilter {
  const DataEc2LocalGatewayRouteTableFilter({
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

/// Factory wrapper for `aws_ec2_local_gateway_route_table`.
final class DataAwsEc2LocalGatewayRouteTable extends Data {
  static const String tfType = 'aws_ec2_local_gateway_route_table';

  DataAwsEc2LocalGatewayRouteTable({
    required super.localName,
    TfArg<String>? localGatewayId,
    TfArg<String>? localGatewayRouteTableId,
    TfArg<String>? outpostArn,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    List<DataEc2LocalGatewayRouteTableFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (localGatewayId != null) 'local_gateway_id': localGatewayId,
           if (localGatewayRouteTableId != null)
             'local_gateway_route_table_id': localGatewayRouteTableId,
           if (outpostArn != null) 'outpost_arn': outpostArn,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2LocalGatewayRouteTableSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
