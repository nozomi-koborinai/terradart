// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site_lan`.
const Set<String> _cloudflareMagicTransitSiteLanSensitive = <String>{};

/// Typed helper for the `nat` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanNat {
  const MagicTransitSiteLanNat({this.staticPrefix});

  final TfArg<String>? staticPrefix;

  Map<String, Object?> encode() => {
    if (staticPrefix != null) 'static_prefix': staticPrefix!.toTfJson(),
  };
}

/// Typed helper for the `routed_subnets` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanRoutedSubnets {
  const MagicTransitSiteLanRoutedSubnets({
    required this.nextHop,
    required this.prefix,
    this.nat,
  });

  final TfArg<String> nextHop;

  final TfArg<String> prefix;

  final MagicTransitSiteLanRoutedSubnetsNat? nat;

  Map<String, Object?> encode() => {
    'next_hop': nextHop.toTfJson(),
    'prefix': prefix.toTfJson(),
    if (nat != null) 'nat': nat!.encode(),
  };
}

/// Typed helper for the `routed_subnets.nat` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanRoutedSubnetsNat {
  const MagicTransitSiteLanRoutedSubnetsNat({this.staticPrefix});

  final TfArg<String>? staticPrefix;

  Map<String, Object?> encode() => {
    if (staticPrefix != null) 'static_prefix': staticPrefix!.toTfJson(),
  };
}

/// Typed helper for the `static_addressing` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanStaticAddressing {
  const MagicTransitSiteLanStaticAddressing({
    required this.address,
    this.secondaryAddress,
    this.virtualAddress,
    this.dhcpRelay,
    this.dhcpServer,
  });

  final TfArg<String> address;

  final TfArg<String>? secondaryAddress;

  final TfArg<String>? virtualAddress;

  final MagicTransitSiteLanStaticAddressingDhcpRelay? dhcpRelay;

  final MagicTransitSiteLanStaticAddressingDhcpServer? dhcpServer;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    if (secondaryAddress != null)
      'secondary_address': secondaryAddress!.toTfJson(),
    if (virtualAddress != null) 'virtual_address': virtualAddress!.toTfJson(),
    if (dhcpRelay != null) 'dhcp_relay': dhcpRelay!.encode(),
    if (dhcpServer != null) 'dhcp_server': dhcpServer!.encode(),
  };
}

/// Typed helper for the `static_addressing.dhcp_relay` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanStaticAddressingDhcpRelay {
  const MagicTransitSiteLanStaticAddressingDhcpRelay({this.serverAddresses});

  final TfArg<List<Object?>>? serverAddresses;

  Map<String, Object?> encode() => {
    if (serverAddresses != null)
      'server_addresses': serverAddresses!.toTfJson(),
  };
}

/// Typed helper for the `static_addressing.dhcp_server` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanStaticAddressingDhcpServer {
  const MagicTransitSiteLanStaticAddressingDhcpServer({
    this.dhcpPoolEnd,
    this.dhcpPoolStart,
    this.dnsServer,
    this.dnsServers,
    this.reservations,
    this.dhcpOptions,
  });

  final TfArg<String>? dhcpPoolEnd;

  final TfArg<String>? dhcpPoolStart;

  final TfArg<String>? dnsServer;

  final TfArg<List<Object?>>? dnsServers;

  final TfArg<Map<String, String>>? reservations;

  final List<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptions>?
  dhcpOptions;

  Map<String, Object?> encode() => {
    if (dhcpPoolEnd != null) 'dhcp_pool_end': dhcpPoolEnd!.toTfJson(),
    if (dhcpPoolStart != null) 'dhcp_pool_start': dhcpPoolStart!.toTfJson(),
    if (dnsServer != null) 'dns_server': dnsServer!.toTfJson(),
    if (dnsServers != null) 'dns_servers': dnsServers!.toTfJson(),
    if (reservations != null) 'reservations': reservations!.toTfJson(),
    if (dhcpOptions != null)
      'dhcp_options': [for (final e in dhcpOptions!) e.encode()],
  };
}

/// Typed helper for the `static_addressing.dhcp_server.dhcp_options` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptions {
  const MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptions({
    required this.code,
    required this.type,
    required this.value,
  });

  final TfArg<num> code;

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_site_lan`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class CloudflareMagicTransitSiteLan extends Resource {
  static const String tfType = 'cloudflare_magic_transit_site_lan';

  CloudflareMagicTransitSiteLan({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? bondId,
    TfArg<bool>? haLink,
    TfArg<bool>? isBreakout,
    TfArg<bool>? isPrioritized,
    TfArg<String>? name,
    TfArg<num>? physport,
    required TfArg<String> siteId,
    TfArg<num>? vlanTag,
    MagicTransitSiteLanNat? nat,
    List<MagicTransitSiteLanRoutedSubnets>? routedSubnets,
    MagicTransitSiteLanStaticAddressing? staticAddressing,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (bondId != null) 'bond_id': bondId,
           if (haLink != null) 'ha_link': haLink,
           if (isBreakout != null) 'is_breakout': isBreakout,
           if (isPrioritized != null) 'is_prioritized': isPrioritized,
           if (name != null) 'name': name,
           if (physport != null) 'physport': physport,
           'site_id': siteId,
           if (vlanTag != null) 'vlan_tag': vlanTag,
           if (nat != null) 'nat': TfArg.literal(nat.encode()),
           if (routedSubnets != null)
             'routed_subnets': TfArg.literal([
               for (final e in routedSubnets) e.encode(),
             ]),
           if (staticAddressing != null)
             'static_addressing': TfArg.literal(staticAddressing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteLanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
