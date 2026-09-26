// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_interface`.
const Set<String> _awsNetworkInterfaceSensitive = <String>{};

/// Typed helper for the `attachment` block of
/// `aws_network_interface` (derived from provider schema).
@immutable
final class NetworkInterfaceAttachment {
  const NetworkInterfaceAttachment({
    required this.deviceIndex,
    required this.instance,
    this.networkCardIndex,
  });

  final TfArg<num> deviceIndex;

  final TfArg<String> instance;

  final TfArg<num>? networkCardIndex;

  Map<String, Object?> encode() => {
    'device_index': deviceIndex.toTfJson(),
    'instance': instance.toTfJson(),
    if (networkCardIndex != null)
      'network_card_index': networkCardIndex!.toTfJson(),
  };
}

/// Typed helper for the `ena_srd_specification` block of
/// `aws_network_interface` (derived from provider schema).
@immutable
final class NetworkInterfaceEnaSrdSpecification {
  const NetworkInterfaceEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  final TfArg<bool>? enaSrdEnabled;

  final NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification?
  enaSrdUdpSpecification;

  Map<String, Object?> encode() => {
    if (enaSrdEnabled != null) 'ena_srd_enabled': enaSrdEnabled!.toTfJson(),
    if (enaSrdUdpSpecification != null)
      'ena_srd_udp_specification': enaSrdUdpSpecification!.encode(),
  };
}

/// Typed helper for the `ena_srd_specification.ena_srd_udp_specification` block of
/// `aws_network_interface` (derived from provider schema).
@immutable
final class NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification {
  const NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  final TfArg<bool>? enaSrdUdpEnabled;

  Map<String, Object?> encode() => {
    if (enaSrdUdpEnabled != null)
      'ena_srd_udp_enabled': enaSrdUdpEnabled!.toTfJson(),
  };
}

/// Factory wrapper for `aws_network_interface`.
final class AwsNetworkInterface extends Resource {
  static const String tfType = 'aws_network_interface';

  AwsNetworkInterface({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? enablePrimaryIpv6,
    TfArg<String>? interfaceType,
    TfArg<num>? ipv4PrefixCount,
    TfArg<List<String>>? ipv4Prefixes,
    TfArg<num>? ipv6AddressCount,
    TfArg<List<String>>? ipv6AddressList,
    TfArg<bool>? ipv6AddressListEnabled,
    TfArg<List<String>>? ipv6Addresses,
    TfArg<num>? ipv6PrefixCount,
    TfArg<List<String>>? ipv6Prefixes,
    TfArg<String>? privateIp,
    TfArg<List<String>>? privateIpList,
    TfArg<bool>? privateIpListEnabled,
    TfArg<List<String>>? privateIps,
    TfArg<num>? privateIpsCount,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroups,
    TfArg<bool>? sourceDestCheck,
    required TfArg<String> subnetId,
    TfArg<Map<String, String>>? tags,
    List<NetworkInterfaceAttachment>? attachment,
    NetworkInterfaceEnaSrdSpecification? enaSrdSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (enablePrimaryIpv6 != null)
             'enable_primary_ipv6': enablePrimaryIpv6,
           if (interfaceType != null) 'interface_type': interfaceType,
           if (ipv4PrefixCount != null) 'ipv4_prefix_count': ipv4PrefixCount,
           if (ipv4Prefixes != null) 'ipv4_prefixes': ipv4Prefixes,
           if (ipv6AddressCount != null) 'ipv6_address_count': ipv6AddressCount,
           if (ipv6AddressList != null) 'ipv6_address_list': ipv6AddressList,
           if (ipv6AddressListEnabled != null)
             'ipv6_address_list_enabled': ipv6AddressListEnabled,
           if (ipv6Addresses != null) 'ipv6_addresses': ipv6Addresses,
           if (ipv6PrefixCount != null) 'ipv6_prefix_count': ipv6PrefixCount,
           if (ipv6Prefixes != null) 'ipv6_prefixes': ipv6Prefixes,
           if (privateIp != null) 'private_ip': privateIp,
           if (privateIpList != null) 'private_ip_list': privateIpList,
           if (privateIpListEnabled != null)
             'private_ip_list_enabled': privateIpListEnabled,
           if (privateIps != null) 'private_ips': privateIps,
           if (privateIpsCount != null) 'private_ips_count': privateIpsCount,
           if (region != null) 'region': region,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (sourceDestCheck != null) 'source_dest_check': sourceDestCheck,
           'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (attachment != null)
             'attachment': TfArg.literal([
               for (final e in attachment) e.encode(),
             ]),
           if (enaSrdSpecification != null)
             'ena_srd_specification': TfArg.literal(
               enaSrdSpecification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkInterfaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `mac_address` attribute.
  TfRef<String> get macAddress => TfRef.attribute<String>(this, 'mac_address');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `private_dns_name` attribute.
  TfRef<String> get privateDnsName =>
      TfRef.attribute<String>(this, 'private_dns_name');
}
