import 'package:terradart_core/terradart_core.dart';

import 'appwrite_auth_team.dart';
import 'appwrite_auth_user.dart';

/// One entry of the `permissions` of a bucket, file, table or row: what
/// [AppwriteRole] may do.
///
/// Build one with the dot shorthand of its action where the argument
/// expects it:
///
/// ```dart
/// add(AppwriteStorageBucket(
///   'uploads',
///   name: .literal('Uploads'),
///   permissions: .literal([
///     .read(.any),
///     .create(.users()),
///     .write(.team(editors.ref, role: 'owner')),
///   ]),
/// ));
/// ```
///
/// A permission is a `TfArg<String>`: it synthesizes to the provider's
/// `<action>("<role>")` string (`read("any")`, `write("team:<id>/owner")`).
extension type const AppwritePermission._(TfArg<String> _arg)
    implements TfArg<String> {
  /// `read("<role>")` — read the resource.
  AppwritePermission.read(AppwriteRole role) : this._(role._grant('read'));

  /// `create("<role>")` — create resources under it (files in a bucket,
  /// rows in a table).
  AppwritePermission.create(AppwriteRole role) : this._(role._grant('create'));

  /// `update("<role>")` — update the resource.
  AppwritePermission.update(AppwriteRole role) : this._(role._grant('update'));

  /// `delete("<role>")` — delete the resource.
  AppwritePermission.delete(AppwriteRole role) : this._(role._grant('delete'));

  /// `write("<role>")` — create, update and delete.
  AppwritePermission.write(AppwriteRole role) : this._(role._grant('write'));

  /// A permission string as it is (`read("any")`).
  AppwritePermission.literal(String value) : _arg = TfArg.literal(value);

  /// Any string argument as a permission, unchecked: a variable, a module
  /// output, an attribute of another block.
  const AppwritePermission.arg(TfArg<String> arg) : this._(arg);
}

/// Who an [AppwritePermission] is for: `any`, `guests`, `users`, one user,
/// a team, a membership or a label.
extension type const AppwriteRole._(TfArg<String> _arg) {
  /// Anyone, signed in or not.
  static const AppwriteRole any = AppwriteRole._(TfArgLiteral<String>('any'));

  /// Anyone not signed in.
  static const AppwriteRole guests = AppwriteRole._(
    TfArgLiteral<String>('guests'),
  );

  /// Every signed-in user: `users`, or `users/verified` /
  /// `users/unverified` when [verified] is set.
  AppwriteRole.users({bool? verified})
    : _arg = TfArg.literal('users${_status(verified)}');

  /// One user: `user:<id>`, with `/verified` or `/unverified` when
  /// [verified] is set.
  factory AppwriteRole.user(RefTo<AppwriteAuthUser> user, {bool? verified}) =>
      AppwriteRole._(_prefixed('user:', user, _status(verified)));

  /// The members of [team]: `team:<id>`, or `team:<id>/<role>` for the
  /// members holding [role].
  factory AppwriteRole.team(RefTo<AppwriteAuthTeam> team, {String? role}) =>
      AppwriteRole._(_prefixed('team:', team, role == null ? '' : '/$role'));

  /// One team membership: `member:<membership id>`.
  AppwriteRole.member(String membershipId)
    : _arg = TfArg.literal('member:$membershipId');

  /// Every user with [label]: `label:<label>`.
  AppwriteRole.label(String label) : _arg = TfArg.literal('label:$label');

  /// A role string as it is (`team:abc/owner`).
  AppwriteRole.literal(String value) : _arg = TfArg.literal(value);

  /// Any string argument as a role, unchecked.
  const AppwriteRole.arg(TfArg<String> arg) : this._(arg);

  TfArg<String> _grant(String action) => switch (_arg) {
    TfArgLiteral(:final value) => TfArg.literal('$action("$value")'),
    final role => TfArg.expression('$action("${role.toTfJson()}")'),
  };
}

String _status(bool? verified) => switch (verified) {
  null => '',
  true => '/verified',
  false => '/unverified',
};

TfArg<String> _prefixed(String prefix, RefTo<Resource> ref, String suffix) =>
    switch (ref.encodeAs('id')) {
      TfArgLiteral(:final value) => TfArg.literal('$prefix$value$suffix'),
      final id => TfArg.expression('$prefix${id.toTfJson()}$suffix'),
    };
