// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_ec2_local_gateway_route_table.dart';

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
           'local_gateway_id': ?localGatewayId,
           'local_gateway_route_table_id': ?localGatewayRouteTableId,
           'outpost_arn': ?outpostArn,
           'region': ?region,
           'state': ?state,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2LocalGatewayRouteTableSensitive;

  /// A reference to the `aws_ec2_local_gateway_route_table` this data source reads, for
  /// arguments typed `RefTo<AwsEc2LocalGatewayRouteTable>`.
  RefTo<AwsEc2LocalGatewayRouteTable> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
