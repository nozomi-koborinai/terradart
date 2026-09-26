// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool_cidrs`.
const Set<String> _awsVpcIpamPoolCidrsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_ipam_pool_cidrs` (derived from provider schema).
@immutable
final class DataVpcIpamPoolCidrsFilter {
  const DataVpcIpamPoolCidrsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipam_pool_cidrs`.
final class DataAwsVpcIpamPoolCidrs extends Data {
  static const String tfType = 'aws_vpc_ipam_pool_cidrs';

  DataAwsVpcIpamPoolCidrs({
    required super.localName,
    required TfArg<String> ipamPoolId,
    TfArg<String>? region,
    List<DataVpcIpamPoolCidrsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ipam_pool_id': ipamPoolId,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolCidrsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ipam_pool_cidrs` attribute.
  TfRef<List<Map<String, Object?>>> get ipamPoolCidrs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipam_pool_cidrs');
}
