// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_network_acls`.
const Set<String> _awsNetworkAclsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_network_acls` (derived from provider schema).
@immutable
final class DataNetworkAclsFilter {
  const DataNetworkAclsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_network_acls`.
final class DataAwsNetworkAcls extends Data {
  static const String tfType = 'aws_network_acls';

  DataAwsNetworkAcls(
    super.localName, {
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<DataNetworkAclsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
