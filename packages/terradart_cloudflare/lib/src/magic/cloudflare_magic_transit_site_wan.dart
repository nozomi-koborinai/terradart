// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'gateway_address': gatewayAddress.toTfJson(),
    if (secondaryAddress != null)
      'secondary_address': secondaryAddress!.toTfJson(),
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

  CloudflareMagicTransitSiteWan({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? name,
    required TfArg<num> physport,
    TfArg<num>? priority,
    required TfArg<String> siteId,
    TfArg<num>? vlanTag,
    MagicTransitSiteWanStaticAddressing? staticAddressing,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (name != null) 'name': name,
           'physport': physport,
           if (priority != null) 'priority': priority,
           'site_id': siteId,
           if (vlanTag != null) 'vlan_tag': vlanTag,
           if (staticAddressing != null)
             'static_addressing': TfArg.literal(staticAddressing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteWanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `health_check_rate` attribute.
  TfRef<String> get healthCheckRate =>
      TfRef.attribute<String>(this, 'health_check_rate');
}
