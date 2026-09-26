// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_acls`.
const Set<String> _awsNetworkAclsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_network_acls` (derived from provider schema).
@immutable
final class DataNetworkAclsFilter {
  const DataNetworkAclsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_network_acls`.
final class DataAwsNetworkAcls extends Data {
  static const String tfType = 'aws_network_acls';

  DataAwsNetworkAcls({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    List<DataNetworkAclsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkAclsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
