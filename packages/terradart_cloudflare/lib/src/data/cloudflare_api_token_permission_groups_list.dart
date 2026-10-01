// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_token_permission_groups_list`.
const Set<String> _cloudflareApiTokenPermissionGroupsListSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_token_permission_groups_list`.
///
/// Accepted Permissions
///
/// - `API Tokens Read` - `API Tokens Write`
final class DataCloudflareApiTokenPermissionGroupsList extends Data {
  static const String tfType = 'cloudflare_api_token_permission_groups_list';

  DataCloudflareApiTokenPermissionGroupsList(
    super.localName, {
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'name': ?name, 'scope': ?scope},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiTokenPermissionGroupsListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
