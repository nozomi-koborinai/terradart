// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_instances`.
const Set<String> _awsInstancesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_instances` (derived from provider schema).
@immutable
final class DataInstancesFilter {
  const DataInstancesFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_instances`.
final class DataAwsInstances extends Data {
  static const String tfType = 'aws_instances';

  DataAwsInstances({
    required super.localName,
    TfArg<List<String>>? instanceStateNames,
    TfArg<Map<String, String>>? instanceTags,
    TfArg<String>? region,
    List<DataInstancesFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (instanceStateNames != null)
             'instance_state_names': instanceStateNames,
           if (instanceTags != null) 'instance_tags': instanceTags,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInstancesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `private_ips` attribute.
  TfRef<List<String>> get privateIps =>
      TfRef.attribute<List<String>>(this, 'private_ips');

  /// Reference to `public_ips` attribute.
  TfRef<List<String>> get publicIps =>
      TfRef.attribute<List<String>>(this, 'public_ips');
}
