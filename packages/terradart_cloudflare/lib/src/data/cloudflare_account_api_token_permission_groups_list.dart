// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_api_token_permission_groups_list`.
const Set<String> _cloudflareAccountApiTokenPermissionGroupsListSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_account_api_token_permission_groups_list`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class DataCloudflareAccountApiTokenPermissionGroupsList extends Data {
  static const String tfType =
      'cloudflare_account_api_token_permission_groups_list';

  DataCloudflareAccountApiTokenPermissionGroupsList(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
           'scope': ?scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountApiTokenPermissionGroupsListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
