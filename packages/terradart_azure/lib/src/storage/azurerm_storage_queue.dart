// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_queue`.
const Set<String> _azurermStorageQueueSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_queue`.
final class AzurermStorageQueue extends Resource {
  static const String tfType = 'azurerm_storage_queue';

  AzurermStorageQueue(
    super.localName, {
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata': ?metadata,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageQueueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageQueue>`.
  RefTo<AzurermStorageQueue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
