// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_list`.
const Set<String> _cloudflareListSensitive = <String>{};

/// Factory wrapper for `cloudflare_list`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Read`
final class DataCloudflareList extends Data {
  static const String tfType = 'cloudflare_list';

  DataCloudflareList({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> listId,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'list_id': listId,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

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
}
