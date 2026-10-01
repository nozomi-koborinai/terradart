// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../account/cloudflare_account_member.dart' show CloudflareAccountMember;
import '../user/cloudflare_user_group.dart' show CloudflareUserGroup;

/// Sensitive field paths for `cloudflare_user_group_members`.
const Set<String> _cloudflareUserGroupMembersSensitive = <String>{};

/// User Group Members enum for `direction`.
extension type const UserGroupMembersDirection._(TfArg<String> _)
    implements TfArg<String> {
  UserGroupMembersDirection.variable(String name)
    : this._(TfArg.variable(name));
  UserGroupMembersDirection.expression(String template)
    : this._(TfArg.expression(template));
  const UserGroupMembersDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = UserGroupMembersDirection._(TfArgLiteral('asc'));
  static const desc = UserGroupMembersDirection._(TfArgLiteral('desc'));

  static const List<UserGroupMembersDirection> values = [asc, desc];
}

/// Typed helper for the `members` block of
/// `cloudflare_user_group_members` (derived from provider schema).
@immutable
final class UserGroupMembers {
  const UserGroupMembers({required this.id});

  final RefTo<CloudflareAccountMember> id;

  Map<String, Object?> encode() => {'id': id.encodeAs('id').toTfJson()};
}

/// Factory wrapper for `cloudflare_user_group_members`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class CloudflareUserGroupMembers extends Resource {
  static const String tfType = 'cloudflare_user_group_members';

  CloudflareUserGroupMembers(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    UserGroupMembersDirection? direction,
    TfArg<String>? fuzzyEmail,
    TfArg<num>? page,
    TfArg<num>? perPage,
    required RefTo<CloudflareUserGroup> userGroupId,
    required List<UserGroupMembers> members,
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
           'user_group_id': userGroupId.encodeAs('id'),
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `fuzzy_email` attribute.
  TfRef<String> get fuzzyEmail => TfRef.attribute<String>(this, 'fuzzy_email');

  /// Reference to `page` attribute.
  TfRef<num> get page => TfRef.attribute<num>(this, 'page');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPage => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `user_group_id` attribute.
  TfRef<String> get userGroupId =>
      TfRef.attribute<String>(this, 'user_group_id');
}
