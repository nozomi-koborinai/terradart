// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_account_local_user`.
const Set<String> _azurermStorageAccountLocalUserSensitive = <String>{
  'password',
  'sid',
};

/// Typed helper for the `permission_scope` block of
/// `azurerm_storage_account_local_user` (derived from provider schema).
@immutable
final class StorageAccountLocalUserPermissionScope {
  const StorageAccountLocalUserPermissionScope({
    required this.resourceName,
    required this.service,
    required this.permissions,
  });

  final TfArg<String> resourceName;

  final StorageAccountLocalUserService service;

  final StorageAccountLocalUserPermissions permissions;

  @internal
  Map<String, Object?> encode() => {
    'resource_name': resourceName.toTfJson(),
    'service': service.toTfJson(),
    'permissions': permissions.encode(),
  };
}

/// `service` — derived from the provider schema description.
extension type const StorageAccountLocalUserService._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountLocalUserService.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountLocalUserService.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountLocalUserService.arg(TfArg<String> arg) : this._(arg);

  static const blob = StorageAccountLocalUserService._(TfArgLiteral('blob'));
  static const file = StorageAccountLocalUserService._(TfArgLiteral('file'));

  static const List<StorageAccountLocalUserService> values = [blob, file];
}

/// Typed helper for the `permission_scope.permissions` block of
/// `azurerm_storage_account_local_user` (derived from provider schema).
@immutable
final class StorageAccountLocalUserPermissions {
  const StorageAccountLocalUserPermissions({
    this.create,
    this.delete,
    this.list,
    this.read,
    this.write,
  });

  final TfArg<bool>? create;

  final TfArg<bool>? delete;

  final TfArg<bool>? list;

  final TfArg<bool>? read;

  final TfArg<bool>? write;

  @internal
  Map<String, Object?> encode() => {
    'create': ?create?.toTfJson(),
    'delete': ?delete?.toTfJson(),
    'list': ?list?.toTfJson(),
    'read': ?read?.toTfJson(),
    'write': ?write?.toTfJson(),
  };
}

/// Typed helper for the `ssh_authorized_key` block of
/// `azurerm_storage_account_local_user` (derived from provider schema).
@immutable
final class StorageAccountLocalUserSshAuthorizedKey {
  const StorageAccountLocalUserSshAuthorizedKey({
    this.description,
    required this.key,
  });

  final TfArg<String>? description;

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_account_local_user`.
final class AzurermStorageAccountLocalUser extends Resource {
  static const String tfType = 'azurerm_storage_account_local_user';

  AzurermStorageAccountLocalUser(
    super.localName, {
    TfArg<String>? homeDirectory,
    required TfArg<String> name,
    TfArg<bool>? sshKeyEnabled,
    TfArg<bool>? sshPasswordEnabled,
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageAccountLocalUserPermissionScope>? permissionScope,
    List<StorageAccountLocalUserSshAuthorizedKey>? sshAuthorizedKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'home_directory': ?homeDirectory,
           'name': name,
           'ssh_key_enabled': ?sshKeyEnabled,
           'ssh_password_enabled': ?sshPasswordEnabled,
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (permissionScope != null)
             'permission_scope': TfArg.literal([
               for (final e in permissionScope) e.encode(),
             ]),
           if (sshAuthorizedKey != null)
             'ssh_authorized_key': TfArg.literal([
               for (final e in sshAuthorizedKey) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageAccountLocalUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageAccountLocalUser>`.
  RefTo<AzurermStorageAccountLocalUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `sid` attribute.
  TfRef<String> get sid => TfRef.attribute<String>(this, 'sid');

  /// Reference to `home_directory` attribute.
  TfRef<String> get homeDirectory =>
      TfRef.attribute<String>(this, 'home_directory');

  /// Reference to `ssh_key_enabled` attribute.
  TfRef<bool> get sshKeyEnabled =>
      TfRef.attribute<bool>(this, 'ssh_key_enabled');

  /// Reference to `ssh_password_enabled` attribute.
  TfRef<bool> get sshPasswordEnabled =>
      TfRef.attribute<bool>(this, 'ssh_password_enabled');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
