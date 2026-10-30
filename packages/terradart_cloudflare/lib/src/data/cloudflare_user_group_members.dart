// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../user/cloudflare_user_group_members.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../user/cloudflare_user_group.dart' show CloudflareUserGroup;

/// Sensitive field paths for `cloudflare_user_group_members`.
const Set<String> _cloudflareUserGroupMembersSensitive = <String>{};

/// Data User Group Members enum for `direction`.
extension type const DataUserGroupMembersDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataUserGroupMembersDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataUserGroupMembersDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataUserGroupMembersDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataUserGroupMembersDirection._(TfArgLiteral('asc'));
  static const desc = DataUserGroupMembersDirection._(TfArgLiteral('desc'));

  static const List<DataUserGroupMembersDirection> values = [asc, desc];
}

/// Factory wrapper for `cloudflare_user_group_members`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareUserGroupMembers extends Data {
  static const String tfType = 'cloudflare_user_group_members';

  DataCloudflareUserGroupMembers(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataUserGroupMembersDirection? direction,
    TfArg<String>? fuzzyEmail,
    required RefTo<CloudflareUserGroup> userGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'fuzzy_email': ?fuzzyEmail,
           'user_group_id': userGroupId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupMembersSensitive;

  /// A reference to the `cloudflare_user_group_members` this data source reads, for
  /// arguments typed `RefTo<CloudflareUserGroupMembers>`.
  RefTo<CloudflareUserGroupMembers> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `fuzzy_email` attribute.
  TfRef<String> get fuzzyEmail => TfRef.attribute<String>(this, 'fuzzy_email');

  /// Reference to `user_group_id` attribute.
  TfRef<String> get userGroupId =>
      TfRef.attribute<String>(this, 'user_group_id');
}
