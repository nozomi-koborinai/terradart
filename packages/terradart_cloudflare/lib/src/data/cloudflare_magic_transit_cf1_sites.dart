// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_cf1_sites`.
const Set<String> _cloudflareMagicTransitCf1SitesSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_cf1_sites`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitCf1Sites extends Data {
  static const String tfType = 'cloudflare_magic_transit_cf1_sites';

  DataCloudflareMagicTransitCf1Sites({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitCf1SitesSensitive;
}
