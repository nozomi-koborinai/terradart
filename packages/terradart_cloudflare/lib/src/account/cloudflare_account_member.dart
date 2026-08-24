// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_member`.
const Set<String> _cloudflareAccountMemberSensitive = <String>{};

/// Typed helper for the `policies` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class AccountMemberPolicies {
  const AccountMemberPolicies({
    required this.access,
    required this.permissionGroups,
    required this.resourceGroups,
  });

  final TfArg<String> access;

  final List<AccountMemberPoliciesPermissionGroups> permissionGroups;

  final List<AccountMemberPoliciesResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    'access': access.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
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
    TfArg<List<String>>? roles,
    TfArg<String>? status,
    List<AccountMemberPolicies>? policies,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'email': email,
           if (roles != null) 'roles': roles,
           if (status != null) 'status': status,
           if (policies != null)
             'policies': TfArg.literal([for (final e in policies) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
