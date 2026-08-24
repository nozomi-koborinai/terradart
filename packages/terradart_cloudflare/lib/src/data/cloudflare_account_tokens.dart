// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_tokens`.
const Set<String> _cloudflareAccountTokensSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_tokens`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class DataCloudflareAccountTokens extends Data {
  static const String tfType = 'cloudflare_account_tokens';

  DataCloudflareAccountTokens({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<bool>? includeExpired,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (includeExpired != null) 'include_expired': includeExpired,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountTokensSensitive;
}
