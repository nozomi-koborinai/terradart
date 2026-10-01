// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_network_interface`.
const Set<String> _awsNetworkInterfaceSensitive = <String>{};

/// Network Interface enum for `interface_type`.
extension type const NetworkInterfaceType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkInterfaceType.variable(String name) : this._(TfArg.variable(name));
  NetworkInterfaceType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkInterfaceType.arg(TfArg<String> arg) : this._(arg);

  static const efa = NetworkInterfaceType._(TfArgLiteral('efa'));
  static const efaOnly = NetworkInterfaceType._(TfArgLiteral('efa-only'));
  static const branch = NetworkInterfaceType._(TfArgLiteral('branch'));
  static const trunk = NetworkInterfaceType._(TfArgLiteral('trunk'));

  static const List<NetworkInterfaceType> values = [
    efa,
    efaOnly,
    branch,
    trunk,
  ];
}

/// At most one of `ipv4_prefix_count`, `ipv4_prefixes` on `aws_network_interface`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv4PrefixCount(...)`.
sealed class NetworkInterfaceIpv4Prefix {
  const NetworkInterfaceIpv4Prefix();

  /// Sets `ipv4_prefix_count`.
  const factory NetworkInterfaceIpv4Prefix.ipv4PrefixCount(
    TfArg<num> ipv4PrefixCount,
  ) = NetworkInterfaceIpv4PrefixCount;

  /// Sets `ipv4_prefixes`.
  const factory NetworkInterfaceIpv4Prefix.ipv4Prefixes(
    TfArg<List<String>> ipv4Prefixes,
  ) = NetworkInterfaceIpv4PrefixIpv4Prefixes;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkInterfaceIpv4Prefix.ipv4PrefixCount] choice: sets `ipv4_prefix_count`.
final class NetworkInterfaceIpv4PrefixCount extends NetworkInterfaceIpv4Prefix {
  const NetworkInterfaceIpv4PrefixCount(this.ipv4PrefixCount);

  final TfArg<num> ipv4PrefixCount;

  @internal
  @override
  String get blockKey => 'ipv4_prefix_count';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ipv4_prefix_count': ipv4PrefixCount.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv4_prefix_count': ipv4PrefixCount,
  };
}

/// The [NetworkInterfaceIpv4Prefix.ipv4Prefixes] choice: sets `ipv4_prefixes`.
final class NetworkInterfaceIpv4PrefixIpv4Prefixes
    extends NetworkInterfaceIpv4Prefix {
  const NetworkInterfaceIpv4PrefixIpv4Prefixes(this.ipv4Prefixes);

  final TfArg<List<String>> ipv4Prefixes;

  @internal
  @override
  String get blockKey => 'ipv4_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {'ipv4_prefixes': ipv4Prefixes.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv4_prefixes': ipv4Prefixes};
}

/// At most one of `ipv6_address_count`, `ipv6_address_list`, `ipv6_addresses` on `aws_network_interface`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv6AddressCount(...)`.
sealed class NetworkInterfaceIpv6Address {
  const NetworkInterfaceIpv6Address();

  /// Sets `ipv6_address_count`.
  const factory NetworkInterfaceIpv6Address.ipv6AddressCount(
    TfArg<num> ipv6AddressCount,
  ) = NetworkInterfaceIpv6AddressCount;

  /// Sets `ipv6_address_list`.
  const factory NetworkInterfaceIpv6Address.ipv6AddressList(
    TfArg<List<String>> ipv6AddressList,
  ) = NetworkInterfaceIpv6AddressList;

  /// Sets `ipv6_addresses`.
  const factory NetworkInterfaceIpv6Address.ipv6Addresses(
    TfArg<List<String>> ipv6Addresses,
  ) = NetworkInterfaceIpv6AddressIpv6Addresses;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkInterfaceIpv6Address.ipv6AddressCount] choice: sets `ipv6_address_count`.
final class NetworkInterfaceIpv6AddressCount
    extends NetworkInterfaceIpv6Address {
  const NetworkInterfaceIpv6AddressCount(this.ipv6AddressCount);

  final TfArg<num> ipv6AddressCount;

  @internal
  @override
  String get blockKey => 'ipv6_address_count';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ipv6_address_count': ipv6AddressCount.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_address_count': ipv6AddressCount,
  };
}

