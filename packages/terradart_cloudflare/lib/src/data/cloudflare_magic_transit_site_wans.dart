// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site_wans`.
const Set<String> _cloudflareMagicTransitSiteWansSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_site_wans`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSiteWans extends Data {
  static const String tfType = 'cloudflare_magic_transit_site_wans';

  DataCloudflareMagicTransitSiteWans({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    required TfArg<String> siteId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           'site_id': siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteWansSensitive;
}
