// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_data_tags`.
const Set<String> _cloudflareZeroTrustDlpDataTagsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_data_tags`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpDataTags extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_data_tags';

  DataCloudflareZeroTrustDlpDataTags({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> categoryId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'category_id': categoryId,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDataTagsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `category_id` attribute.
  TfRef<String> get categoryIdRef =>
      TfRef.attribute<String>(this, 'category_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
