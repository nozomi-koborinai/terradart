// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_roles`.
const Set<String> _cloudflareAccountRolesSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_roles`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareAccountRoles extends Data {
  static const String tfType = 'cloudflare_account_roles';

  DataCloudflareAccountRoles({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountRolesSensitive;
}
