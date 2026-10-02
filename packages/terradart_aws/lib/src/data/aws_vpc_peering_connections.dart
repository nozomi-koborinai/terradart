// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_peering_connections`.
const Set<String> _awsVpcPeeringConnectionsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_peering_connections` (derived from provider schema).
@immutable
final class DataVpcPeeringConnectionsFilter {
  const DataVpcPeeringConnectionsFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_peering_connections`.
final class DataAwsVpcPeeringConnections extends Data {
  static const String tfType = 'aws_vpc_peering_connections';

  DataAwsVpcPeeringConnections(
    super.localName, {
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataVpcPeeringConnectionsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
