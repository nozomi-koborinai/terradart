// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../rules/cloudflare_list.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_list`.
const Set<String> _cloudflareListSensitive = <String>{};

/// Factory wrapper for `cloudflare_list`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Read`
final class DataCloudflareList extends Data {
  static const String tfType = 'cloudflare_list';

  DataCloudflareList(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> listId,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'list_id': listId,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListSensitive;

  /// A reference to the `cloudflare_list` this data source reads, for
  /// arguments typed `RefTo<CloudflareList>`.
  RefTo<CloudflareList> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `num_items` attribute.
  TfRef<num> get numItems => TfRef.attribute<num>(this, 'num_items');

  /// Reference to `num_referencing_filters` attribute.
  TfRef<num> get numReferencingFilters =>
      TfRef.attribute<num>(this, 'num_referencing_filters');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `list_id` attribute.
  TfRef<String> get listId => TfRef.attribute<String>(this, 'list_id');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
