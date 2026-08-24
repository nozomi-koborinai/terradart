// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_categories`.
const Set<String> _cloudflareZeroTrustResourceLibraryCategoriesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_categories`.
final class DataCloudflareZeroTrustResourceLibraryCategories extends Data {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_categories';

  DataCloudflareZeroTrustResourceLibraryCategories({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? limit,
    TfArg<num>? maxItems,
    TfArg<num>? offset,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (limit != null) 'limit': limit,
           if (maxItems != null) 'max_items': maxItems,
           if (offset != null) 'offset': offset,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustResourceLibraryCategoriesSensitive;
}
