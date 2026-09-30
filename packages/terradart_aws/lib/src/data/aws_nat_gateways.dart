// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_nat_gateways`.
const Set<String> _awsNatGatewaysSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_nat_gateways` (derived from provider schema).
@immutable
final class DataNatGatewaysFilter {
  const DataNatGatewaysFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_nat_gateways`.
final class DataAwsNatGateways extends Data {
  static const String tfType = 'aws_nat_gateways';

  DataAwsNatGateways({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<DataNatGatewaysFilter>? filter,
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
  Set<String> get sensitiveFields => _awsNatGatewaysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
