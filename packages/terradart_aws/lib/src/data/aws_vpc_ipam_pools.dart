// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pools`.
const Set<String> _awsVpcIpamPoolsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_ipam_pools` (derived from provider schema).
@immutable
final class DataVpcIpamPoolsFilter {
  const DataVpcIpamPoolsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipam_pools`.
final class DataAwsVpcIpamPools extends Data {
  static const String tfType = 'aws_vpc_ipam_pools';

  DataAwsVpcIpamPools({
    required super.localName,
    TfArg<String>? region,
    List<DataVpcIpamPoolsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ipam_pools` attribute.
  TfRef<List<Map<String, Object?>>> get ipamPools =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipam_pools');
}
