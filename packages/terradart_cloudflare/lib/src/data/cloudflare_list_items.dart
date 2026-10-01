// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> listId,
    TfArg<num>? maxItems,
    TfArg<num>? perPage,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'list_id': listId,
           'max_items': ?maxItems,
           'per_page': ?perPage,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListItemsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `list_id` attribute.
  TfRef<String> get listId => TfRef.attribute<String>(this, 'list_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
