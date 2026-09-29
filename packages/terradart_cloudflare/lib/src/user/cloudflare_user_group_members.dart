// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_user_group_members`.
const Set<String> _cloudflareUserGroupMembersSensitive = <String>{};

/// User Group Members enum for `direction`.
enum UserGroupMembersDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const UserGroupMembersDirection(this.terraformValue);
  @override
  final String terraformValue;
}

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<UserGroupMembersDirection>? direction,
    TfArg<String>? fuzzyEmail,
    TfArg<num>? page,
    TfArg<num>? perPage,
    required TfArg<String> userGroupId,
    required List<UserGroupMembersMembers> members,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'fuzzy_email': ?fuzzyEmail,
           'page': ?page,
           'per_page': ?perPage,
           'user_group_id': userGroupId,
           'members': TfArg.literal([for (final e in members) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupMembersSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareUserGroupMembers>`.
  RefTo<CloudflareUserGroupMembers> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
