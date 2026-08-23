// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_api_token_permission_groups`.
const Set<String> _cloudflareAccountApiTokenPermissionGroupsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_account_api_token_permission_groups`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class DataCloudflareAccountApiTokenPermissionGroups extends Data {
  static const String tfType = 'cloudflare_account_api_token_permission_groups';

  DataCloudflareAccountApiTokenPermissionGroups({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? name,
    TfArg<String>? scope,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (name != null) 'name': name,
           if (scope != null) 'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountApiTokenPermissionGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
