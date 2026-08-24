// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_instances`.
const Set<String> _cloudflareAiSearchInstancesSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_instances`.
final class DataCloudflareAiSearchInstances extends Data {
  static const String tfType = 'cloudflare_ai_search_instances';

  DataCloudflareAiSearchInstances({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? namespace,
    TfArg<String>? orderBy,
    TfArg<String>? orderByDirection,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (namespace != null) 'namespace': namespace,
           if (orderBy != null) 'order_by': orderBy,
           if (orderByDirection != null) 'order_by_direction': orderByDirection,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchInstancesSensitive;
}
