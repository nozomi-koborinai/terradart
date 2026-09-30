// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? name,
    TfArg<String>? scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'name': ?name,
           'scope': ?scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountApiTokenPermissionGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scopeRef => TfRef.attribute<String>(this, 'scope');
}
