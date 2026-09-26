// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_endpoint`.
const Set<String> _awsVpcEndpointSensitive = <String>{};

/// Typed helper for the `dns_options` block of
/// `aws_vpc_endpoint` (derived from provider schema).
@immutable
final class VpcEndpointDnsOptions {
  const VpcEndpointDnsOptions({
    this.dnsRecordIpType,
    this.privateDnsOnlyForInboundResolverEndpoint,
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  final TfArg<String>? dnsRecordIpType;

  final TfArg<bool>? privateDnsOnlyForInboundResolverEndpoint;

  final TfArg<String>? privateDnsPreference;

  final TfArg<List<Object?>>? privateDnsSpecifiedDomains;

  Map<String, Object?> encode() => {
    if (dnsRecordIpType != null)
      'dns_record_ip_type': dnsRecordIpType!.toTfJson(),
    if (privateDnsOnlyForInboundResolverEndpoint != null)
      'private_dns_only_for_inbound_resolver_endpoint':
          privateDnsOnlyForInboundResolverEndpoint!.toTfJson(),
    if (privateDnsPreference != null)
      'private_dns_preference': privateDnsPreference!.toTfJson(),
    if (privateDnsSpecifiedDomains != null)
      'private_dns_specified_domains': privateDnsSpecifiedDomains!.toTfJson(),
  };
}

/// Typed helper for the `subnet_configuration` block of
/// `aws_vpc_endpoint` (derived from provider schema).
@immutable
final class VpcEndpointSubnetConfiguration {
  const VpcEndpointSubnetConfiguration({this.ipv4, this.ipv6, this.subnetId});

  final TfArg<String>? ipv4;

  final TfArg<String>? ipv6;

  final TfArg<String>? subnetId;

  Map<String, Object?> encode() => {
    if (ipv4 != null) 'ipv4': ipv4!.toTfJson(),
    if (ipv6 != null) 'ipv6': ipv6!.toTfJson(),
    if (subnetId != null) 'subnet_id': subnetId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_endpoint`.
final class AwsVpcEndpoint extends Resource {
  static const String tfType = 'aws_vpc_endpoint';

  AwsVpcEndpoint({
    required super.localName,
    TfArg<bool>? autoAccept,
    TfArg<String>? ipAddressType,
    TfArg<String>? policy,
    TfArg<bool>? privateDnsEnabled,
    TfArg<String>? region,
    TfArg<String>? resourceConfigurationArn,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<String>>? securityGroupIds,
    TfArg<String>? serviceName,
    TfArg<String>? serviceNetworkArn,
    TfArg<String>? serviceRegion,
    TfArg<List<String>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcEndpointType,
    required TfArg<String> vpcId,
    VpcEndpointDnsOptions? dnsOptions,
    List<VpcEndpointSubnetConfiguration>? subnetConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoAccept != null) 'auto_accept': autoAccept,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (policy != null) 'policy': policy,
           if (privateDnsEnabled != null)
             'private_dns_enabled': privateDnsEnabled,
           if (region != null) 'region': region,
           if (resourceConfigurationArn != null)
             'resource_configuration_arn': resourceConfigurationArn,
           if (routeTableIds != null) 'route_table_ids': routeTableIds,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (serviceName != null) 'service_name': serviceName,
           if (serviceNetworkArn != null)
             'service_network_arn': serviceNetworkArn,
           if (serviceRegion != null) 'service_region': serviceRegion,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (vpcEndpointType != null) 'vpc_endpoint_type': vpcEndpointType,
           'vpc_id': vpcId,
           if (dnsOptions != null)
             'dns_options': TfArg.literal(dnsOptions.encode()),
           if (subnetConfiguration != null)
             'subnet_configuration': TfArg.literal([
               for (final e in subnetConfiguration) e.encode(),
             ]),
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

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListId =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `requester_managed` attribute.
  TfRef<bool> get requesterManaged =>
      TfRef.attribute<bool>(this, 'requester_managed');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
