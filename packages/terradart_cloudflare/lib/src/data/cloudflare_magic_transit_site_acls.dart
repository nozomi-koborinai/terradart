// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site_acls`.
const Set<String> _cloudflareMagicTransitSiteAclsSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_site_acls`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSiteAcls extends Data {
  static const String tfType = 'cloudflare_magic_transit_site_acls';

  DataCloudflareMagicTransitSiteAcls({
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
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteAclsSensitive;
}
