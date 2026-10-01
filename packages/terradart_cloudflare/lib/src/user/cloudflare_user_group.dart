// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final UserGroupAccess access;

  final List<UserGroupPermissionGroups> permissionGroups;

  final List<UserGroupResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    'access': access.toTfJson(),
    'permission_groups': [for (final e in permissionGroups) e.encode()],
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// `access` — derived from the provider schema description.
extension type const UserGroupAccess._(TfArg<String> _)
    implements TfArg<String> {
  UserGroupAccess.variable(String name) : this._(TfArg.variable(name));
  UserGroupAccess.expression(String template)
    : this._(TfArg.expression(template));
  const UserGroupAccess.arg(TfArg<String> arg) : this._(arg);

  static const allow = UserGroupAccess._(TfArgLiteral('allow'));
  static const deny = UserGroupAccess._(TfArgLiteral('deny'));

  static const List<UserGroupAccess> values = [allow, deny];
}

/// Typed helper for the `policies.permission_groups` block of
/// `cloudflare_user_group` (derived from provider schema).
@immutable
final class UserGroupPermissionGroups {
  const UserGroupPermissionGroups({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.resource_groups` block of
/// `cloudflare_user_group` (derived from provider schema).
@immutable
final class UserGroupResourceGroups {
  const UserGroupResourceGroups({required this.id});

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

  CloudflareUserGroup(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    List<UserGroupPolicies>? policies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           if (policies != null)
             'policies': TfArg.literal([for (final e in policies) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareUserGroup>`.
  RefTo<CloudflareUserGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
