// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_tokens`.
const Set<String> _cloudflareAiSearchTokensSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_tokens`.
final class DataCloudflareAiSearchTokens extends Data {
  static const String tfType = 'cloudflare_ai_search_tokens';

  DataCloudflareAiSearchTokens({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchTokensSensitive;
}
