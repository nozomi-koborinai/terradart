// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc`.
const Set<String> _awsVpcSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc` (derived from provider schema).
@immutable
final class DataVpcFilter {
  const DataVpcFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc`.
final class DataAwsVpc extends Data {
  static const String tfType = 'aws_vpc';

  DataAwsVpc({
    required super.localName,
    TfArg<String>? cidrBlock,
    TfArg<bool>? defaultCase,
    TfArg<String>? dhcpOptionsId,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    List<DataVpcFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (defaultCase != null) 'default': defaultCase,
           if (dhcpOptionsId != null) 'dhcp_options_id': dhcpOptionsId,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_block_associations` attribute.
  TfRef<List<Map<String, Object?>>> get cidrBlockAssociations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cidr_block_associations',
      );

  /// Reference to `enable_dns_hostnames` attribute.
  TfRef<bool> get enableDnsHostnames =>
      TfRef.attribute<bool>(this, 'enable_dns_hostnames');

  /// Reference to `enable_dns_support` attribute.
  TfRef<bool> get enableDnsSupport =>
      TfRef.attribute<bool>(this, 'enable_dns_support');

  /// Reference to `enable_network_address_usage_metrics` attribute.
  TfRef<bool> get enableNetworkAddressUsageMetrics =>
      TfRef.attribute<bool>(this, 'enable_network_address_usage_metrics');

  /// Reference to `instance_tenancy` attribute.
  TfRef<String> get instanceTenancy =>
      TfRef.attribute<String>(this, 'instance_tenancy');

  /// Reference to `ipv6_association_id` attribute.
  TfRef<String> get ipv6AssociationId =>
      TfRef.attribute<String>(this, 'ipv6_association_id');

  /// Reference to `ipv6_cidr_block` attribute.
  TfRef<String> get ipv6CidrBlock =>
      TfRef.attribute<String>(this, 'ipv6_cidr_block');

  /// Reference to `ipv6_cidr_block_associations` attribute.
  TfRef<List<Map<String, Object?>>> get ipv6CidrBlockAssociations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ipv6_cidr_block_associations',
      );

  /// Reference to `main_route_table_id` attribute.
  TfRef<String> get mainRouteTableId =>
      TfRef.attribute<String>(this, 'main_route_table_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
