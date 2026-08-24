// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_list_items`.
const Set<String> _cloudflareListItemsSensitive = <String>{};

/// Factory wrapper for `cloudflare_list_items`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Edit` - `Account Filter Lists Read`
final class DataCloudflareListItems extends Data {
  static const String tfType = 'cloudflare_list_items';

  DataCloudflareListItems({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> listId,
    TfArg<num>? maxItems,
    TfArg<num>? perPage,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'list_id': listId,
           if (maxItems != null) 'max_items': maxItems,
           if (perPage != null) 'per_page': perPage,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListItemsSensitive;
}
