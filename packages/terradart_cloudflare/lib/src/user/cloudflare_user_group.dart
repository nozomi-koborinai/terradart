// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user_group`.
const Set<String> _cloudflareUserGroupSensitive = <String>{};

/// Typed helper for the `policies` block of
/// `cloudflare_user_group` (derived from provider schema).
@immutable
final class UserGroupPolicies {
  const UserGroupPolicies({
    required this.access,
    required this.permissionGroups,
    required this.resourceGroups,
  });

  final TfArg<String> access;

  final List<UserGroupPoliciesPermissionGroups> permissionGroups;

  final List<UserGroupPoliciesResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    'access': access.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_user_group` (derived from provider schema).
@immutable
final class UserGroupPoliciesPermissionGroups {
  const UserGroupPoliciesPermissionGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.resource_groups` block of
/// `cloudflare_user_group` (derived from provider schema).
@immutable
final class UserGroupPoliciesResourceGroups {
  const UserGroupPoliciesResourceGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_user_group`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class CloudflareUserGroup extends Resource {
  static const String tfType = 'cloudflare_user_group';

  CloudflareUserGroup({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    List<UserGroupPolicies>? policies,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           if (policies != null)
             'policies': TfArg.literal([for (final e in policies) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
