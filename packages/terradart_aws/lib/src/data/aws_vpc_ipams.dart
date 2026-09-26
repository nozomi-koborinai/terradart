// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipams`.
const Set<String> _awsVpcIpamsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_ipams` (derived from provider schema).
@immutable
final class DataVpcIpamsFilter {
  const DataVpcIpamsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipams`.
final class DataAwsVpcIpams extends Data {
  static const String tfType = 'aws_vpc_ipams';

  DataAwsVpcIpams({
    required super.localName,
    TfArg<List<String>>? ipamIds,
    TfArg<String>? region,
    List<DataVpcIpamsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ipamIds != null) 'ipam_ids': ipamIds,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamsSensitive;

  /// Reference to `ipams` attribute.
  TfRef<List<Map<String, Object?>>> get ipams =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipams');
}
