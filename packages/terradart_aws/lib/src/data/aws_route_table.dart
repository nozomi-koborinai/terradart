// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_route_table.dart';
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_route_table`.
const Set<String> _awsRouteTableSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_route_table` (derived from provider schema).
@immutable
final class DataRouteTableFilter {
  const DataRouteTableFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_route_table`.
final class DataAwsRouteTable extends Data {
  static const String tfType = 'aws_route_table';

  DataAwsRouteTable(
    super.localName, {
    TfArg<String>? gatewayId,
    TfArg<String>? region,
    TfArg<String>? routeTableId,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<DataRouteTableFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gateway_id': ?gatewayId,
           'region': ?region,
           'route_table_id': ?routeTableId,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteTableSensitive;

  /// A reference to the `aws_route_table` this data source reads, for
  /// arguments typed `RefTo<AwsRouteTable>`.
  RefTo<AwsRouteTable> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `routes` attribute.
  TfRef<List<Map<String, Object?>>> get routes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routes');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
