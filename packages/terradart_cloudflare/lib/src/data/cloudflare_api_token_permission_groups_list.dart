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

  DataCloudflareApiTokenPermissionGroupsList({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? scope,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (scope != null) 'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiTokenPermissionGroupsListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
