// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_dhcp_options`.
const Set<String> _awsVpcDhcpOptionsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_dhcp_options` (derived from provider schema).
@immutable
final class DataVpcDhcpOptionsFilter {
  const DataVpcDhcpOptionsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_dhcp_options`.
final class DataAwsVpcDhcpOptions extends Data {
  static const String tfType = 'aws_vpc_dhcp_options';

  DataAwsVpcDhcpOptions({
    required super.localName,
    TfArg<String>? dhcpOptionsId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataVpcDhcpOptionsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dhcpOptionsId != null) 'dhcp_options_id': dhcpOptionsId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcDhcpOptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `domain_name_servers` attribute.
  TfRef<List<String>> get domainNameServers =>
      TfRef.attribute<List<String>>(this, 'domain_name_servers');

  /// Reference to `ipv6_address_preferred_lease_time` attribute.
  TfRef<String> get ipv6AddressPreferredLeaseTime =>
      TfRef.attribute<String>(this, 'ipv6_address_preferred_lease_time');

  /// Reference to `netbios_name_servers` attribute.
  TfRef<List<String>> get netbiosNameServers =>
      TfRef.attribute<List<String>>(this, 'netbios_name_servers');

  /// Reference to `netbios_node_type` attribute.
  TfRef<String> get netbiosNodeType =>
      TfRef.attribute<String>(this, 'netbios_node_type');

  /// Reference to `ntp_servers` attribute.
  TfRef<List<String>> get ntpServers =>
      TfRef.attribute<List<String>>(this, 'ntp_servers');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
