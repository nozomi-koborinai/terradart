// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site_wan`.
const Set<String> _cloudflareMagicTransitSiteWanSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_site_wan`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSiteWan extends Data {
  static const String tfType = 'cloudflare_magic_transit_site_wan';

  DataCloudflareMagicTransitSiteWan({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> siteId,
    required TfArg<String> wanId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'site_id': siteId, 'wan_id': wanId},
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

  /// Reference to `physport` attribute.
  TfRef<num> get physport => TfRef.attribute<num>(this, 'physport');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `vlan_tag` attribute.
  TfRef<num> get vlanTag => TfRef.attribute<num>(this, 'vlan_tag');
}
