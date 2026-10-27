// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_share.dart';
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_share`.
const Set<String> _azurermStorageShareSensitive = <String>{};

/// Typed helper for the `acl` block of
/// `azurerm_storage_share` (derived from provider schema).
@immutable
final class DataStorageShareAcl {
  const DataStorageShareAcl();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `azurerm_storage_share`.
final class DataAzurermStorageShare extends Data {
  static const String tfType = 'azurerm_storage_share';

  DataAzurermStorageShare(
    super.localName, {
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<DataStorageShareAcl>? acl,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata': ?metadata,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (acl != null)
             'acl': TfArg.literal([for (final e in acl) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageShareSensitive;

  /// A reference to the `azurerm_storage_share` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageShare>`.
  RefTo<AzurermStorageShare> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `quota` attribute.
  TfRef<num> get quota => TfRef.attribute<num>(this, 'quota');

  /// Reference to `rbac_scope_id` attribute.
  TfRef<String> get rbacScopeId =>
      TfRef.attribute<String>(this, 'rbac_scope_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
