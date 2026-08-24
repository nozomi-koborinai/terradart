// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_custom_pages`.
const Set<String> _cloudflareZeroTrustAccessCustomPagesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_custom_pages`.
///
/// Accepted Permissions
///
/// - `Access: Custom Pages Read` - `Access: Custom Pages Write`
final class DataCloudflareZeroTrustAccessCustomPages extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_custom_pages';

  DataCloudflareZeroTrustAccessCustomPages({
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
      _cloudflareZeroTrustAccessCustomPagesSensitive;
}
