// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user_group_members`.
const Set<String> _cloudflareUserGroupMembersSensitive = <String>{};

/// Factory wrapper for `cloudflare_user_group_members`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareUserGroupMembers extends Data {
  static const String tfType = 'cloudflare_user_group_members';

  DataCloudflareUserGroupMembers({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? direction,
    TfArg<String>? fuzzyEmail,
    required TfArg<String> userGroupId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (fuzzyEmail != null) 'fuzzy_email': fuzzyEmail,
           'user_group_id': userGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupMembersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
