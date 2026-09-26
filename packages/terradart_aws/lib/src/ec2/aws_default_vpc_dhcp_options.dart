// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_vpc_dhcp_options`.
const Set<String> _awsDefaultVpcDhcpOptionsSensitive = <String>{};

/// Factory wrapper for `aws_default_vpc_dhcp_options`.
final class AwsDefaultVpcDhcpOptions extends Resource {
  static const String tfType = 'aws_default_vpc_dhcp_options';

  AwsDefaultVpcDhcpOptions({
    required super.localName,
    TfArg<String>? ownerId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ownerId != null) 'owner_id': ownerId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultVpcDhcpOptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `domain_name_servers` attribute.
  TfRef<String> get domainNameServers =>
      TfRef.attribute<String>(this, 'domain_name_servers');

  /// Reference to `ipv6_address_preferred_lease_time` attribute.
  TfRef<String> get ipv6AddressPreferredLeaseTime =>
      TfRef.attribute<String>(this, 'ipv6_address_preferred_lease_time');

  /// Reference to `netbios_name_servers` attribute.
  TfRef<String> get netbiosNameServers =>
      TfRef.attribute<String>(this, 'netbios_name_servers');

  /// Reference to `netbios_node_type` attribute.
  TfRef<String> get netbiosNodeType =>
      TfRef.attribute<String>(this, 'netbios_node_type');

  /// Reference to `ntp_servers` attribute.
  TfRef<String> get ntpServers => TfRef.attribute<String>(this, 'ntp_servers');
}
