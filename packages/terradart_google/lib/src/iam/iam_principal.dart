import 'package:terradart_core/terradart_core.dart';

import 'google_iam_workload_identity_pool.dart';

/// Who an IAM grant is for: the `member` of an `*IamMember` and each entry
/// of an `*IamBinding`'s `members`.
///
/// Build one with a dot shorthand where the argument expects it, or take it
/// from the `principal` getter of a block that has an IAM identity (a
/// service account, a service agent, a default service account data source):
///
/// ```dart
/// add(GoogleProjectIamMember(
///   localName: 'runtime_logs',
///   project: .literal('my-project'),
///   role: .literal('roles/logging.logWriter'),
///   member: runtime.principal,
/// ));
/// add(GoogleProjectIamBinding(
///   localName: 'viewers',
///   project: .literal('my-project'),
///   role: .literal('roles/viewer'),
///   members: .literal([.group('sre@example.com'), runtime.principal]),
/// ));
/// ```
///
/// Other kinds: `.user('alice@example.com')`, `.allUsers`,
/// `.principalSet(pool, 'attribute.repository/org/repo')`.
///
/// A principal is a `TfArg<String>`: it synthesizes to the provider's
/// `<kind>:<id>` string.
extension type const IamPrincipal._(TfArg<String> _arg)
    implements TfArg<String> {
  /// `user:<email>` — a Google account.
  IamPrincipal.user(String email) : _arg = TfArg.literal('user:$email');

  /// `group:<email>` — a Google group.
  IamPrincipal.group(String email) : _arg = TfArg.literal('group:$email');

  /// `serviceAccount:<email>` — a service account outside this Stack. For
  /// one in it, use its `principal` getter.
  IamPrincipal.serviceAccount(String email)
    : _arg = TfArg.literal('serviceAccount:$email');

  /// `domain:<domain>` — every account of a Google Workspace or Cloud
  /// Identity domain.
  IamPrincipal.domain(String domain) : _arg = TfArg.literal('domain:$domain');

  /// Everyone on the internet, signed in or not.
  static const IamPrincipal allUsers = IamPrincipal._(
    TfArgLiteral<String>('allUsers'),
  );

  /// Every signed-in Google account and service account.
  static const IamPrincipal allAuthenticatedUsers = IamPrincipal._(
    TfArgLiteral<String>('allAuthenticatedUsers'),
  );

  /// The Workload Identity Federation identities of [pool] that share
  /// [attribute] (`attribute.repository/org/repo`, `group/admins`):
  /// `principalSet://iam.googleapis.com/<pool name>/<attribute>`.
  factory IamPrincipal.principalSet(
    RefTo<GoogleIamWorkloadIdentityPool> pool,
    String attribute,
  ) => IamPrincipal._(
    _prefixed('principalSet://iam.googleapis.com/', pool, '/$attribute'),
  );

  /// One Workload Identity Federation identity of [pool]:
  /// `principal://iam.googleapis.com/<pool name>/subject/<subject>`.
  factory IamPrincipal.principal(
    RefTo<GoogleIamWorkloadIdentityPool> pool,
    String subject,
  ) => IamPrincipal._(
    _prefixed('principal://iam.googleapis.com/', pool, '/subject/$subject'),
  );

  /// A principal string as it is (`deleted:user:x@example.com?uid=1`).
  IamPrincipal.literal(String value) : _arg = TfArg.literal(value);

  /// Any string argument as a principal, unchecked: a variable, a module
  /// output, an attribute of another block.
  const IamPrincipal.arg(TfArg<String> arg) : this._(arg);

  /// [ref]'s IAM principal attribute (`member`), for a block whose
  /// `principal` getter reads it.
  IamPrincipal.read(TfRef<String> ref) : _arg = TfArg.ref(ref);
}

TfArg<String> _prefixed(
  String prefix,
  RefTo<GoogleIamWorkloadIdentityPool> pool,
  String suffix,
) => switch (pool.encodeAs('name')) {
  TfArgLiteral(:final value) => TfArg.literal('$prefix$value$suffix'),
  final name => TfArg.expression('$prefix${name.toTfJson()}$suffix'),
};
