// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountRolesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
