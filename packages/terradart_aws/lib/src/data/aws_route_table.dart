// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route_table`.
const Set<String> _awsRouteTableSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_route_table` (derived from provider schema).
@immutable
final class DataRouteTableFilter {
  const DataRouteTableFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_route_table`.
final class DataAwsRouteTable extends Data {
  static const String tfType = 'aws_route_table';

  DataAwsRouteTable({
    required super.localName,
    TfArg<String>? gatewayId,
    TfArg<String>? region,
    TfArg<String>? routeTableId,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    List<DataRouteTableFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (gatewayId != null) 'gateway_id': gatewayId,
           if (region != null) 'region': region,
           if (routeTableId != null) 'route_table_id': routeTableId,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRouteTableSensitive;

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
}
