// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site_lan`.
const Set<String> _cloudflareMagicTransitSiteLanSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_site_lan`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSiteLan extends Data {
  static const String tfType = 'cloudflare_magic_transit_site_lan';

  DataCloudflareMagicTransitSiteLan({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> lanId,
    required TfArg<String> siteId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'lan_id': lanId, 'site_id': siteId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteLanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bond_id` attribute.
  TfRef<num> get bondId => TfRef.attribute<num>(this, 'bond_id');

  /// Reference to `ha_link` attribute.
  TfRef<bool> get haLink => TfRef.attribute<bool>(this, 'ha_link');

  /// Reference to `is_breakout` attribute.
  TfRef<bool> get isBreakout => TfRef.attribute<bool>(this, 'is_breakout');

  /// Reference to `is_prioritized` attribute.
  TfRef<bool> get isPrioritized =>
      TfRef.attribute<bool>(this, 'is_prioritized');

  /// Reference to `physport` attribute.
  TfRef<num> get physport => TfRef.attribute<num>(this, 'physport');

  /// Reference to `vlan_tag` attribute.
  TfRef<num> get vlanTag => TfRef.attribute<num>(this, 'vlan_tag');
}
