// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_member`.
const Set<String> _cloudflareAccountMemberSensitive = <String>{};

/// Account Member enum for `status`.
extension type const AccountMemberStatus._(TfArg<String> _)
    implements TfArg<String> {
  AccountMemberStatus.variable(String name) : this._(TfArg.variable(name));
  AccountMemberStatus.expression(String template)
    : this._(TfArg.expression(template));
  const AccountMemberStatus.arg(TfArg<String> arg) : this._(arg);

  static const accepted = AccountMemberStatus._(TfArgLiteral('accepted'));
  static const pending = AccountMemberStatus._(TfArgLiteral('pending'));

  static const List<AccountMemberStatus> values = [accepted, pending];
}

/// Exactly one of `roles`, `policies` on `cloudflare_account_member`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.roles(...)`.
sealed class AccountMemberAccess {
  const AccountMemberAccess();

  /// Sets `roles`.
  const factory AccountMemberAccess.roles(TfArg<List<String>> roles) =
      AccountMemberAccessRoles;

  /// Sets `policies`.
  const factory AccountMemberAccess.policies(
    List<AccountMemberPolicies> policies,
  ) = AccountMemberAccessPolicies;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AccountMemberAccess.roles] choice: sets `roles`.
final class AccountMemberAccessRoles extends AccountMemberAccess {
  const AccountMemberAccessRoles(this.roles);

  final TfArg<List<String>> roles;

  @override
  String get blockKey => 'roles';

  @override
  Map<String, Object?> encode() => {'roles': roles.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'roles': roles};
}

/// The [AccountMemberAccess.policies] choice: sets `policies`.
final class AccountMemberAccessPolicies extends AccountMemberAccess {
  const AccountMemberAccessPolicies(this.policies);

  final List<AccountMemberPolicies> policies;

  @override
  String get blockKey => 'policies';

  @override
  Map<String, Object?> encode() => {
    'policies': [for (final e in policies) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'policies': TfArg.literal([for (final e in policies) e.encode()]),
  };
}

/// Typed helper for the `policies` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class AccountMemberPolicies {
  const AccountMemberPolicies({
    required this.access,
    required this.permissionGroups,
    required this.resourceGroups,
  });

  final AccountMemberPoliciesAccess access;

  final List<AccountMemberPermissionGroups> permissionGroups;

  final List<AccountMemberResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    'access': access.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// `access` — derived from the provider schema description.
extension type const AccountMemberPoliciesAccess._(TfArg<String> _)
    implements TfArg<String> {
  AccountMemberPoliciesAccess.variable(String name)
    : this._(TfArg.variable(name));
  AccountMemberPoliciesAccess.expression(String template)
    : this._(TfArg.expression(template));
  const AccountMemberPoliciesAccess.arg(TfArg<String> arg) : this._(arg);

  static const allow = AccountMemberPoliciesAccess._(TfArgLiteral('allow'));
  static const deny = AccountMemberPoliciesAccess._(TfArgLiteral('deny'));

  static const List<AccountMemberPoliciesAccess> values = [allow, deny];
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class AccountMemberPermissionGroups {
  const AccountMemberPermissionGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.resource_groups` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class AccountMemberResourceGroups {
  const AccountMemberResourceGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_account_member`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class CloudflareAccountMember extends Resource {
  static const String tfType = 'cloudflare_account_member';

  CloudflareAccountMember(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> email,
    required AccountMemberAccess access,
    AccountMemberStatus? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'email': email,
           ...access.argMap,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAccountMember>`.
  RefTo<CloudflareAccountMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `roles` attribute.
  TfRef<List<String>> get roles => TfRef.attribute<List<String>>(this, 'roles');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
