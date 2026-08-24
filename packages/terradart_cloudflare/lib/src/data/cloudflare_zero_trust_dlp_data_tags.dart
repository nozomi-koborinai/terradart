// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    required TfArg<String> categoryId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'category_id': categoryId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpDataTagsSensitive;
}
