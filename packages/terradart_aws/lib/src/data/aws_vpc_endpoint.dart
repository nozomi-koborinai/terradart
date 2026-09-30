// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpc_endpoint.dart';
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_endpoint`.
const Set<String> _awsVpcEndpointSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_endpoint` (derived from provider schema).
@immutable
final class DataVpcEndpointFilter {
  const DataVpcEndpointFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

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
    RefTo<AwsVpc>? vpcId,
    List<DataVpcEndpointFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'service_name': ?serviceName,
           'service_region': ?serviceRegion,
           'state': ?state,
           'tags': ?tags,
           'vpc_endpoint_type': ?vpcEndpointType,
           'vpc_id': ?vpcId?.encodeAs('id'),
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointSensitive;

  /// A reference to the `aws_vpc_endpoint` this data source reads, for
  /// arguments typed `RefTo<AwsVpcEndpoint>`.
  RefTo<AwsVpcEndpoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceNameRef =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `service_region` attribute.
  TfRef<String> get serviceRegionRef =>
      TfRef.attribute<String>(this, 'service_region');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_endpoint_type` attribute.
  TfRef<String> get vpcEndpointTypeRef =>
      TfRef.attribute<String>(this, 'vpc_endpoint_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcIdRef => TfRef.attribute<String>(this, 'vpc_id');
}
