// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_list_item`.
const Set<String> _cloudflareListItemSensitive = <String>{};

/// Factory wrapper for `cloudflare_list_item`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Edit` - `Account Filter Lists Read`
final class DataCloudflareListItem extends Data {
  static const String tfType = 'cloudflare_list_item';

  DataCloudflareListItem({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> itemId,
    required TfArg<String> listId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'item_id': itemId,
           'list_id': listId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListItemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asn` attribute.
  TfRef<num> get asn => TfRef.attribute<num>(this, 'asn');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `ip` attribute.
  TfRef<String> get ip => TfRef.attribute<String>(this, 'ip');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
