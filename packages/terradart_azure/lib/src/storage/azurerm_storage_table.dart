// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_table`.
const Set<String> _azurermStorageTableSensitive = <String>{};

/// Typed helper for the `acl` block of
/// `azurerm_storage_table` (derived from provider schema).
@immutable
final class StorageTableAcl {
  const StorageTableAcl({required this.id, this.accessPolicy});

  final TfArg<String> id;

  final List<StorageTableAccessPolicy>? accessPolicy;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (accessPolicy != null)
      'access_policy': [for (final e in accessPolicy!) e.encode()],
  };
}

/// Typed helper for the `acl.access_policy` block of
/// `azurerm_storage_table` (derived from provider schema).
@immutable
final class StorageTableAccessPolicy {
  const StorageTableAccessPolicy({
    required this.expiry,
    required this.permissions,
    required this.start,
  });

  final TfArg<String> expiry;

  final TfArg<String> permissions;

  final TfArg<String> start;

  @internal
  Map<String, Object?> encode() => {
    'expiry': expiry.toTfJson(),
    'permissions': permissions.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_table`.
final class AzurermStorageTable extends Resource {
  static const String tfType = 'azurerm_storage_table';

  AzurermStorageTable(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageTableAcl>? acl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (acl != null)
             'acl': TfArg.literal([for (final e in acl) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageTable>`.
  RefTo<AzurermStorageTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
