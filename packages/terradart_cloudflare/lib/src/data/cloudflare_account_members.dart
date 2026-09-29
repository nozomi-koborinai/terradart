// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_members`.
const Set<String> _cloudflareAccountMembersSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_members`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareAccountMembers extends Data {
  static const String tfType = 'cloudflare_account_members';

  DataCloudflareAccountMembers({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMembersSensitive;
}