/// The [NetworkInterfaceIpv6Address.ipv6AddressList] choice: sets `ipv6_address_list`.
final class NetworkInterfaceIpv6AddressList
    extends NetworkInterfaceIpv6Address {
  const NetworkInterfaceIpv6AddressList(this.ipv6AddressList);

  final TfArg<List<String>> ipv6AddressList;

  @internal
  @override
  String get blockKey => 'ipv6_address_list';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ipv6_address_list': ipv6AddressList.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_address_list': ipv6AddressList,
  };
}

/// The [NetworkInterfaceIpv6Address.ipv6Addresses] choice: sets `ipv6_addresses`.
final class NetworkInterfaceIpv6AddressIpv6Addresses
    extends NetworkInterfaceIpv6Address {
  const NetworkInterfaceIpv6AddressIpv6Addresses(this.ipv6Addresses);

  final TfArg<List<String>> ipv6Addresses;

  @internal
  @override
  String get blockKey => 'ipv6_addresses';

  @internal
  @override
  Map<String, Object?> encode() => {'ipv6_addresses': ipv6Addresses.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'ipv6_addresses': ipv6Addresses};
}

/// At most one of `ipv6_prefix_count`, `ipv6_prefixes` on `aws_network_interface`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.ipv6PrefixCount(...)`.
sealed class NetworkInterfaceIpv6Prefix {
  const NetworkInterfaceIpv6Prefix();

  /// Sets `ipv6_prefix_count`.
  const factory NetworkInterfaceIpv6Prefix.ipv6PrefixCount(
    TfArg<num> ipv6PrefixCount,
  ) = NetworkInterfaceIpv6PrefixCount;

  /// Sets `ipv6_prefixes`.
  const factory NetworkInterfaceIpv6Prefix.ipv6Prefixes(
    TfArg<List<String>> ipv6Prefixes,
  ) = NetworkInterfaceIpv6PrefixIpv6Prefixes;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkInterfaceIpv6Prefix.ipv6PrefixCount] choice: sets `ipv6_prefix_count`.
final class NetworkInterfaceIpv6PrefixCount extends NetworkInterfaceIpv6Prefix {
  const NetworkInterfaceIpv6PrefixCount(this.ipv6PrefixCount);

  final TfArg<num> ipv6PrefixCount;

  @internal
  @override
  String get blockKey => 'ipv6_prefix_count';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ipv6_prefix_count': ipv6PrefixCount.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ipv6_prefix_count': ipv6PrefixCount,
  };
}

/// The [NetworkInterfaceIpv6Prefix.ipv6Prefixes] choice: sets `ipv6_prefixes`.
final class NetworkInterfaceIpv6PrefixIpv6Prefixes
    extends NetworkInterfaceIpv6Prefix {
  const NetworkInterfaceIpv6PrefixIpv6Prefixes(this.ipv6Prefixes);

  final TfArg<List<String>> ipv6Prefixes;

  @internal
  @override
  String get blockKey => 'ipv6_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {'ipv6_prefixes': ipv6Prefixes.toTfJson()};

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'device_index': deviceIndex.toTfJson(),
    'instance': instance.toTfJson(),
    'network_card_index': ?networkCardIndex?.toTfJson(),
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

  final NetworkInterfaceEnaSrdUdpSpecification? enaSrdUdpSpecification;

  @internal
  Map<String, Object?> encode() => {
    'ena_srd_enabled': ?enaSrdEnabled?.toTfJson(),
    'ena_srd_udp_specification': ?enaSrdUdpSpecification?.encode(),
  };
}

/// Typed helper for the `ena_srd_specification.ena_srd_udp_specification` block of
/// `aws_network_interface` (derived from provider schema).
@immutable
final class NetworkInterfaceEnaSrdUdpSpecification {
  const NetworkInterfaceEnaSrdUdpSpecification({this.enaSrdUdpEnabled});

  final TfArg<bool>? enaSrdUdpEnabled;

