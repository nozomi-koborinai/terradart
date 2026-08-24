// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_namespaces`.
const Set<String> _cloudflareAiSearchNamespacesSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_namespaces`.
final class DataCloudflareAiSearchNamespaces extends Data {
  static const String tfType = 'cloudflare_ai_search_namespaces';

  DataCloudflareAiSearchNamespaces({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchNamespacesSensitive;
}
