// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_service_link_virtual_interfaces`.
const Set<String> _awsEc2ServiceLinkVirtualInterfacesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_service_link_virtual_interfaces` (derived from provider schema).
@immutable
final class DataEc2ServiceLinkVirtualInterfacesFilter {
  const DataEc2ServiceLinkVirtualInterfacesFilter({
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

/// Factory wrapper for `aws_ec2_service_link_virtual_interfaces`.
final class DataAwsEc2ServiceLinkVirtualInterfaces extends Data {
  static const String tfType = 'aws_ec2_service_link_virtual_interfaces';

  DataAwsEc2ServiceLinkVirtualInterfaces({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2ServiceLinkVirtualInterfacesFilter>? filter,
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
  Set<String> get sensitiveFields =>
      _awsEc2ServiceLinkVirtualInterfacesSensitive;

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
