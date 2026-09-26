// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_dhcp_options`.
const Set<String> _awsVpcDhcpOptionsSensitive = <String>{};

/// Factory wrapper for `aws_vpc_dhcp_options`.
final class AwsVpcDhcpOptions extends Resource {
  static const String tfType = 'aws_vpc_dhcp_options';

  AwsVpcDhcpOptions({
    required super.localName,
    TfArg<String>? domainName,
    TfArg<List<String>>? domainNameServers,
    TfArg<String>? ipv6AddressPreferredLeaseTime,
    TfArg<List<String>>? netbiosNameServers,
    TfArg<String>? netbiosNodeType,
    TfArg<List<String>>? ntpServers,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (domainName != null) 'domain_name': domainName,
           if (domainNameServers != null)
             'domain_name_servers': domainNameServers,
           if (ipv6AddressPreferredLeaseTime != null)
             'ipv6_address_preferred_lease_time': ipv6AddressPreferredLeaseTime,
           if (netbiosNameServers != null)
             'netbios_name_servers': netbiosNameServers,
           if (netbiosNodeType != null) 'netbios_node_type': netbiosNodeType,
           if (ntpServers != null) 'ntp_servers': ntpServers,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcDhcpOptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
