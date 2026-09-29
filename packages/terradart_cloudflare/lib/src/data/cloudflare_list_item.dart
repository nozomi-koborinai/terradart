// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../rules/cloudflare_list_item.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> itemId,
    required TfArg<String> listId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'item_id': itemId,
           'list_id': listId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListItemSensitive;

  /// A reference to the `cloudflare_list_item` this data source reads, for
  /// arguments typed `RefTo<CloudflareListItem>`.
  RefTo<CloudflareListItem> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
