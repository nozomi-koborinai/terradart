// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateways`.
const Set<String> _awsEc2LocalGatewaysSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_local_gateways` (derived from provider schema).
@immutable
final class DataEc2LocalGatewaysFilter {
  const DataEc2LocalGatewaysFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_local_gateways`.
final class DataAwsEc2LocalGateways extends Data {
  static const String tfType = 'aws_ec2_local_gateways';

  DataAwsEc2LocalGateways({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2LocalGatewaysFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2LocalGatewaysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