  @internal
  Map<String, Object?> encode() => {
    'ena_srd_udp_enabled': ?enaSrdUdpEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `aws_network_interface`.
final class AwsNetworkInterface extends Resource {
  static const String tfType = 'aws_network_interface';

  AwsNetworkInterface(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? enablePrimaryIpv6,
    NetworkInterfaceType? interfaceType,
    NetworkInterfaceIpv4Prefix? ipv4Prefix,
    NetworkInterfaceIpv6Address? ipv6Address,
    TfArg<bool>? ipv6AddressListEnabled,
    NetworkInterfaceIpv6Prefix? ipv6Prefix,
    TfArg<String>? privateIp,
    TfArg<List<String>>? privateIpList,
    TfArg<bool>? privateIpListEnabled,
    TfArg<List<String>>? privateIps,
    TfArg<num>? privateIpsCount,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    TfArg<bool>? sourceDestCheck,
    required RefTo<AwsSubnet> subnetId,
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
           'description': ?description,
           'enable_primary_ipv6': ?enablePrimaryIpv6,
           'interface_type': ?interfaceType,
           ...?ipv4Prefix?.argMap,
           ...?ipv6Address?.argMap,
           'ipv6_address_list_enabled': ?ipv6AddressListEnabled,
           ...?ipv6Prefix?.argMap,
           'private_ip': ?privateIp,
           'private_ip_list': ?privateIpList,
           'private_ip_list_enabled': ?privateIpListEnabled,
           'private_ips': ?privateIps,
           'private_ips_count': ?privateIpsCount,
           'region': ?region,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'source_dest_check': ?sourceDestCheck,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkInterface>`.
  RefTo<AwsNetworkInterface> get ref => RefTo.of(this);

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_primary_ipv6` attribute.
  TfRef<bool> get enablePrimaryIpv6 =>
      TfRef.attribute<bool>(this, 'enable_primary_ipv6');

  /// Reference to `interface_type` attribute.
  TfRef<String> get interfaceType =>
      TfRef.attribute<String>(this, 'interface_type');

  /// Reference to `ipv4_prefix_count` attribute.
  TfRef<num> get ipv4PrefixCount =>
      TfRef.attribute<num>(this, 'ipv4_prefix_count');

  /// Reference to `ipv4_prefixes` attribute.
  TfRef<List<String>> get ipv4Prefixes =>
      TfRef.attribute<List<String>>(this, 'ipv4_prefixes');

  /// Reference to `ipv6_address_count` attribute.
  TfRef<num> get ipv6AddressCount =>
      TfRef.attribute<num>(this, 'ipv6_address_count');

  /// Reference to `ipv6_address_list` attribute.
  TfRef<List<String>> get ipv6AddressList =>
      TfRef.attribute<List<String>>(this, 'ipv6_address_list');

  /// Reference to `ipv6_address_list_enabled` attribute.
  TfRef<bool> get ipv6AddressListEnabled =>
      TfRef.attribute<bool>(this, 'ipv6_address_list_enabled');

  /// Reference to `ipv6_addresses` attribute.
  TfRef<List<String>> get ipv6Addresses =>
      TfRef.attribute<List<String>>(this, 'ipv6_addresses');

  /// Reference to `ipv6_prefix_count` attribute.
  TfRef<num> get ipv6PrefixCount =>
      TfRef.attribute<num>(this, 'ipv6_prefix_count');

  /// Reference to `ipv6_prefixes` attribute.
  TfRef<List<String>> get ipv6Prefixes =>
      TfRef.attribute<List<String>>(this, 'ipv6_prefixes');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `private_ip_list` attribute.
  TfRef<List<String>> get privateIpList =>
      TfRef.attribute<List<String>>(this, 'private_ip_list');

  /// Reference to `private_ip_list_enabled` attribute.
  TfRef<bool> get privateIpListEnabled =>
      TfRef.attribute<bool>(this, 'private_ip_list_enabled');

  /// Reference to `private_ips` attribute.
  TfRef<List<String>> get privateIps =>
      TfRef.attribute<List<String>>(this, 'private_ips');

  /// Reference to `private_ips_count` attribute.
  TfRef<num> get privateIpsCount =>
      TfRef.attribute<num>(this, 'private_ips_count');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `source_dest_check` attribute.
  TfRef<bool> get sourceDestCheck =>
      TfRef.attribute<bool>(this, 'source_dest_check');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
