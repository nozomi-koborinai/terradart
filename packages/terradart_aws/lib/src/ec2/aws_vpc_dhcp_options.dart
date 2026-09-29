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
           'domain_name': ?domainName,
           'domain_name_servers': ?domainNameServers,
           'ipv6_address_preferred_lease_time': ?ipv6AddressPreferredLeaseTime,
           'netbios_name_servers': ?netbiosNameServers,
           'netbios_node_type': ?netbiosNodeType,
           'ntp_servers': ?ntpServers,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcDhcpOptionsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcDhcpOptions>`.
  RefTo<AwsVpcDhcpOptions> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
