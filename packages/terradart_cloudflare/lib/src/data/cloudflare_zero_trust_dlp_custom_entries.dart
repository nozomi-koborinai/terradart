// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_custom_entries`.
const Set<String> _cloudflareZeroTrustDlpCustomEntriesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_custom_entries`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpCustomEntries extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_custom_entries';

  DataCloudflareZeroTrustDlpCustomEntries({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpCustomEntriesSensitive;
}
