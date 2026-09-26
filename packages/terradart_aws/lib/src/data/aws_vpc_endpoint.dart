// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint`.
const Set<String> _awsVpcEndpointSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_endpoint` (derived from provider schema).
@immutable
final class DataVpcEndpointFilter {
  const DataVpcEndpointFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_endpoint`.
final class DataAwsVpcEndpoint extends Data {
  static const String tfType = 'aws_vpc_endpoint';

  DataAwsVpcEndpoint({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? serviceName,
    TfArg<String>? serviceRegion,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcEndpointType,
    TfArg<String>? vpcId,
    List<DataVpcEndpointFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (serviceName != null) 'service_name': serviceName,
           if (serviceRegion != null) 'service_region': serviceRegion,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           if (vpcEndpointType != null) 'vpc_endpoint_type': vpcEndpointType,
           if (vpcId != null) 'vpc_id': vpcId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `dns_options` attribute.
  TfRef<List<Map<String, Object?>>> get dnsOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_options');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListId =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `private_dns_enabled` attribute.
  TfRef<bool> get privateDnsEnabled =>
      TfRef.attribute<bool>(this, 'private_dns_enabled');

  /// Reference to `requester_managed` attribute.
  TfRef<bool> get requesterManaged =>
      TfRef.attribute<bool>(this, 'requester_managed');

  /// Reference to `route_table_ids` attribute.
  TfRef<List<String>> get routeTableIds =>
      TfRef.attribute<List<String>>(this, 'route_table_ids');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');
}
