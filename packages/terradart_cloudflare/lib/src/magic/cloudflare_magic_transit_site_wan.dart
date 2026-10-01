// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_site_wan`.
const Set<String> _cloudflareMagicTransitSiteWanSensitive = <String>{};

/// Typed helper for the `static_addressing` block of
/// `cloudflare_magic_transit_site_wan` (derived from provider schema).
@immutable
final class MagicTransitSiteWanStaticAddressing {
  const MagicTransitSiteWanStaticAddressing({
    required this.address,
    required this.gatewayAddress,
    this.secondaryAddress,
  });

  final TfArg<String> address;

  final TfArg<String> gatewayAddress;

  final TfArg<String>? secondaryAddress;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'gateway_address': gatewayAddress.toTfJson(),
    'secondary_address': ?secondaryAddress?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_site_wan`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class CloudflareMagicTransitSiteWan extends Resource {
  static const String tfType = 'cloudflare_magic_transit_site_wan';

  CloudflareMagicTransitSiteWan(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? name,
    required TfArg<num> physport,
    TfArg<num>? priority,
    required TfArg<String> siteId,
    TfArg<num>? vlanTag,
    MagicTransitSiteWanStaticAddressing? staticAddressing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': ?name,
           'physport': physport,
           'priority': ?priority,
           'site_id': siteId,
           'vlan_tag': ?vlanTag,
           if (staticAddressing != null)
             'static_addressing': TfArg.literal(staticAddressing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteWanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicTransitSiteWan>`.
  RefTo<CloudflareMagicTransitSiteWan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `health_check_rate` attribute.
  TfRef<String> get healthCheckRate =>
      TfRef.attribute<String>(this, 'health_check_rate');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `physport` attribute.
  TfRef<num> get physport => TfRef.attribute<num>(this, 'physport');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `vlan_tag` attribute.
  TfRef<num> get vlanTag => TfRef.attribute<num>(this, 'vlan_tag');
}
