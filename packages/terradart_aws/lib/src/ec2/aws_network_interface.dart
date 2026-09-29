// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_network_interface`.
const Set<String> _awsNetworkInterfaceSensitive = <String>{};

/// Network Interface Interface enum for `interface_type`.
enum NetworkInterfaceInterfaceType implements TerraformEnum {
  efa('efa'),
  efaOnly('efa-only'),
  branch('branch'),
  trunk('trunk');

  const NetworkInterfaceInterfaceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `ipv4_prefix_count`, `ipv4_prefixes` on `aws_network_interface`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv4PrefixCount(...)`.
sealed class NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes {
  const NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes();

  /// Sets `ipv4_prefix_count`.
  const factory NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes.ipv4PrefixCount(
    TfArg<num> ipv4PrefixCount,
  ) = NetworkInterfaceIpv4PrefixCountOrIpv4PrefixesIpv4PrefixCount;

  /// Sets `ipv4_prefixes`.
  const factory NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes.ipv4Prefixes(
    TfArg<List<String>> ipv4Prefixes,
  ) = NetworkInterfaceIpv4PrefixCountOrIpv4PrefixesIpv4Prefixes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes.ipv4PrefixCount] choice: sets `ipv4_prefix_count`.
final class NetworkInterfaceIpv4PrefixCountOrIpv4PrefixesIpv4PrefixCount
    extends NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes {
  const NetworkInterfaceIpv4PrefixCountOrIpv4PrefixesIpv4PrefixCount(
    this.ipv4PrefixCount,
  );

  final TfArg<num> ipv4PrefixCount;

  @override
  String get blockKey => 'ipv4_prefix_count';

  @override
  Map<String, Object?> encode() => {
    'ipv4_prefix_count': ipv4PrefixCount.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv4_prefix_count': ipv4PrefixCount,
  };
}

/// The [NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes.ipv4Prefixes] choice: sets `ipv4_prefixes`.
final class NetworkInterfaceIpv4PrefixCountOrIpv4PrefixesIpv4Prefixes
    extends NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes {
  const NetworkInterfaceIpv4PrefixCountOrIpv4PrefixesIpv4Prefixes(
    this.ipv4Prefixes,
  );

  final TfArg<List<String>> ipv4Prefixes;

  @override
  String get blockKey => 'ipv4_prefixes';

  @override
  Map<String, Object?> encode() => {'ipv4_prefixes': ipv4Prefixes.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv4_prefixes': ipv4Prefixes};
}

/// At most one of `ipv6_address_count`, `ipv6_address_list`, `ipv6_addresses` on `aws_network_interface`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv6AddressCount(...)`.
sealed class NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses {
  const NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses();

  /// Sets `ipv6_address_count`.
  const factory NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses.ipv6AddressCount(
    TfArg<num> ipv6AddressCount,
  ) = NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6AddressCount;

  /// Sets `ipv6_address_list`.
  const factory NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses.ipv6AddressList(
    TfArg<List<String>> ipv6AddressList,
  ) = NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6AddressList;

  /// Sets `ipv6_addresses`.
  const factory NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses.ipv6Addresses(
    TfArg<List<String>> ipv6Addresses,
  ) = NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6Addresses;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses.ipv6AddressCount] choice: sets `ipv6_address_count`.
final class NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6AddressCount
    extends NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses {
  const NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6AddressCount(
    this.ipv6AddressCount,
  );

  final TfArg<num> ipv6AddressCount;

  @override
  String get blockKey => 'ipv6_address_count';

  @override
  Map<String, Object?> encode() => {
    'ipv6_address_count': ipv6AddressCount.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_address_count': ipv6AddressCount,
  };
}

/// The [NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses.ipv6AddressList] choice: sets `ipv6_address_list`.
final class NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6AddressList
    extends NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses {
  const NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6AddressList(
    this.ipv6AddressList,
  );

  final TfArg<List<String>> ipv6AddressList;

  @override
  String get blockKey => 'ipv6_address_list';

  @override
  Map<String, Object?> encode() => {
    'ipv6_address_list': ipv6AddressList.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_address_list': ipv6AddressList,
  };
}

/// The [NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses.ipv6Addresses] choice: sets `ipv6_addresses`.
final class NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6Addresses
    extends NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses {
  const NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6AddressesIpv6Addresses(
    this.ipv6Addresses,
  );

  final TfArg<List<String>> ipv6Addresses;

  @override
  String get blockKey => 'ipv6_addresses';

  @override
  Map<String, Object?> encode() => {'ipv6_addresses': ipv6Addresses.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv6_addresses': ipv6Addresses};
}

/// At most one of `ipv6_prefix_count`, `ipv6_prefixes` on `aws_network_interface`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv6PrefixCount(...)`.
sealed class NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes {
  const NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes();

  /// Sets `ipv6_prefix_count`.
  const factory NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes.ipv6PrefixCount(
    TfArg<num> ipv6PrefixCount,
  ) = NetworkInterfaceIpv6PrefixCountOrIpv6PrefixesIpv6PrefixCount;

  /// Sets `ipv6_prefixes`.
  const factory NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes.ipv6Prefixes(
    TfArg<List<String>> ipv6Prefixes,
  ) = NetworkInterfaceIpv6PrefixCountOrIpv6PrefixesIpv6Prefixes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes.ipv6PrefixCount] choice: sets `ipv6_prefix_count`.
final class NetworkInterfaceIpv6PrefixCountOrIpv6PrefixesIpv6PrefixCount
    extends NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes {
  const NetworkInterfaceIpv6PrefixCountOrIpv6PrefixesIpv6PrefixCount(
    this.ipv6PrefixCount,
  );

  final TfArg<num> ipv6PrefixCount;

  @override
  String get blockKey => 'ipv6_prefix_count';

  @override
  Map<String, Object?> encode() => {
    'ipv6_prefix_count': ipv6PrefixCount.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_prefix_count': ipv6PrefixCount,
  };
}

/// The [NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes.ipv6Prefixes] choice: sets `ipv6_prefixes`.
final class NetworkInterfaceIpv6PrefixCountOrIpv6PrefixesIpv6Prefixes
    extends NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes {
  const NetworkInterfaceIpv6PrefixCountOrIpv6PrefixesIpv6Prefixes(
    this.ipv6Prefixes,
  );

  final TfArg<List<String>> ipv6Prefixes;

  @override
  String get blockKey => 'ipv6_prefixes';

  @override
  Map<String, Object?> encode() => {'ipv6_prefixes': ipv6Prefixes.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv6_prefixes': ipv6Prefixes};
}

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
    TfArg<NetworkInterfaceInterfaceType>? interfaceType,
    NetworkInterfaceIpv4PrefixCountOrIpv4Prefixes?
    ipv4PrefixCountOrIpv4Prefixes,
    NetworkInterfaceIpv6AddressCountOrIpv6AddressListOrIpv6Addresses?
    ipv6AddressCountOrIpv6AddressListOrIpv6Addresses,
    TfArg<bool>? ipv6AddressListEnabled,
    NetworkInterfaceIpv6PrefixCountOrIpv6Prefixes?
    ipv6PrefixCountOrIpv6Prefixes,
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
           ...?ipv4PrefixCountOrIpv4Prefixes?.argMap,
           ...?ipv6AddressCountOrIpv6AddressListOrIpv6Addresses?.argMap,
           if (ipv6AddressListEnabled != null)
             'ipv6_address_list_enabled': ipv6AddressListEnabled,
           ...?ipv6PrefixCountOrIpv6Prefixes?.argMap,
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
