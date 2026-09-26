// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_coip_pool`.
const Set<String> _awsEc2CoipPoolSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_coip_pool` (derived from provider schema).
@immutable
final class DataEc2CoipPoolFilter {
  const DataEc2CoipPoolFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_coip_pool`.
final class DataAwsEc2CoipPool extends Data {
  static const String tfType = 'aws_ec2_coip_pool';

  DataAwsEc2CoipPool({
    required super.localName,
    TfArg<String>? localGatewayRouteTableId,
    TfArg<String>? poolId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2CoipPoolFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (localGatewayRouteTableId != null)
             'local_gateway_route_table_id': localGatewayRouteTableId,
           if (poolId != null) 'pool_id': poolId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2CoipPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `pool_cidrs` attribute.
  TfRef<List<String>> get poolCidrs =>
      TfRef.attribute<List<String>>(this, 'pool_cidrs');
}
