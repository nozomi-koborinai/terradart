// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? connectorid,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'connectorid': ?connectorid,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSitesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `connectorid` attribute.
  TfRef<String> get connectorid => TfRef.attribute<String>(this, 'connectorid');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
