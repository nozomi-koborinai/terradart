// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_member`.
const Set<String> _cloudflareAccountMemberSensitive = <String>{};

/// Account Member enum for `status`.
enum AccountMemberStatus implements TerraformEnum {
  accepted('accepted'),
  pending('pending');

  const AccountMemberStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `roles`, `policies` on `cloudflare_account_member`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.roles(...)`.
sealed class AccountMemberRolesOrPolicies {
  const AccountMemberRolesOrPolicies();

  /// Sets `roles`.
  const factory AccountMemberRolesOrPolicies.roles(TfArg<List<String>> roles) =
      AccountMemberRolesOrPoliciesRoles;

  /// Sets `policies`.
  const factory AccountMemberRolesOrPolicies.policies(
    List<AccountMemberPolicies> policies,
  ) = AccountMemberRolesOrPoliciesPolicies;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AccountMemberRolesOrPolicies.roles] choice: sets `roles`.
final class AccountMemberRolesOrPoliciesRoles
    extends AccountMemberRolesOrPolicies {
  const AccountMemberRolesOrPoliciesRoles(this.roles);

  final TfArg<List<String>> roles;

  @override
  String get blockKey => 'roles';

  @override
  Map<String, Object?> encode() => {'roles': roles.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'roles': roles};
}

/// The [AccountMemberRolesOrPolicies.policies] choice: sets `policies`.
final class AccountMemberRolesOrPoliciesPolicies
    extends AccountMemberRolesOrPolicies {
  const AccountMemberRolesOrPoliciesPolicies(this.policies);

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

  final TfArg<AccountMemberPoliciesAccess> access;

  final List<AccountMemberPoliciesPermissionGroups> permissionGroups;

  final List<AccountMemberPoliciesResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    'access': access.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// `access` — derived from the provider schema description.
enum AccountMemberPoliciesAccess implements TerraformEnum {
  allow('allow'),
  deny('deny');

  const AccountMemberPoliciesAccess(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class AccountMemberPoliciesPermissionGroups {
  const AccountMemberPoliciesPermissionGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.resource_groups` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class AccountMemberPoliciesResourceGroups {
  const AccountMemberPoliciesResourceGroups({required this.id});

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

  CloudflareAccountMember({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> email,
    required AccountMemberRolesOrPolicies rolesOrPolicies,
    TfArg<AccountMemberStatus>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'email': email,
           ...rolesOrPolicies.argMap,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
