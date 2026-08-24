// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user_group_members`.
const Set<String> _cloudflareUserGroupMembersSensitive = <String>{};

/// Typed helper for the `members` block of
/// `cloudflare_user_group_members` (derived from provider schema).
@immutable
final class UserGroupMembersMembers {
  const UserGroupMembersMembers({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_user_group_members`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class CloudflareUserGroupMembers extends Resource {
  static const String tfType = 'cloudflare_user_group_members';

  CloudflareUserGroupMembers({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> userGroupId,
    required List<UserGroupMembersMembers> members,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'user_group_id': userGroupId,
           'members': TfArg.literal([for (final e in members) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupMembersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
