// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_role`.
const Set<String> _cloudflareAccountRoleSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_role`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareAccountRole extends Data {
  static const String tfType = 'cloudflare_account_role';

  DataCloudflareAccountRole({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> roleId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'role_id': roleId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountRoleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
