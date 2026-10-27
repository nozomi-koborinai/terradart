// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_share`.
const Set<String> _azurermStorageShareSensitive = <String>{};

/// Typed helper for the `acl` block of
/// `azurerm_storage_share` (derived from provider schema).
@immutable
final class StorageShareAcl {
  const StorageShareAcl({required this.id, this.accessPolicy});

  final TfArg<String> id;

  final List<StorageShareAccessPolicy>? accessPolicy;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (accessPolicy != null)
      'access_policy': [for (final e in accessPolicy!) e.encode()],
  };
}

/// Typed helper for the `acl.access_policy` block of
/// `azurerm_storage_share` (derived from provider schema).
@immutable
final class StorageShareAccessPolicy {
  const StorageShareAccessPolicy({
    this.expiry,
    required this.permissions,
    this.start,
  });

  final TfArg<String>? expiry;

  final TfArg<String> permissions;

  final TfArg<String>? start;

  @internal
  Map<String, Object?> encode() => {
    'expiry': ?expiry?.toTfJson(),
    'permissions': permissions.toTfJson(),
    'start': ?start?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_share`.
final class AzurermStorageShare extends Resource {
  static const String tfType = 'azurerm_storage_share';

  AzurermStorageShare(
    super.localName, {
    TfArg<String>? accessTier,
    TfArg<String>? enabledProtocol,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required TfArg<num> quota,
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageShareAcl>? acl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_tier': ?accessTier,
           'enabled_protocol': ?enabledProtocol,
           'metadata': ?metadata,
           'name': name,
           'quota': quota,
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (acl != null)
             'acl': TfArg.literal([for (final e in acl) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageShare>`.
  RefTo<AzurermStorageShare> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rbac_scope_id` attribute.
  TfRef<String> get rbacScopeId =>
      TfRef.attribute<String>(this, 'rbac_scope_id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `access_tier` attribute.
  TfRef<String> get accessTier => TfRef.attribute<String>(this, 'access_tier');

  /// Reference to `enabled_protocol` attribute.
  TfRef<String> get enabledProtocol =>
      TfRef.attribute<String>(this, 'enabled_protocol');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `quota` attribute.
  TfRef<num> get quota => TfRef.attribute<num>(this, 'quota');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
