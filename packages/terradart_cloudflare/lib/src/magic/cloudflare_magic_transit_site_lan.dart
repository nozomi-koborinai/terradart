// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_site_lan`.
const Set<String> _cloudflareMagicTransitSiteLanSensitive = <String>{};

/// Typed helper for the `nat` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanNat {
  const MagicTransitSiteLanNat({this.staticPrefix});

  final TfArg<String>? staticPrefix;

  Map<String, Object?> encode() => {'static_prefix': ?staticPrefix?.toTfJson()};
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
    'nat': ?nat?.encode(),
  };
}

/// Typed helper for the `routed_subnets.nat` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanRoutedSubnetsNat {
  const MagicTransitSiteLanRoutedSubnetsNat({this.staticPrefix});

  final TfArg<String>? staticPrefix;

  Map<String, Object?> encode() => {'static_prefix': ?staticPrefix?.toTfJson()};
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
    'secondary_address': ?secondaryAddress?.toTfJson(),
    'virtual_address': ?virtualAddress?.toTfJson(),
    'dhcp_relay': ?dhcpRelay?.encode(),
    'dhcp_server': ?dhcpServer?.encode(),
  };
}

/// Typed helper for the `static_addressing.dhcp_relay` block of
/// `cloudflare_magic_transit_site_lan` (derived from provider schema).
@immutable
final class MagicTransitSiteLanStaticAddressingDhcpRelay {
  const MagicTransitSiteLanStaticAddressingDhcpRelay({this.serverAddresses});

  final TfArg<List<String>>? serverAddresses;

  Map<String, Object?> encode() => {
    'server_addresses': ?serverAddresses?.toTfJson(),
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

  final TfArg<List<String>>? dnsServers;

  final TfArg<Map<String, String>>? reservations;

  final List<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptions>?
  dhcpOptions;

  Map<String, Object?> encode() => {
    'dhcp_pool_end': ?dhcpPoolEnd?.toTfJson(),
    'dhcp_pool_start': ?dhcpPoolStart?.toTfJson(),
    'dns_server': ?dnsServer?.toTfJson(),
    'dns_servers': ?dnsServers?.toTfJson(),
    'reservations': ?reservations?.toTfJson(),
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

  final TfArg<MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptionsType>
  type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptionsType
    implements TerraformEnum {
  text('text'),
  hex('hex'),
  ip('ip'),
  byte('byte'),
  short('short'),
  integer('integer');

  const MagicTransitSiteLanStaticAddressingDhcpServerDhcpOptionsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required RefTo<CloudflareAccount> accountId,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bond_id': ?bondId,
           'ha_link': ?haLink,
           'is_breakout': ?isBreakout,
           'is_prioritized': ?isPrioritized,
           'name': ?name,
           'physport': ?physport,
           'site_id': siteId,
           'vlan_tag': ?vlanTag,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicTransitSiteLan>`.
  RefTo<CloudflareMagicTransitSiteLan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bond_id` attribute.
  TfRef<num> get bondIdRef => TfRef.attribute<num>(this, 'bond_id');

  /// Reference to `ha_link` attribute.
  TfRef<bool> get haLinkRef => TfRef.attribute<bool>(this, 'ha_link');

  /// Reference to `is_breakout` attribute.
  TfRef<bool> get isBreakoutRef => TfRef.attribute<bool>(this, 'is_breakout');

  /// Reference to `is_prioritized` attribute.
  TfRef<bool> get isPrioritizedRef =>
      TfRef.attribute<bool>(this, 'is_prioritized');

  /// Reference to `physport` attribute.
  TfRef<num> get physportRef => TfRef.attribute<num>(this, 'physport');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteIdRef => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `vlan_tag` attribute.
  TfRef<num> get vlanTagRef => TfRef.attribute<num>(this, 'vlan_tag');
}
