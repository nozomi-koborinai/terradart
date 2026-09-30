// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_address_maps`.
const Set<String> _cloudflareAddressMapsSensitive = <String>{};

/// Factory wrapper for `cloudflare_address_maps`.
///
/// Accepted Permissions
///
/// - `Address Maps Read` - `Address Maps Write`
final class DataCloudflareAddressMaps extends Data {
  static const String tfType = 'cloudflare_address_maps';

  DataCloudflareAddressMaps({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAddressMapsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
