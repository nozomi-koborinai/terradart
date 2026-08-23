// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_sites`.
const Set<String> _cloudflareMagicTransitSitesSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_sites`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSites extends Data {
  static const String tfType = 'cloudflare_magic_transit_sites';

  DataCloudflareMagicTransitSites({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? connectorid,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (connectorid != null) 'connectorid': connectorid,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSitesSensitive;
}
