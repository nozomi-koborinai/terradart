// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_virtual_interface_group`.
const Set<String> _awsEc2LocalGatewayVirtualInterfaceGroupSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_local_gateway_virtual_interface_group` (derived from provider schema).
@immutable
final class DataEc2LocalGatewayVirtualInterfaceGroupFilter {
  const DataEc2LocalGatewayVirtualInterfaceGroupFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_local_gateway_virtual_interface_group`.
final class DataAwsEc2LocalGatewayVirtualInterfaceGroup extends Data {
  static const String tfType = 'aws_ec2_local_gateway_virtual_interface_group';

  DataAwsEc2LocalGatewayVirtualInterfaceGroup({
    required super.localName,
    TfArg<String>? localGatewayId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2LocalGatewayVirtualInterfaceGroupFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (localGatewayId != null) 'local_gateway_id': localGatewayId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2LocalGatewayVirtualInterfaceGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `local_gateway_virtual_interface_ids` attribute.
  TfRef<List<String>> get localGatewayVirtualInterfaceIds =>
      TfRef.attribute<List<String>>(
        this,
        'local_gateway_virtual_interface_ids',
      );
}
